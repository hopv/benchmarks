(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec mc91_1030 mc91_without_checking_1058 prev_set_flag_mc91_1049 s_prev_mc91_n_1048 n_1031 =
       let u = if prev_set_flag_mc91_1049 then
                if (111 * 1) + (-s_prev_mc91_n_1048) > (111 * 1) + (-n_1031) &&
                   (111 * 1) + (-n_1031) >= 0 then
                  ()
                else
                  let u_2195 = fail ()
                  in
                    bot()
       else () in
              mc91_without_checking_1058 prev_set_flag_mc91_1049
                s_prev_mc91_n_1048 n_1031
  
  
     let rec mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 n_1031 =
       let set_flag_mc91_1050 = true
       in
       let s_mc91_n_1047 = n_1031
       in
         if n_1031 > 100 then
           n_1031 - 10
         else
           mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
             (mc91_1030 mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 (n_1031 + 11))
  
     let main_1032 r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:17|
  ( Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) )
    ( and (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:52| |$cond-alpha-rename:53|) (not (= 0 1)) (not (and (>= (+ 111 (- (+ |$cond-alpha-rename:2| 11))) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- (+ |$cond-alpha-rename:2| 11)))))) (not (> |$cond-alpha-rename:2| 100)) )
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-14:r|) )
      (|mc91_without_checking_1058$unknown:17| |$alpha-14:r| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:107| 1) (|bot$unknown:2| |$cond-alpha-rename:212| 1) (|fail$unknown:4| |$cond-alpha-rename:109| 1) (|fail$unknown:4| |$cond-alpha-rename:214| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:198| |$cond-alpha-rename:199|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:93| |$cond-alpha-rename:94|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:110| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:110| |$alpha-11:n_1031| 1) (not (= 0 1)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$cond-alpha-rename:89| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:107| 1) (|fail$unknown:4| |$cond-alpha-rename:109| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:217| |$cond-alpha-rename:218|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:93| |$cond-alpha-rename:94|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:110| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:110| |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$cond-alpha-rename:89| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:107| 1) (|fail$unknown:4| |$cond-alpha-rename:109| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:232| |$cond-alpha-rename:233|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:93| |$cond-alpha-rename:94|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:110| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:110| |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$cond-alpha-rename:89| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:251| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:249| 1) (|fail$unknown:4| |$cond-alpha-rename:251| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:235| |$cond-alpha-rename:236|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:115|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:131| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:131| |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (> |$cond-alpha-rename:114| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:255| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:254| |$cond-alpha-rename:255|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:115|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:131| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:131| |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (> |$cond-alpha-rename:114| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:270| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:269| |$cond-alpha-rename:270|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:114| |$cond-alpha-rename:113| |$cond-alpha-rename:115|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:131| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:131| |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (not (= 0 1))) (not (> |$cond-alpha-rename:114| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:288| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:286| 1) (|fail$unknown:4| |$cond-alpha-rename:288| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:139| |$cond-alpha-rename:140|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:272| |$cond-alpha-rename:273|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:136|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:142| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:142| |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (> |$cond-alpha-rename:135| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:292| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:139| |$cond-alpha-rename:140|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:291| |$cond-alpha-rename:292|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:136|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:142| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:142| |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (not (= 0 1))) (not (> |$cond-alpha-rename:135| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:139| |$cond-alpha-rename:140|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:306| |$cond-alpha-rename:307|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$cond-alpha-rename:136|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:142| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:142| |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (> |$cond-alpha-rename:135| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:325| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:162| 1) (|bot$unknown:2| |$cond-alpha-rename:323| 1) (|fail$unknown:4| |$cond-alpha-rename:164| 1) (|fail$unknown:4| |$cond-alpha-rename:325| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:148| |$cond-alpha-rename:149|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:309| |$cond-alpha-rename:310|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:165| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (> |$cond-alpha-rename:144| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:165| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:162| 1) (|fail$unknown:4| |$cond-alpha-rename:164| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:148| |$cond-alpha-rename:149|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:328| |$cond-alpha-rename:329|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:165| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (> |$cond-alpha-rename:144| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:165| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:162| 1) (|fail$unknown:4| |$cond-alpha-rename:164| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:148| |$cond-alpha-rename:149|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:343| |$cond-alpha-rename:344|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:165| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (> |$cond-alpha-rename:144| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:165| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:362| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:360| 1) (|fail$unknown:4| |$cond-alpha-rename:362| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:173| |$cond-alpha-rename:174|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:346| |$cond-alpha-rename:347|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:170|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:186| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:186| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:366| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:173| |$cond-alpha-rename:174|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:365| |$cond-alpha-rename:366|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:170|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:186| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:186| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:380| Int) (|$cond-alpha-rename:381| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:173| |$cond-alpha-rename:174|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:380| |$cond-alpha-rename:381|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:170|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:186| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (not (= 0 1))) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:186| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:384| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:399| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:397| 1) (|fail$unknown:4| |$cond-alpha-rename:399| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:194| |$cond-alpha-rename:195|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:383| |$cond-alpha-rename:384|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:191|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:197| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (> |$cond-alpha-rename:190| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:197| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:403| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:194| |$cond-alpha-rename:195|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:402| |$cond-alpha-rename:403|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:191|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:197| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (not (not (= 0 1))) (not (> |$cond-alpha-rename:190| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:197| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:418| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:194| |$cond-alpha-rename:195|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:417| |$cond-alpha-rename:418|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:190| |$cond-alpha-rename:189| |$cond-alpha-rename:191|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:197| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (> |$cond-alpha-rename:190| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:197| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:434| Int) (|$cond-alpha-rename:436| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:434| 1) (|fail$unknown:4| |$cond-alpha-rename:436| 1) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:420| |$cond-alpha-rename:421|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (not (= 0 1)) (not (> |$V-reftype:28| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:440| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:439| |$cond-alpha-rename:440|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (not (= 0 1)) (not (> |$V-reftype:28| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:454| Int) (|$cond-alpha-rename:455| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:454| |$cond-alpha-rename:455|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (not (> |$V-reftype:28| 100)) (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (> |$alpha-11:n_1031| 100) )
      (|mc91_without_checking_1058$unknown:18| (- |$alpha-11:n_1031| 10) |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

