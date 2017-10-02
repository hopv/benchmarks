(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1086 = 0
     let rec c0_COEFFICIENT_1085 = 0
     let succ_1030 set_flag_f_1181 s_f_n_1178 n_1031 = n_1031 + 1
  
     let g_1032 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 r_EXPARAM_1088 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 r_1033 set_flag_f_1181 s_f_n_1178 a_1034 =
       r_1033 set_flag_f_1181 s_f_n_1178
         (r_1033 set_flag_f_1181 s_f_n_1178 a_1034)
  
     let rec f_1035 f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036 =
       let u = if prev_set_flag_f_1180 then
                if (0 * 1) + (1 * s_prev_f_n_1179) > (0 * 1) + (1 * n_1036) &&
                   (0 * 1) + (1 * n_1036) >= 0 then
                  ()
                else
                  let u_15618 = fail ()
                  in
                    bot()
       else ()
         in
              f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036
  
     let rec f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1036 =
       let set_flag_f_1181 = true
       in
       let s_f_n_1178 = n_1036
       in
         if n_1036 = 0 then
           succ_1030
         else
           g_1032 set_flag_f_1181 s_f_n_1178
             ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086)
             set_flag_f_1181 s_f_n_1178
             (f_1035 f_without_checking_1189 set_flag_f_1181 s_f_n_1178 (n_1036 - 1))
  
     let main n_1038 x_1039 =
       let x_DO_NOT_CARE_1211 = false in
       let x_DO_NOT_CARE_1212 = 0 in
       let set_flag_f_1181 = false in
       let s_f_n_1178 = 0 in
       if n_1038 >= 0 && x_1039 >= 0 then
         f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1038
           set_flag_f_1181 s_f_n_1178 x_1039
       else
         0
")

(set-logic HORN)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:510| Int) (|$cond-alpha-rename:511| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:528| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= 1 1) (= 0 0) (not (and (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)))) (not (= (- |$alpha-17:s_prev_f_n_1179| 1) 0)) (not (= |$cond-alpha-rename:77| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (|fail$unknown:25| |$knormal:34| 1) (|fail$unknown:25| |$cond-alpha-rename:528| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:328| |$cond-alpha-rename:327|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:319| |$cond-alpha-rename:318|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:6| |$cond-alpha-rename:5|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:511| |$cond-alpha-rename:510|) (|f_1035$unknown:16| |$cond-alpha-rename:337| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|f_1035$unknown:16| |$cond-alpha-rename:336| |$cond-alpha-rename:337| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|bot$unknown:2| |$knormal:32| 1) (|bot$unknown:2| |$cond-alpha-rename:526| 1) )
      (|f_1035$unknown:16| |$cond-alpha-rename:336| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:530| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= 1 1) (= 0 0) (not (and (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)))) (not (= (- |$alpha-17:s_prev_f_n_1179| 1) 0)) (not (= |$cond-alpha-rename:77| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (|fail$unknown:25| |$knormal:34| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:328| |$cond-alpha-rename:327|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:319| |$cond-alpha-rename:318|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:6| |$cond-alpha-rename:5|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:530| |$cond-alpha-rename:529|) (|f_1035$unknown:16| |$cond-alpha-rename:337| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|f_1035$unknown:16| |$cond-alpha-rename:336| |$cond-alpha-rename:337| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|bot$unknown:2| |$knormal:32| 1) )
      (|f_1035$unknown:16| |$cond-alpha-rename:336| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:565| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= 1 1) (not (and (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)))) (not (= |$cond-alpha-rename:77| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (|fail$unknown:25| |$knormal:34| 1) (|fail$unknown:25| |$cond-alpha-rename:565| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:6| |$cond-alpha-rename:5|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:548| |$cond-alpha-rename:547|) (|bot$unknown:2| |$knormal:32| 1) (|bot$unknown:2| |$cond-alpha-rename:563| 1) )
      (|f_1035$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:566| Int) (|$cond-alpha-rename:567| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= 1 1) (not (and (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)))) (not (= |$cond-alpha-rename:77| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (|fail$unknown:25| |$knormal:34| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:6| |$cond-alpha-rename:5|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:567| |$cond-alpha-rename:566|) (|bot$unknown:2| |$knormal:32| 1) )
      (|f_1035$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:585| Int) (|$cond-alpha-rename:600| Int) (|$cond-alpha-rename:602| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)) (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= 1 1) (= 0 0) (not (= (- |$alpha-17:s_prev_f_n_1179| 1) 0)) (not (= |$cond-alpha-rename:82| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (|fail$unknown:25| |$cond-alpha-rename:602| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:356| |$cond-alpha-rename:355|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:347| |$cond-alpha-rename:346|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:585| |$cond-alpha-rename:584|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) (|f_1035$unknown:16| |$cond-alpha-rename:365| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|f_1035$unknown:16| |$cond-alpha-rename:364| |$cond-alpha-rename:365| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|bot$unknown:2| |$cond-alpha-rename:600| 1) )
      (|f_1035$unknown:16| |$cond-alpha-rename:364| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)) (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= 1 1) (= 0 0) (not (= (- |$alpha-17:s_prev_f_n_1179| 1) 0)) (not (= |$cond-alpha-rename:82| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:356| |$cond-alpha-rename:355|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$cond-alpha-rename:347| |$cond-alpha-rename:346|) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:604| |$cond-alpha-rename:603|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) (|f_1035$unknown:16| |$cond-alpha-rename:365| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) (|f_1035$unknown:16| |$cond-alpha-rename:364| |$cond-alpha-rename:365| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-17:s_prev_f_n_1179| 1) 1) (- |$alpha-17:s_prev_f_n_1179| 1) 1) )
      (|f_1035$unknown:16| |$cond-alpha-rename:364| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:621| Int) (|$cond-alpha-rename:622| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:639| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)) (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:82| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (and (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0))) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (|fail$unknown:25| |$cond-alpha-rename:639| 1) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:622| |$cond-alpha-rename:621|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) (|bot$unknown:2| |$cond-alpha-rename:637| 1) )
      (|f_1035$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:640| Int) (|$cond-alpha-rename:641| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (> |$alpha-17:s_prev_f_n_1179| (- |$alpha-17:s_prev_f_n_1179| 1)) (>= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= (- |$alpha-17:s_prev_f_n_1179| 1) (- |$alpha-17:s_prev_f_n_1179| 1)) (= (- |$alpha-17:s_prev_f_n_1179| 1) 0) (= 1 1) (not (= |$cond-alpha-rename:82| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (not (= |$alpha-17:s_prev_f_n_1179| 0)) (> (+ 0 |$alpha-17:s_prev_f_n_1179|) (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1))) (>= (+ 0 (- |$alpha-17:s_prev_f_n_1179| 1)) 0) (|f_without_checking_1189$unknown:19| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1) (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:641| |$cond-alpha-rename:640|) (|f_without_checking_1189$unknown:19| |$alpha-17:s_prev_f_n_1179| |$cond-alpha-rename:12| |$cond-alpha-rename:11|) )
      (|f_1035$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-17:s_prev_f_n_1179| 1) |$alpha-17:s_prev_f_n_1179| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:674| Int) (|$cond-alpha-rename:676| Int) )
    (=>
      ( and (not (= |$alpha-23:n_1036| 0)) (not (and (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0))) (not (= |$V-reftype:34| 0)) (not (= 0 1)) (|fail$unknown:25| |$cond-alpha-rename:676| 1) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:659| |$cond-alpha-rename:658|) (|bot$unknown:2| |$cond-alpha-rename:674| 1) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:678| Int) )
    (=>
      ( and (not (= |$alpha-23:n_1036| 0)) (not (= |$V-reftype:34| 0)) (not (= 0 1)) (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:678| |$cond-alpha-rename:677|) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$cond-alpha-rename:692| Int) (|$cond-alpha-rename:693| Int) )
    (=>
      ( and (not (= |$alpha-23:n_1036| 0)) (not (not (= 0 1))) (not (= |$V-reftype:34| 0)) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) (|f_without_checking_1189$unknown:19| |$V-reftype:34| |$cond-alpha-rename:693| |$cond-alpha-rename:692|) )
      (|f_without_checking_1189$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) )
    ( and (|f_without_checking_1189$unknown:19| |$cond-alpha-rename:132| |$cond-alpha-rename:135| |$cond-alpha-rename:134|) (not (= 0 1)) (not (= |$cond-alpha-rename:132| 0)) (not (and (> (+ 0 |$cond-alpha-rename:132|) (+ 0 (- |$cond-alpha-rename:132| 1))) (>= (+ 0 (- |$cond-alpha-rename:132| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) )
    (=>
      ( and (>= |$alpha-29:x_1039| 0) (>= |$alpha-28:n_1038| 0) )
      (|f_without_checking_1189$unknown:19| |$alpha-28:n_1038| 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

