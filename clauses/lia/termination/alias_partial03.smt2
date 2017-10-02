(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let lambda_1031 set_flag_f_1089 s_f_x_1086 x_1033 = x_1033 + 1
  
     let rec f_1030 f_without_checking_1098 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032 =
       let u =
       if prev_set_flag_f_1088 then
                if (0 * 1) + (1 * s_prev_f_x_1087) > (0 * 1) + (1 * x_1032) &&
                   (0 * 1) + (1 * x_1032) >= 0 then
                  ()
                else
                  let u_4274 = fail ()
                  in
                    bot()
       else
         ()
           in
              f_without_checking_1098 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032
  
     let rec f_without_checking_1098 set_flag_f_1089 s_f_x_1086 x_1032 =
       let set_flag_f_1089 = true
       in
       let s_f_x_1086 = x_1032
       in
         if x_1032 > 0 then
           f_1030 f_without_checking_1098 set_flag_f_1089 s_f_x_1086 (x_1032 - 1)
         else
           lambda_1031
  
     let g_1034 = f_without_checking_1098 false 0 1
  
     let main_1035 set_flag_f_1089 s_f_x_1086 u_1036 =
       g_1034 set_flag_f_1089 s_f_x_1086 2
  
  let main =
       main_1035 false 0 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:16|
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (> (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$cond-alpha-rename:72| 0) (> |$alpha-8:s_prev_f_x_1087| 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (and (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)))) (not (and (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0))) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$knormal:23| 1) (|fail$unknown:25| |$cond-alpha-rename:303| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:288| |$cond-alpha-rename:287|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-8:s_prev_f_x_1087| 1) 1) (- |$alpha-8:s_prev_f_x_1087| 1) 1) (|bot$unknown:2| |$knormal:21| 1) (|bot$unknown:2| |$cond-alpha-rename:301| 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (> (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$cond-alpha-rename:72| 0) (> |$alpha-8:s_prev_f_x_1087| 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (and (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)))) (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$knormal:23| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:307| |$cond-alpha-rename:306|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-8:s_prev_f_x_1087| 1) 1) (- |$alpha-8:s_prev_f_x_1087| 1) 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$cond-alpha-rename:72| 0) (> |$alpha-8:s_prev_f_x_1087| 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (and (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)))) (not (> (- |$alpha-8:s_prev_f_x_1087| 1) 0)) (not (and (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0))) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$knormal:23| 1) (|fail$unknown:25| |$cond-alpha-rename:340| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:325| |$cond-alpha-rename:324|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|bot$unknown:2| |$knormal:21| 1) (|bot$unknown:2| |$cond-alpha-rename:338| 1) )
      (|f_1030$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$cond-alpha-rename:72| 0) (> |$alpha-8:s_prev_f_x_1087| 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (and (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)))) (not (> (- |$alpha-8:s_prev_f_x_1087| 1) 0)) (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$knormal:23| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|bot$unknown:2| |$knormal:21| 1) )
      (|f_1030$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (> (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$cond-alpha-rename:77| 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (and (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0))) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$cond-alpha-rename:377| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:362| |$cond-alpha-rename:361|) (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-8:s_prev_f_x_1087| 1) 1) (- |$alpha-8:s_prev_f_x_1087| 1) 1) (|bot$unknown:2| |$cond-alpha-rename:375| 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:380| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (> (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$cond-alpha-rename:77| 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0) (> |$alpha-8:s_prev_f_x_1087| 0) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:381| |$cond-alpha-rename:380|) (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- (- |$alpha-8:s_prev_f_x_1087| 1) 1) (- |$alpha-8:s_prev_f_x_1087| 1) 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:398| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:414| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (> |$cond-alpha-rename:77| 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (> (- |$alpha-8:s_prev_f_x_1087| 1) 0)) (not (and (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0))) (> |$alpha-8:s_prev_f_x_1087| 0) (|fail$unknown:25| |$cond-alpha-rename:414| 1) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:399| |$cond-alpha-rename:398|) (|bot$unknown:2| |$cond-alpha-rename:412| 1) )
      (|f_1030$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:418| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (> |$cond-alpha-rename:77| 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (= (- |$alpha-8:s_prev_f_x_1087| 1) (- |$alpha-8:s_prev_f_x_1087| 1)) (= 1 1) (not (> (- |$alpha-8:s_prev_f_x_1087| 1) 0)) (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0) (> |$alpha-8:s_prev_f_x_1087| 0) (|f_without_checking_1098$unknown:19| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$cond-alpha-rename:75|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:418| |$cond-alpha-rename:417|) )
      (|f_1030$unknown:16| (+ |$V-reftype:15| 1) |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:435| Int) (|$cond-alpha-rename:436| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:451| Int) )
    (=>
      ( and (> |$alpha-14:x_1032| 0) (not (and (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0))) (not (= 0 1)) (> |$V-reftype:34| 0) (|fail$unknown:25| |$cond-alpha-rename:451| 1) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:436| |$cond-alpha-rename:435|) (|bot$unknown:2| |$cond-alpha-rename:449| 1) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:454| Int) (|$cond-alpha-rename:455| Int) )
    (=>
      ( and (> |$alpha-14:x_1032| 0) (not (= 0 1)) (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0) (> |$V-reftype:34| 0) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:455| |$cond-alpha-rename:454|) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:469| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (> |$alpha-14:x_1032| 0) (not (not (= 0 1))) (> |$V-reftype:34| 0) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:470| |$cond-alpha-rename:469|) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) )
    ( and (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:125| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (not (= 0 1)) (> |$cond-alpha-rename:125| 0) (not (and (> (+ 0 |$cond-alpha-rename:125|) (+ 0 (- |$cond-alpha-rename:125| 1))) (>= (+ 0 (- |$cond-alpha-rename:125| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      (|f_without_checking_1098$unknown:19| 1 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

