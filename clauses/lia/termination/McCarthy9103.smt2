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
  
     let main r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:16|
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) )
    ( and (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 11) |$cond-alpha-rename:2| 1) (not (= 0 1)) (not (> |$cond-alpha-rename:2| 100)) (not (and (>= (+ 111 (- |$cond-alpha-rename:3|)) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- |$cond-alpha-rename:3|))))) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:238| Int) (|$knormal:30| Int) )
    (=>
      ( and (= 1 1) (not (and (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))))) (not (> |$cond-alpha-rename:148| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:172| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:153| (+ |$cond-alpha-rename:148| 11) |$cond-alpha-rename:148| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:148| |$cond-alpha-rename:147| |$cond-alpha-rename:150|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:221| |$cond-alpha-rename:222|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:154| |$cond-alpha-rename:155|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:238| 1) (|fail$unknown:4| |$cond-alpha-rename:171| 1) (|bot$unknown:2| |$cond-alpha-rename:236| 1) (|bot$unknown:2| |$cond-alpha-rename:169| 1) )
      (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:172| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:242| Int) (|$knormal:30| Int) )
    (=>
      ( and (= 1 1) (not (and (>= (+ 111 (- |$knormal:30|)) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))))) (not (> |$cond-alpha-rename:148| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:172| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:153| (+ |$cond-alpha-rename:148| 11) |$cond-alpha-rename:148| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:148| |$cond-alpha-rename:147| |$cond-alpha-rename:150|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:241| |$cond-alpha-rename:242|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:154| |$cond-alpha-rename:155|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:171| 1) (|bot$unknown:2| |$cond-alpha-rename:169| 1) )
      (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:172| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:262| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:278| Int) (|$knormal:30| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (= 1 1) (not (> |$cond-alpha-rename:176| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:196| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:181| (+ |$cond-alpha-rename:176| 11) |$cond-alpha-rename:176| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:176| |$cond-alpha-rename:175| |$cond-alpha-rename:178|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:261| |$cond-alpha-rename:262|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:182| |$cond-alpha-rename:183|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:278| 1) (|bot$unknown:2| |$cond-alpha-rename:276| 1) )
      (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:196| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:282| Int) (|$knormal:30| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (= 1 1) (not (> |$cond-alpha-rename:176| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- |$knormal:30|))) (>= (+ 111 (- |$knormal:30|)) 0) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:196| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:181| (+ |$cond-alpha-rename:176| 11) |$cond-alpha-rename:176| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:176| |$cond-alpha-rename:175| |$cond-alpha-rename:178|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:281| |$cond-alpha-rename:282|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:182| |$cond-alpha-rename:183|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:196| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:318| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (>= (+ 111 (- |$V-reftype:14|)) 0))) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:301| |$cond-alpha-rename:302|) (|fail$unknown:4| |$cond-alpha-rename:318| 1) (|bot$unknown:2| |$cond-alpha-rename:316| 1) )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- |$V-reftype:14|))) (>= (+ 111 (- |$V-reftype:14|)) 0) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:321| |$cond-alpha-rename:322|) )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:338| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) (not (> |$V-reftype:28| 100)) (|mc91_without_checking_1058$unknown:16| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$V-reftype:14| (+ |$V-reftype:28| 11) |$V-reftype:28| 1) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:337| |$cond-alpha-rename:338|) )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:14| |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| 100) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| (- |$alpha-11:n_1031| 10) |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:15| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and true )
      (|mc91_without_checking_1058$unknown:15| |$alpha-14:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

