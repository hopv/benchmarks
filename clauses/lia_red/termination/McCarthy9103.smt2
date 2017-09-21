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

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) )
    ( and (not (and (>= (+ 111 (- |$cond-alpha-rename:3|)) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- |$cond-alpha-rename:3|))))) (not (> |$cond-alpha-rename:2| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 11) |$cond-alpha-rename:2| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:90| |$cond-alpha-rename:91|) )
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
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:242| Int) (|$knormal:30| Int) )
    (=>
      ( and (= 1 1) (not (and (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))))) (not (> |$cond-alpha-rename:156| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:176| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:161| (+ |$cond-alpha-rename:156| 11) |$cond-alpha-rename:156| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:158|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:225| |$cond-alpha-rename:226|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:151| |$cond-alpha-rename:152|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:242| 1) (|fail$unknown:4| |$cond-alpha-rename:175| 1) (|bot$unknown:2| |$cond-alpha-rename:240| 1) (|bot$unknown:2| |$cond-alpha-rename:173| 1) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:176| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:246| Int) (|$knormal:30| Int) )
    (=>
      ( and (= 1 1) (not (and (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))))) (not (> |$cond-alpha-rename:156| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:176| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:161| (+ |$cond-alpha-rename:156| 11) |$cond-alpha-rename:156| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:158|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:245| |$cond-alpha-rename:246|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:151| |$cond-alpha-rename:152|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:175| 1) (|bot$unknown:2| |$cond-alpha-rename:173| 1) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:176| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:282| Int) (|$knormal:30| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (= 1 1) (not (> |$cond-alpha-rename:184| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:200| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:189| (+ |$cond-alpha-rename:184| 11) |$cond-alpha-rename:184| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:186|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:265| |$cond-alpha-rename:266|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:179| |$cond-alpha-rename:180|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:282| 1) (|bot$unknown:2| |$cond-alpha-rename:280| 1) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:200| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:286| Int) (|$knormal:30| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (= 1 1) (not (> |$cond-alpha-rename:184| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:200| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:189| (+ |$cond-alpha-rename:184| 11) |$cond-alpha-rename:184| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:184| |$cond-alpha-rename:183| |$cond-alpha-rename:186|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:285| |$cond-alpha-rename:286|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:179| |$cond-alpha-rename:180|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:200| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:322| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (>= (+ 111 (- |$V-reftype:14|)) 0))) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:305| |$cond-alpha-rename:306|) (|fail$unknown:4| |$cond-alpha-rename:322| 1) (|bot$unknown:2| |$cond-alpha-rename:320| 1) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:326| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (>= (+ 111 (- |$V-reftype:14|)) 0) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:325| |$cond-alpha-rename:326|) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:342| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) (not (> |$V-reftype:28| 100)) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:341| |$cond-alpha-rename:342|) )
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

