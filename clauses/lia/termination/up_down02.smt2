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
  
     let main t1_1039 t2_1040 =
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

(declare-fun |up_1032$unknown:29|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |up_without_checking_1115$unknown:32|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:62| Int) (|$alpha-26:t1_1039| Int) (|$alpha-27:t2_1040| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) (|up_without_checking_1115| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:146|)) (and (= |$V-reftype:62| |$cond-alpha-rename:145|) (and (= |$cond-alpha-rename:145| 0) (and (= (not (= 0 |$cond-alpha-rename:146|)) (> |$V-reftype:15| 0)) (and (= |$cond-alpha-rename:151| (* |$cond-alpha-rename:158| |$cond-alpha-rename:155|)) (and (= |$cond-alpha-rename:152| (* |$cond-alpha-rename:157| |$V-reftype:15|)) (and (= |$cond-alpha-rename:153| (+ |$cond-alpha-rename:152| |$cond-alpha-rename:156|)) (and (= |$cond-alpha-rename:156| 0) (and (= |$cond-alpha-rename:157| 0) (and (= |$cond-alpha-rename:158| 0) (and (= |$cond-alpha-rename:162| 0) (and (= |up_without_checking_1115| |$cond-alpha-rename:162|) (and (= 0 |$cond-alpha-rename:145|) (and (= 0 |$cond-alpha-rename:162|) (= 0 (+ |$cond-alpha-rename:151| |$cond-alpha-rename:153|)))))))))))))))) (and (not (= 0 |$cond-alpha-rename:147|)) (and (not (not (= 0 |$cond-alpha-rename:146|))) (and (= |$V-reftype:62| |$cond-alpha-rename:145|) (and (= |$cond-alpha-rename:145| 0) (and (= (not (= 0 |$cond-alpha-rename:146|)) (> |$cond-alpha-rename:154| 0)) (and (= (not (= 0 |$cond-alpha-rename:147|)) (< |$V-reftype:15| 0)) (and (= |$cond-alpha-rename:148| (* |$cond-alpha-rename:161| |$V-reftype:15|)) (and (= |$cond-alpha-rename:149| (* |$cond-alpha-rename:160| |$cond-alpha-rename:154|)) (and (= |$cond-alpha-rename:150| (+ |$cond-alpha-rename:149| |$cond-alpha-rename:159|)) (and (= |$cond-alpha-rename:159| 0) (and (= |$cond-alpha-rename:160| 0) (and (= |$cond-alpha-rename:161| 0) (and (= |$cond-alpha-rename:162| 0) (and (= |up_without_checking_1115| |$cond-alpha-rename:162|) (and (= 0 |$cond-alpha-rename:145|) (and (= 0 |$cond-alpha-rename:162|) (= 0 (+ |$cond-alpha-rename:148| |$cond-alpha-rename:150|))))))))))))))))))) (< |$alpha-27:t2_1040| 0) (not (> |$alpha-26:t1_1039| 0)) )
      (|up_without_checking_1115$unknown:32| |$V-reftype:15| |$V-reftype:62| |up_without_checking_1115|)
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
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:472| Int) (|$cond-alpha-rename:539| Int) (|$cond-alpha-rename:540| Int) (|$cond-alpha-rename:555| Int) (|$cond-alpha-rename:557| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:269| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:269| |$cond-alpha-rename:268| |$cond-alpha-rename:267|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:540| |$cond-alpha-rename:539|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:315| |$cond-alpha-rename:314|) (|up_1032$unknown:29| |$cond-alpha-rename:472| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$knormal:35| 1) (|fail$unknown:21| |$cond-alpha-rename:557| 1) (|bot$unknown:15| |$knormal:33| 1) (|bot$unknown:15| |$cond-alpha-rename:555| 1) )
      (|up_1032$unknown:29| |$cond-alpha-rename:472| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:472| Int) (|$cond-alpha-rename:558| Int) (|$cond-alpha-rename:559| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:269| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:269| |$cond-alpha-rename:268| |$cond-alpha-rename:267|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:559| |$cond-alpha-rename:558|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:315| |$cond-alpha-rename:314|) (|up_1032$unknown:29| |$cond-alpha-rename:472| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:29| |$cond-alpha-rename:472| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:576| Int) (|$cond-alpha-rename:577| Int) (|$cond-alpha-rename:592| Int) (|$cond-alpha-rename:594| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$cond-alpha-rename:269| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:269| |$cond-alpha-rename:268| |$cond-alpha-rename:267|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:577| |$cond-alpha-rename:576|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:315| |$cond-alpha-rename:314|) (|fail$unknown:21| |$knormal:35| 1) (|fail$unknown:21| |$cond-alpha-rename:594| 1) (|bot$unknown:15| |$knormal:33| 1) (|bot$unknown:15| |$cond-alpha-rename:592| 1) )
      (|up_1032$unknown:29| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:595| Int) (|$cond-alpha-rename:596| Int) (|$knormal:33| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (and (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))))) (not (= |$cond-alpha-rename:269| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:269| |$cond-alpha-rename:268| |$cond-alpha-rename:267|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:596| |$cond-alpha-rename:595|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:315| |$cond-alpha-rename:314|) (|fail$unknown:21| |$knormal:35| 1) (|bot$unknown:15| |$knormal:33| 1) )
      (|up_1032$unknown:29| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_up_1089| Int) (|$alpha-13:s_up_x_1086| Int) (|$alpha-14:x_1035| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (= |$alpha-14:x_1035| 0)) (|down_1031$unknown:19| |$knormal:14| (- |$alpha-14:x_1035| 1) |$alpha-13:s_up_x_1086| |$alpha-12:set_flag_up_1089|) )
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
  (not (exists ( (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) )
    ( and (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:236| |$cond-alpha-rename:321| |$cond-alpha-rename:320|) (not (= 0 1)) (not (= |$cond-alpha-rename:236| 0)) (not (and (>= (- (+ |$cond-alpha-rename:236| 1)) 0) (> (- |$cond-alpha-rename:236|) (- (+ |$cond-alpha-rename:236| 1))))) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:613| Int) (|$cond-alpha-rename:614| Int) (|$cond-alpha-rename:629| Int) (|$cond-alpha-rename:631| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (and (> (+ 0 (- |$V-reftype:62|)) (+ 0 (- (+ |$V-reftype:62| 1)))) (>= (+ 0 (- (+ |$V-reftype:62| 1))) 0))) (not (= |$V-reftype:62| 0)) (not (= 0 1)) (|up_without_checking_1115$unknown:32| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:32| |$V-reftype:62| |$cond-alpha-rename:614| |$cond-alpha-rename:613|) (|fail$unknown:21| |$cond-alpha-rename:631| 1) (|bot$unknown:15| |$cond-alpha-rename:629| 1) )
      (|up_without_checking_1115$unknown:32| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:633| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (= |$V-reftype:62| 0)) (not (= 0 1)) (> (+ 0 (- |$V-reftype:62|)) (+ 0 (- (+ |$V-reftype:62| 1)))) (>= (+ 0 (- (+ |$V-reftype:62| 1))) 0) (|up_without_checking_1115$unknown:32| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:32| |$V-reftype:62| |$cond-alpha-rename:633| |$cond-alpha-rename:632|) )
      (|up_without_checking_1115$unknown:32| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-21:set_flag_up_1089| Int) (|$alpha-22:s_up_x_1086| Int) (|$alpha-23:x_1036| Int) (|$cond-alpha-rename:647| Int) (|$cond-alpha-rename:648| Int) )
    (=>
      ( and (not (= |$alpha-23:x_1036| 0)) (not (not (= 0 1))) (not (= |$V-reftype:62| 0)) (|up_without_checking_1115$unknown:32| |$alpha-23:x_1036| |$alpha-22:s_up_x_1086| |$alpha-21:set_flag_up_1089|) (|up_without_checking_1115$unknown:32| |$V-reftype:62| |$cond-alpha-rename:648| |$cond-alpha-rename:647|) )
      (|up_without_checking_1115$unknown:32| (+ |$V-reftype:62| 1) |$V-reftype:62| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:477| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:666| Int) (|$cond-alpha-rename:668| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:274| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:272|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:651| |$cond-alpha-rename:650|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:324| |$cond-alpha-rename:323|) (|up_1032$unknown:29| |$cond-alpha-rename:477| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) (|fail$unknown:21| |$cond-alpha-rename:668| 1) (|bot$unknown:15| |$cond-alpha-rename:666| 1) )
      (|up_1032$unknown:29| |$cond-alpha-rename:477| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:477| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:670| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= 1 1) (not (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0)) (not (= |$cond-alpha-rename:274| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:272|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:670| |$cond-alpha-rename:669|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:324| |$cond-alpha-rename:323|) (|up_1032$unknown:29| |$cond-alpha-rename:477| (+ |$alpha-17:s_prev_up_x_1087| (+ 1 1)) (+ |$alpha-17:s_prev_up_x_1087| 1) 1) )
      (|up_1032$unknown:29| |$cond-alpha-rename:477| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:703| Int) (|$cond-alpha-rename:705| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:274| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (and (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0))) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:272|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:688| |$cond-alpha-rename:687|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:324| |$cond-alpha-rename:323|) (|fail$unknown:21| |$cond-alpha-rename:705| 1) (|bot$unknown:15| |$cond-alpha-rename:703| 1) )
      (|up_1032$unknown:29| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-17:s_prev_up_x_1087| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:706| Int) (|$cond-alpha-rename:707| Int) )
    (=>
      ( and (> (- |$alpha-17:s_prev_up_x_1087|) (- (+ |$alpha-17:s_prev_up_x_1087| 1))) (>= (- (+ |$alpha-17:s_prev_up_x_1087| 1)) 0) (= (+ |$alpha-17:s_prev_up_x_1087| 1) (+ |$alpha-17:s_prev_up_x_1087| 1)) (= (+ |$alpha-17:s_prev_up_x_1087| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:274| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (not (= |$alpha-17:s_prev_up_x_1087| 0)) (> (+ 0 (- |$alpha-17:s_prev_up_x_1087|)) (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1)))) (>= (+ 0 (- (+ |$alpha-17:s_prev_up_x_1087| 1))) 0) (|up_without_checking_1115$unknown:32| (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1) (|up_without_checking_1115$unknown:32| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:272|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:707| |$cond-alpha-rename:706|) (|up_without_checking_1115$unknown:32| |$alpha-17:s_prev_up_x_1087| |$cond-alpha-rename:324| |$cond-alpha-rename:323|) )
      (|up_1032$unknown:29| 1 (+ |$alpha-17:s_prev_up_x_1087| 1) |$alpha-17:s_prev_up_x_1087| 1)
    )
  )
)
(check-sat)

(exit)

