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

(declare-fun |mc91_without_checking_1058$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:15|
  ( Int ) Bool
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
  (forall ( (|$V-reftype:33| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:33| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:33| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$V-reftype:51| Int) (|$cond-alpha-rename:33| Bool) (|$knormal:7| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:19| Bool) (|$knormal:19| Bool) (|$cond-alpha-rename:20| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:33| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$cond-alpha-rename:20| (+ |$cond-alpha-rename:17| 11)) (= |$cond-alpha-rename:19| (> |$cond-alpha-rename:17| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (= |$V-reftype:51| |$knormal:7|) (not |$knormal:19|) (not |$cond-alpha-rename:33|) (not |$cond-alpha-rename:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:17| |$cond-alpha-rename:16| |$cond-alpha-rename:18|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:31| |$cond-alpha-rename:32|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:31| |$cond-alpha-rename:32|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:16| |$cond-alpha-rename:18|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:32|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:18|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:14| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:35| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$cond-alpha-rename:34| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:36| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:36| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$knormal:19|) (not |$cond-alpha-rename:36|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:34| |$cond-alpha-rename:35|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:34| |$cond-alpha-rename:35|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:35|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:39| Bool) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:37| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$cond-alpha-rename:38| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:39| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$knormal:19|) (not |$cond-alpha-rename:39|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:37| |$cond-alpha-rename:38|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:37| |$cond-alpha-rename:38|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:38|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:41| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$cond-alpha-rename:40| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:42| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:42| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$knormal:19|) (not |$cond-alpha-rename:42|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:40| |$cond-alpha-rename:41|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:40| |$cond-alpha-rename:41|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:41|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:12| Bool) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:45| Bool) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:13| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:5| Int) )
    ( and (= |$cond-alpha-rename:9| 111) (= |$cond-alpha-rename:8| (> |$cond-alpha-rename:4| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (+ |$cond-alpha-rename:5| |$cond-alpha-rename:6|)) (= |$cond-alpha-rename:6| (- |$cond-alpha-rename:3|)) (= |$cond-alpha-rename:5| 111) (= |$cond-alpha-rename:45| (> |$cond-alpha-rename:2| 100)) (= |$cond-alpha-rename:4| (+ |$cond-alpha-rename:14| |$cond-alpha-rename:15|)) (= |$cond-alpha-rename:3| (+ |$cond-alpha-rename:2| 11)) (= |$cond-alpha-rename:15| (- |$cond-alpha-rename:2|)) (= |$cond-alpha-rename:14| 111) (= |$cond-alpha-rename:13| (and |$cond-alpha-rename:12| |$cond-alpha-rename:8|)) (= |$cond-alpha-rename:12| (>= |$cond-alpha-rename:11| 0)) (= |$cond-alpha-rename:11| (+ |$cond-alpha-rename:9| |$cond-alpha-rename:10|)) (= |$cond-alpha-rename:10| (- |$cond-alpha-rename:3|)) (= |$cond-alpha-rename:1| 1) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:45|) (not |$cond-alpha-rename:13|) (not (= |$cond-alpha-rename:1| 0)) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:43| |$cond-alpha-rename:44|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:43| |$cond-alpha-rename:44|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:44|) )
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:47| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$cond-alpha-rename:46| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:48| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$knormal:19|) (not |$cond-alpha-rename:48|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:46| |$cond-alpha-rename:47|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:46| |$cond-alpha-rename:47|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:47|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) )
      (|bot$unknown:1| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) (|$alpha-15:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_mc91_1050| 0) (|main_1032$unknown:5| |$alpha-14:r|) )
      (|mc91_without_checking_1058$unknown:15| |$alpha-15:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:s_mc91_n_1047| Int) (|$alpha-14:r| Int) (|$alpha-15:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) (|main_1032$unknown:5| |$alpha-14:r|) )
      (|mc91_without_checking_1058$unknown:16| |$alpha-16:s_mc91_n_1047| |$alpha-15:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-14:r| Int) (|$alpha-16:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) (|main_1032$unknown:5| |$alpha-14:r|) )
      (|mc91_without_checking_1058$unknown:17| |$alpha-14:r| |$alpha-16:s_mc91_n_1047| |$alpha-15:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$V-reftype:48| Int) (|$cond-alpha-rename:24| Bool) (|$knormal:7| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:23| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:22| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:51| Bool) (|$cond-alpha-rename:25| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:51| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$cond-alpha-rename:25| (+ |$cond-alpha-rename:22| 11)) (= |$cond-alpha-rename:24| (> |$cond-alpha-rename:22| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (= |$V-reftype:48| |$knormal:7|) (not |$cond-alpha-rename:51|) (not |$cond-alpha-rename:24|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:23|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:49| |$cond-alpha-rename:50|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:49| |$cond-alpha-rename:50|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:21| |$cond-alpha-rename:23|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:50|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:23|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:14| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$cond-alpha-rename:29| Bool) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:53| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:52| Int) (|$knormal:7| Int) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:30| Int) )
    (=>
      ( and (= |$cond-alpha-rename:54| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$cond-alpha-rename:30| (+ |$cond-alpha-rename:27| 11)) (= |$cond-alpha-rename:29| (> |$cond-alpha-rename:27| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (= |$V-reftype:53| |$knormal:7|) (not |$cond-alpha-rename:54|) (not |$cond-alpha-rename:29|) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_without_checking_1058$unknown:18| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$cond-alpha-rename:28|) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:52| |$cond-alpha-rename:53|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:52| |$cond-alpha-rename:53|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:26| |$cond-alpha-rename:28|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:53|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:28|) (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:14| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:57| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:55| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:57| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:57|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:55| |$cond-alpha-rename:56|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:55| |$cond-alpha-rename:56|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:56|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:60| Bool) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:60| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:60|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:59|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:63| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:61| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:63| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:63|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:62|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:66| Bool) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) )
    (=>
      ( and (= |$cond-alpha-rename:66| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:66|) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:64| |$cond-alpha-rename:65|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:64| |$cond-alpha-rename:65|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:65|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:67| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:69| Bool) (|$alpha-6:n_1031| Int) )
    (=>
      ( and (= |$cond-alpha-rename:69| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:69|) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:67| |$cond-alpha-rename:68|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:67| |$cond-alpha-rename:68|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:68|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:72| Bool) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) )
    (=>
      ( and (= |$cond-alpha-rename:72| (> |$alpha-5:s_prev_mc91_n_1048| 100)) (= |$alpha-6:n_1031| (+ |$alpha-5:s_prev_mc91_n_1048| 11)) (= |$alpha-4:prev_set_flag_mc91_1049| 1) (not |$cond-alpha-rename:72|) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_without_checking_1058$unknown:17| |$alpha-5:s_prev_mc91_n_1048| |$cond-alpha-rename:70| |$cond-alpha-rename:71|) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:70| |$cond-alpha-rename:71|) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:71|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:38| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (= |$V-reftype:58| |$knormal:38|) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$knormal:32| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:14| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:18| |$V-reftype:58| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$alpha-11:n_1031| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-10:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:14| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:15| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:14| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$alpha-11:n_1031| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-10:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:14| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:17| |$knormal:32| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$V-reftype:10| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:7| |$V-reftype:10|) )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:10|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$V-reftype:12| Int) (|mc91_without_checking_1058| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:8| |$V-reftype:12| |mc91_without_checking_1058|) (|mc91_1030$unknown:7| |mc91_without_checking_1058|) )
      (|mc91_without_checking_1058$unknown:16| |$V-reftype:12| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|mc91_without_checking_1058| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:9| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:8| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:7| |mc91_without_checking_1058|) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$V-reftype:56| Int) )
    (=>
      ( and (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$V-reftype:56| (- |$alpha-11:n_1031| 10)) |$knormal:24| (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:18| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

