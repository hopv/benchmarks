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

(declare-fun |main_1032$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:11|
  ( Int ) Bool
)

(declare-fun |mc91_1030$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:7|
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
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (= |$V-reftype:25| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:2| |$V-reftype:25| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:28| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$knormal:32| Bool) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:36| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:20| Int) (|$V-reftype:48| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:27| Bool) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:34| |$knormal:33|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:14| |$knormal:20| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$V-reftype:48| |$knormal:20|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:33| 1) (= |$knormal:35| 1) )
      (|mc91_1030$unknown:10| |$V-reftype:48| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:36| Int) (|$knormal:34| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:34| |$knormal:33|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:33| 1) (= |$knormal:35| 1) )
      (|mc91_without_checking_1058$unknown:11| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:28| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$knormal:32| Bool) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$knormal:35| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:36| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:27| Bool) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:34| |$knormal:33|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:33| 1) (= |$knormal:35| 1) )
      (|mc91_without_checking_1058$unknown:12| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:36| Int) (|$knormal:34| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:34| |$knormal:33|) (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:33| 1) (= |$knormal:35| 1) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:3| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:36| Int) (|$knormal:35| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|fail$unknown:4| |$knormal:36| |$knormal:35|) (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:33| 1) (= |$knormal:35| 1) )
      (|bot$unknown:1| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:set_flag_mc91_1050| Int) (|$alpha-13:r| Int) (|$knormal:41| Int) (|$alpha-15:s_mc91_n_1047| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-13:r|) (|mc91_1030$unknown:10| |$knormal:41| |$alpha-13:r| |$alpha-15:s_mc91_n_1047| |$alpha-14:set_flag_mc91_1050|) (= |$V-reftype:53| |$knormal:41|) (= |$alpha-14:set_flag_mc91_1050| 0) (= |$alpha-15:s_mc91_n_1047| 0) )
      (|main_1032$unknown:6| |$V-reftype:53| |$alpha-13:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:set_flag_mc91_1050| Int) (|$alpha-13:r| Int) (|$alpha-15:s_mc91_n_1047| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-13:r|) (= |$alpha-14:set_flag_mc91_1050| 0) (= |$alpha-15:s_mc91_n_1047| 0) )
      (|mc91_1030$unknown:7| |$alpha-14:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:s_mc91_n_1047| Int) (|$alpha-13:r| Int) (|$alpha-14:set_flag_mc91_1050| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-13:r|) (= |$alpha-14:set_flag_mc91_1050| 0) (= |$alpha-15:s_mc91_n_1047| 0) )
      (|mc91_1030$unknown:8| |$alpha-15:s_mc91_n_1047| |$alpha-14:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:set_flag_mc91_1050| Int) (|$alpha-13:r| Int) (|$alpha-15:s_mc91_n_1047| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-13:r|) (= |$alpha-14:set_flag_mc91_1050| 0) (= |$alpha-15:s_mc91_n_1047| 0) )
      (|mc91_1030$unknown:9| |$alpha-13:r| |$alpha-15:s_mc91_n_1047| |$alpha-14:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:28| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$alpha-12:u| Int) (|$V-reftype:45| Int) (|$knormal:20| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:27| Bool) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:14| |$knormal:20| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) |$knormal:32| (= |$V-reftype:45| |$knormal:20|) (= |$alpha-12:u| 1) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) )
      (|mc91_1030$unknown:10| |$V-reftype:45| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:u| Int) (|$V-reftype:50| Int) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:20| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:14| |$knormal:20| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (= |$V-reftype:50| |$knormal:20|) (= |$alpha-12:u| 1) )
      (|mc91_1030$unknown:10| |$V-reftype:50| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$knormal:32| Bool) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-12:u| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) |$knormal:32| (= |$alpha-12:u| 1) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) )
      (|mc91_without_checking_1058$unknown:11| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:28| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$knormal:32| Bool) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:27| Bool) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) |$knormal:32| (= |$alpha-12:u| 1) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) )
      (|mc91_without_checking_1058$unknown:12| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:27| Bool) (|$knormal:24| Int) (|$knormal:21| Int) (|$knormal:32| Bool) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-12:u| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:28| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) |$knormal:32| (= |$alpha-12:u| 1) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:28| Int) (|$knormal:26| Int) (|$knormal:25| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$knormal:32| Bool) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:27| Bool) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:35| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (not (= |$alpha-8:prev_set_flag_mc91_1049| 0)) (not |$knormal:32|) (= |$knormal:21| 111) (= |$knormal:22| (- |$alpha-9:s_prev_mc91_n_1048|)) (= |$knormal:23| (+ |$knormal:21| |$knormal:22|)) (= |$knormal:24| 111) (= |$knormal:25| (- |$alpha-10:n_1031|)) (= |$knormal:26| (+ |$knormal:24| |$knormal:25|)) (= |$knormal:27| (> |$knormal:23| |$knormal:26|)) (= |$knormal:28| 111) (= |$knormal:29| (- |$alpha-10:n_1031|)) (= |$knormal:30| (+ |$knormal:28| |$knormal:29|)) (= |$knormal:31| (>= |$knormal:30| 0)) (= |$knormal:32| (and |$knormal:27| |$knormal:31|)) (= |$knormal:35| 1) )
      (|fail$unknown:3| |$knormal:35|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (= |$alpha-12:u| 1) )
      (|mc91_without_checking_1058$unknown:11| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:u| Int) (|$alpha-10:n_1031| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-8:prev_set_flag_mc91_1049| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (= |$alpha-12:u| 1) )
      (|mc91_without_checking_1058$unknown:12| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_mc91_1049| Int) (|$alpha-9:s_prev_mc91_n_1048| Int) (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) )
    (=>
      ( and (|mc91_1030$unknown:7| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:9| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|) (= |$alpha-8:prev_set_flag_mc91_1049| 0) (= |$alpha-12:u| 1) )
      (|mc91_without_checking_1058$unknown:13| |$alpha-10:n_1031| |$alpha-9:s_prev_mc91_n_1048| |$alpha-8:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_mc91_1050| Int) (|$knormal:9| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$knormal:15| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:15| |$knormal:9| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (not |$knormal:3|) (= |$V-reftype:31| |$knormal:15|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:14| |$V-reftype:31| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:9| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:11| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_mc91_1050| Int) (|$knormal:7| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$knormal:9| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:12| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:9| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:14| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:13| |$knormal:9| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_mc91_1050| Int) (|$V-reftype:29| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) |$knormal:3| (= |$V-reftype:29| (- |$alpha-5:n_1031| 10)) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:14| |$V-reftype:29| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:11| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_mc91_1050| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-3:set_flag_mc91_1050| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:12| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:11| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:12| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:13| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|) (not |$knormal:3|) (= |$alpha-6:set_flag_mc91_1050| 1) (= |$knormal:3| (> |$alpha-5:n_1031| 100)) (= |$knormal:7| (+ |$alpha-5:n_1031| 11)) )
      (|mc91_without_checking_1058$unknown:13| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

