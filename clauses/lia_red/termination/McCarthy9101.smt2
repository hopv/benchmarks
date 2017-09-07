(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 n_1031 =
       let set_flag_mc91_1050 = true
       in
       let s_mc91_n_1047 = n_1031
       in
         if n_1031 > 100 then
           n_1031 - 10
         else
           mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
             (mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
               (n_1031 + 11))
  
     let rec mc91_1030 prev_set_flag_mc91_1049 s_prev_mc91_n_1048 n_1031 =
       let u = if prev_set_flag_mc91_1049 then
                if (111 * 1) + (-s_prev_mc91_n_1048) > (111 * 1) + (-n_1031) &&
                   (111 * 1) + (-n_1031) >= 0 then
                  ()
                else
                  let u_1771 = fail ()
                  in
                    bot()
               else () in
              mc91_without_checking_1058 prev_set_flag_mc91_1049
                s_prev_mc91_n_1048 n_1031
  
     let main_1032 r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_1030 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |mc91_without_checking_1058$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:25| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:25| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:25| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:36| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:28| 111) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:24| 111) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:21| 111) (= |$alpha-9:s_prev_mc91_n_1048| 0) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (not |$knormal:32|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (|main_1032$unknown:5| |$alpha-10:n_1031|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|bot$unknown:2| |$knormal:34| |$knormal:33|) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:14| Bool) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:6| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:10| Bool) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:7| Int) )
    ( and (= |$cond-alpha-rename:9| (+ |$cond-alpha-rename:7| |$cond-alpha-rename:8|)) (= |$cond-alpha-rename:8| (- |$cond-alpha-rename:1|)) (= |$cond-alpha-rename:7| 111) (= |$cond-alpha-rename:6| (+ |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| (- |$cond-alpha-rename:3|)) (= |$cond-alpha-rename:4| 111) (= |$cond-alpha-rename:3| 0) (= |$cond-alpha-rename:2| 0) (= |$cond-alpha-rename:15| (and |$cond-alpha-rename:10| |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:14| (>= |$cond-alpha-rename:13| 0)) (= |$cond-alpha-rename:13| (+ |$cond-alpha-rename:11| |$cond-alpha-rename:12|)) (= |$cond-alpha-rename:12| (- |$cond-alpha-rename:1|)) (= |$cond-alpha-rename:11| 111) (= |$cond-alpha-rename:10| (> |$cond-alpha-rename:6| |$cond-alpha-rename:9|)) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:15|) (not (= |$cond-alpha-rename:2| 0)) (|main_1032$unknown:5| |$cond-alpha-rename:1|) )
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (= |$knormal:35| 1) (= |$knormal:33| 1) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:28| 111) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:24| 111) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:21| 111) (= |$alpha-9:s_prev_mc91_n_1048| 0) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (not |$knormal:32|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (|main_1032$unknown:5| |$alpha-10:n_1031|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) )
      (|bot$unknown:1| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:28| 111) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:24| 111) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:21| 111) (= |$alpha-9:s_prev_mc91_n_1048| 0) (= |$alpha-8:prev_set_flag_mc91_1049| 0) |$knormal:32| (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (|main_1032$unknown:5| |$alpha-10:n_1031|) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) )
    (=>
      ( and (= |$alpha-9:s_prev_mc91_n_1048| 0) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (|main_1032$unknown:5| |$alpha-10:n_1031|) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_mc91_1050| Int) (|$knormal:9| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$knormal:15| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$V-reftype:31| |$knormal:15|) (not |$knormal:3|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:15| |$knormal:9| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) true true )
      (|mc91_without_checking_1058$unknown:14| |$V-reftype:31| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:9| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$alpha-6:set_flag_mc91_1050| 1) (not |$knormal:3|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) true true )
      (|mc91_without_checking_1058$unknown:13| |$knormal:9| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$V-reftype:29| (- |$alpha-5:n_1031| 10)) |$knormal:3| (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) true true )
      (|mc91_without_checking_1058$unknown:14| |$V-reftype:29| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$alpha-6:set_flag_mc91_1050| 1) (not |$knormal:3|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) true true )
      (|mc91_without_checking_1058$unknown:13| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

