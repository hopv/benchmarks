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
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:7| Int) )
    (=>
      ( and (not (and (>= (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11))) 0) (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11)))))) (not (> |$cond-alpha-rename:33| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:33| |$cond-alpha-rename:32| |$cond-alpha-rename:34|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:55| |$cond-alpha-rename:56|) (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|fail$unknown:4| |$knormal:23| 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (and (>= (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11))) 0) (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11)))))) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|fail$unknown:4| |$knormal:23| 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) )
    ( and (not (and (>= (+ 111 (- (+ |$cond-alpha-rename:2| 11))) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- (+ |$cond-alpha-rename:2| 11)))))) (not (> |$cond-alpha-rename:2| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) )
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
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$knormal:7| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11)))) (>= (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11))) 0) (not (> |$cond-alpha-rename:38| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:39|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:64| |$cond-alpha-rename:65|) (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$knormal:7| Int) )
    (=>
      ( and (not (> |$cond-alpha-rename:43| 100)) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (not (= 0 1))) (|mc91_without_checking_1058$unknown:18| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:44|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:67| |$cond-alpha-rename:68|) (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1) )
      (|mc91_1030$unknown:14| |$knormal:7| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-5:s_prev_mc91_n_1048|)) (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11)))) (>= (+ 111 (- (+ |$alpha-5:s_prev_mc91_n_1048| 11))) 0) (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:70| |$cond-alpha-rename:71|) )
      (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) )
    (=>
      ( and (not (> |$alpha-5:s_prev_mc91_n_1048| 100)) (not (not (= 0 1))) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:73| |$cond-alpha-rename:74|) )
      (|mc91_1030$unknown:9| (+ |$alpha-5:s_prev_mc91_n_1048| 11) |$alpha-5:s_prev_mc91_n_1048| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:32| Int) (|$knormal:38| Int) )
    (=>
      ( and (|mc91_1030$unknown:14| |$knormal:32| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$knormal:32| |$alpha-11:n_1031| 1) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:32| Int) )
    (=>
      ( and (|mc91_1030$unknown:14| |$knormal:32| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (not (> |$alpha-11:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:17| |$knormal:32| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|mc91_without_checking_1058| Int) )
    (=>
      ( and (|mc91_1030$unknown:9| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (not (> |$alpha-11:n_1031| 100)) )
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
(check-sat)

(get-model)

