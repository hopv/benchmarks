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

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |mc91_1030$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
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
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:7| Int) )
    (=>
      ( and (not (and (>= (+ 111 (- |$alpha-6:n_1031|)) 0) (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- |$alpha-6:n_1031|))))) (not (> |$cond-alpha-rename:33| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:38| (+ |$cond-alpha-rename:33| 11) |$cond-alpha-rename:33| 1) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:35|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) (|fail$unknown:4| |$knormal:23| 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (and (>= (+ 111 (- |$alpha-6:n_1031|)) 0) (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- |$alpha-6:n_1031|))))) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:65| |$cond-alpha-rename:66|) (|fail$unknown:4| |$knormal:23| 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) )
    ( and (not (and (>= (+ 111 (- |$cond-alpha-rename:3|)) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- |$cond-alpha-rename:3|))))) (not (> |$cond-alpha-rename:2| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 11) |$cond-alpha-rename:2| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:69| |$cond-alpha-rename:70|) )
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
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$knormal:7| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- |$alpha-6:n_1031|))) (>= (+ 111 (- |$alpha-6:n_1031|)) 0) (not (> |$cond-alpha-rename:40| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:45| (+ |$cond-alpha-rename:40| 11) |$cond-alpha-rename:40| 1) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:42|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:73| |$cond-alpha-rename:74|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$knormal:7| Int) )
    (=>
      ( and (not (> |$cond-alpha-rename:47| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (not (= 0 1))) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:52| (+ |$cond-alpha-rename:47| 11) |$cond-alpha-rename:47| 1) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:47| |$cond-alpha-rename:46| |$cond-alpha-rename:49|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:77| |$cond-alpha-rename:78|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- |$alpha-6:n_1031|))) (>= (+ 111 (- |$alpha-6:n_1031|)) 0) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:81| |$cond-alpha-rename:82|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) )
    (=>
      ( and (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (not (= 0 1))) (|mc91_without_checking_1058$unknown:18| |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:85| |$cond-alpha-rename:86|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:30| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_1030$unknown:14| |$knormal:38| |$knormal:30| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:30| Int) (|mc91_without_checking_1058| Int) )
    (=>
      ( and (|mc91_1030$unknown:9| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$knormal:30| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|)
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

