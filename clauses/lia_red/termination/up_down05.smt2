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
  
     let main_1037 t1_1039 t2_1040 =
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

(declare-fun |up_1032$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |down_1031$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |down_without_checking_1152$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |main_1037$unknown:31|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:359| Int) )
    (=>
      ( and (> |$alpha-26:t1_1039| 0) (= 0 (+ (* 0 |$cond-alpha-rename:359|) (+ (* 0 |$V-reftype:15|) 0))) (= 0 0) (= 0 0) (> |$V-reftype:15| 0) (|main_1037$unknown:31| |$cond-alpha-rename:359| |$V-reftype:15|) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:369| Int) )
    (=>
      ( and (> |$alpha-26:t1_1039| 0) (= 0 (+ (* 0 |$V-reftype:15|) (+ (* 0 |$cond-alpha-rename:369|) 0))) (= 0 0) (= 0 0) (not (> |$cond-alpha-rename:369| 0)) (< |$V-reftype:15| 0) (|main_1037$unknown:31| |$alpha-27:t2_1040| |$alpha-26:t1_1039|) (|main_1037$unknown:31| |$V-reftype:15| |$cond-alpha-rename:369|) )
      (|down_without_checking_1152$unknown:26| |$V-reftype:15| 0 0)
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
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:1553| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:1693| Int) (|$cond-alpha-rename:1694| Int) (|$cond-alpha-rename:1709| Int) (|$cond-alpha-rename:1711| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1709| 1) (|bot$unknown:15| |$knormal:26| 1) (|down_1031$unknown:23| |$cond-alpha-rename:1553| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1694| |$cond-alpha-rename:1693|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$cond-alpha-rename:1711| 1) (|fail$unknown:29| |$knormal:28| 1) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:95| 0)) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| |$cond-alpha-rename:1553| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:1553| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:1712| Int) (|$cond-alpha-rename:1713| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:26| 1) (|down_1031$unknown:23| |$cond-alpha-rename:1553| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1713| |$cond-alpha-rename:1712|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$knormal:28| 1) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:95| 0)) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| |$cond-alpha-rename:1553| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:1730| Int) (|$cond-alpha-rename:1731| Int) (|$cond-alpha-rename:1746| Int) (|$cond-alpha-rename:1748| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1746| 1) (|bot$unknown:15| |$knormal:26| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1731| |$cond-alpha-rename:1730|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$cond-alpha-rename:1748| 1) (|fail$unknown:29| |$knormal:28| 1) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:95| 0)) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:1749| Int) (|$cond-alpha-rename:1750| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$knormal:26| Int) (|$knormal:28| Int) )
    (=>
      ( and (|bot$unknown:15| |$knormal:26| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:159| |$cond-alpha-rename:158|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1750| |$cond-alpha-rename:1749|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:95| |$cond-alpha-rename:94| |$cond-alpha-rename:93|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$knormal:28| 1) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:95| 0)) (not (and (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)))) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1767| Int) (|$cond-alpha-rename:1768| Int) (|$cond-alpha-rename:1783| Int) (|$cond-alpha-rename:1785| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1783| 1) (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1768| |$cond-alpha-rename:1767|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (|fail$unknown:29| |$cond-alpha-rename:1785| 1) (not (= 0 1)) (not (= |$V-reftype:47| 0)) (not (and (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (>= (+ 0 (- |$V-reftype:47| 1)) 0))) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1786| Int) (|$cond-alpha-rename:1787| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1787| |$cond-alpha-rename:1786|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (>= (+ 0 (- |$V-reftype:47| 1)) 0) (> (+ 0 |$V-reftype:47|) (+ 0 (- |$V-reftype:47| 1))) (not (= 0 1)) (not (= |$V-reftype:47| 0)) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-18:set_flag_down_1132| Int) (|$alpha-19:s_down_x_1129| Int) (|$alpha-20:x_1035| Int) (|$cond-alpha-rename:1801| Int) (|$cond-alpha-rename:1802| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$V-reftype:47| |$cond-alpha-rename:1802| |$cond-alpha-rename:1801|) (|down_without_checking_1152$unknown:26| |$alpha-20:x_1035| |$alpha-19:s_down_x_1129| |$alpha-18:set_flag_down_1132|) (not (= |$V-reftype:47| 0)) (not (not (= 0 1))) (not (= |$alpha-20:x_1035| 0)) )
      (|down_without_checking_1152$unknown:26| (- |$V-reftype:47| 1) |$V-reftype:47| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:1558| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:1804| Int) (|$cond-alpha-rename:1805| Int) (|$cond-alpha-rename:1820| Int) (|$cond-alpha-rename:1822| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1820| 1) (|down_1031$unknown:23| |$cond-alpha-rename:1558| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1805| |$cond-alpha-rename:1804|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$cond-alpha-rename:1822| 1) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:100| 0)) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| |$cond-alpha-rename:1558| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:1558| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:1823| Int) (|$cond-alpha-rename:1824| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|down_1031$unknown:23| |$cond-alpha-rename:1558| (- (- |$alpha-14:s_prev_down_x_1130| 1) 1) (- |$alpha-14:s_prev_down_x_1130| 1) 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1824| |$cond-alpha-rename:1823|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:100| 0)) (not (= (- |$alpha-14:s_prev_down_x_1130| 1) 0)) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| |$cond-alpha-rename:1558| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:1841| Int) (|$cond-alpha-rename:1842| Int) (|$cond-alpha-rename:1857| Int) (|$cond-alpha-rename:1859| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bot$unknown:15| |$cond-alpha-rename:1857| 1) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1842| |$cond-alpha-rename:1841|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (|fail$unknown:29| |$cond-alpha-rename:1859| 1) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (and (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:100| 0)) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:s_prev_down_x_1130| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:1860| Int) (|$cond-alpha-rename:1861| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|down_without_checking_1152$unknown:26| |$alpha-14:s_prev_down_x_1130| |$cond-alpha-rename:1861| |$cond-alpha-rename:1860|) (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:98|) (|down_without_checking_1152$unknown:26| (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1) (>= (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1)) 0) (> (+ 0 |$alpha-14:s_prev_down_x_1130|) (+ 0 (- |$alpha-14:s_prev_down_x_1130| 1))) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$alpha-14:s_prev_down_x_1130| 0)) (not (= |$cond-alpha-rename:100| 0)) (= 1 1) (= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (= (- |$alpha-14:s_prev_down_x_1130| 1) (- |$alpha-14:s_prev_down_x_1130| 1)) (>= (- |$alpha-14:s_prev_down_x_1130| 1) 0) (> |$alpha-14:s_prev_down_x_1130| (- |$alpha-14:s_prev_down_x_1130| 1)) )
      (|down_1031$unknown:23| 1 (- |$alpha-14:s_prev_down_x_1130| 1) |$alpha-14:s_prev_down_x_1130| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:254| Int) )
    ( and (|down_without_checking_1152$unknown:26| |$cond-alpha-rename:251| |$cond-alpha-rename:254| |$cond-alpha-rename:253|) (not (= 0 1)) (not (= |$cond-alpha-rename:251| 0)) (not (and (> (+ 0 |$cond-alpha-rename:251|) (+ 0 (- |$cond-alpha-rename:251| 1))) (>= (+ 0 (- |$cond-alpha-rename:251| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) (|$alpha-25:x_1036| Int) (|$knormal:44| Int) )
    (=>
      ( and (|up_1032$unknown:36| |$knormal:44| (+ |$alpha-25:x_1036| 1) |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|) (not (= |$alpha-25:x_1036| 0)) )
      (|up_1032$unknown:36| |$knormal:44| |$alpha-25:x_1036| |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:set_flag_down_1132| Int) (|$alpha-24:s_down_x_1129| Int) )
    (=>
      ( and true )
      (|up_1032$unknown:36| 1 0 |$alpha-24:s_down_x_1129| |$alpha-23:set_flag_down_1132|)
    )
  )
)
(check-sat)

(get-model)

