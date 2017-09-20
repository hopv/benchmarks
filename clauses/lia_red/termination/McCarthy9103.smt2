(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec mc91_1030 mc91_without_checking_1058 prev_set_flag_mc91_1049 s_prev_mc91_n_1048 n_1031 =
       let u = if prev_set_flag_mc91_1049 then
                if (111 * 1) + (-s_prev_mc91_n_1048) > (111 * 1) + (-n_1031) &&
                   (111 * 1) + (-n_1031) >= 0 then
                  ()
                else
                  let u_2621 = fail ()
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
           mc91_1030 mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
             (mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
               (n_1031 + 11))
  
     let main_1032 r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) )
    ( and (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:66| |$cond-alpha-rename:67|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 11) |$cond-alpha-rename:2| 1) (not (= 0 1)) (not (and (>= (+ 111 (- |$cond-alpha-rename:3|)) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- |$cond-alpha-rename:3|))))) (not (> |$cond-alpha-rename:2| 100)) )
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
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:195| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:136| 1) (|bot$unknown:2| |$cond-alpha-rename:193| 1) (|fail$unknown:4| |$cond-alpha-rename:138| 1) (|fail$unknown:4| |$cond-alpha-rename:195| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:121| |$cond-alpha-rename:122|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:178| |$cond-alpha-rename:179|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:117|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:120| (+ |$cond-alpha-rename:115| 11) |$cond-alpha-rename:115| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (> |$cond-alpha-rename:115| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:199| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:136| 1) (|fail$unknown:4| |$cond-alpha-rename:138| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:121| |$cond-alpha-rename:122|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:198| |$cond-alpha-rename:199|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:117|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:120| (+ |$cond-alpha-rename:115| 11) |$cond-alpha-rename:115| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (not (> |$cond-alpha-rename:115| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:215| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:136| 1) (|fail$unknown:4| |$cond-alpha-rename:138| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:121| |$cond-alpha-rename:122|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:214| |$cond-alpha-rename:215|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:117|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:120| (+ |$cond-alpha-rename:115| 11) |$cond-alpha-rename:115| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (> |$cond-alpha-rename:115| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:139| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:235| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:233| 1) (|fail$unknown:4| |$cond-alpha-rename:235| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:149| |$cond-alpha-rename:150|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:218| |$cond-alpha-rename:219|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:148| (+ |$cond-alpha-rename:143| 11) |$cond-alpha-rename:143| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (not (> |$cond-alpha-rename:143| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:239| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:149| |$cond-alpha-rename:150|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:238| |$cond-alpha-rename:239|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:148| (+ |$cond-alpha-rename:143| 11) |$cond-alpha-rename:143| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (not (> |$cond-alpha-rename:143| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:255| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:149| |$cond-alpha-rename:150|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:254| |$cond-alpha-rename:255|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:143| |$cond-alpha-rename:142| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:148| (+ |$cond-alpha-rename:143| 11) |$cond-alpha-rename:143| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (not (not (= 0 1))) (not (> |$cond-alpha-rename:143| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:163| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:258| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:275| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:273| 1) (|fail$unknown:4| |$cond-alpha-rename:275| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:175| |$cond-alpha-rename:176|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:258| |$cond-alpha-rename:259|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:171|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:174| (+ |$cond-alpha-rename:169| 11) |$cond-alpha-rename:169| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (> |$alpha-11:n_1031| 100)) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:175| |$cond-alpha-rename:176|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:278| |$cond-alpha-rename:279|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:171|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:174| (+ |$cond-alpha-rename:169| 11) |$cond-alpha-rename:169| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (not (not (= 0 1))) (not (> |$alpha-11:n_1031| 100)) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:175| |$cond-alpha-rename:176|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:294| |$cond-alpha-rename:295|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:169| |$cond-alpha-rename:168| |$cond-alpha-rename:171|) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:174| (+ |$cond-alpha-rename:169| 11) |$cond-alpha-rename:169| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (> |$alpha-11:n_1031| 100)) (not (> |$cond-alpha-rename:169| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:177| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:315| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:313| 1) (|fail$unknown:4| |$cond-alpha-rename:315| 1) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:298| |$cond-alpha-rename:299|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (> |$V-reftype:28| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (>= (+ 111 (- |$V-reftype:14|)) 0))) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:318| |$cond-alpha-rename:319|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (>= (+ 111 (- |$V-reftype:14|)) 0) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (not (= 0 1)) (not (> |$V-reftype:28| 100)) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:334| |$cond-alpha-rename:335|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (> |$V-reftype:28| 100)) (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| 1)
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
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1)
    )
  )
)
(check-sat)

(get-model)

