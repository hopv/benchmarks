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

(declare-fun |mc91_without_checking_1058$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:15|
  ( Int ) Bool
)

(declare-fun |main_1032$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |fail$unknown:3|
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

(declare-fun |mc91_1030$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:11|
  ( Int ) Bool
)

(declare-fun |mc91_1030$unknown:10|
  ( Int Int Int Int ) Bool
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
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-6:n_1031| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:7| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$V-reftype:51| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$V-reftype:51| |$knormal:7|) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:10| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:14| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
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
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) )
      (|bot$unknown:1| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-14:r| Int) (|$knormal:43| Int) (|$alpha-16:s_mc91_n_1047| Int) (|$V-reftype:61| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) (= |$V-reftype:61| |$knormal:43|) (|mc91_without_checking_1058$unknown:18| |$knormal:43| |$alpha-14:r| |$alpha-16:s_mc91_n_1047| |$alpha-15:set_flag_mc91_1050|) (|main_1032$unknown:5| |$alpha-14:r|) )
      (|main_1032$unknown:6| |$V-reftype:61| |$alpha-14:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-14:r| Int) (|$alpha-16:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) (|main_1032$unknown:5| |$alpha-14:r|) )
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
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$alpha-8:u| Int) (|$V-reftype:48| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$knormal:7| Int) (|$alpha-6:n_1031| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:19| Bool) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (= |$V-reftype:48| |$knormal:7|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:10| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:14| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:u| Int) (|$V-reftype:53| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-6:n_1031| Int) (|$knormal:7| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$V-reftype:53| |$knormal:7|) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:10| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:14| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-8:u| Int) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$alpha-8:u| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-8:u| Int) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) |$knormal:19| (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:9| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not |$knormal:19|) (not (= |$alpha-4:prev_set_flag_mc91_1049| 0)) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|fail$unknown:3| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:7| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:u| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
      (|mc91_1030$unknown:8| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$alpha-4:prev_set_flag_mc91_1049| 0) (|mc91_1030$unknown:13| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:12| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-4:prev_set_flag_mc91_1049|) )
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
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$V-reftype:10| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:7| |$V-reftype:10|) )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|mc91_without_checking_1058| Int) (|$V-reftype:12| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:8| |$V-reftype:12| |mc91_without_checking_1058|) (|mc91_1030$unknown:7| |mc91_without_checking_1058|) )
      (|mc91_without_checking_1058$unknown:16| |$V-reftype:12| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|mc91_without_checking_1058| Int) (|$V-reftype:28| Int) (|$V-reftype:14| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:9| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:8| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:7| |mc91_without_checking_1058|) )
      (|mc91_without_checking_1058$unknown:17| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$V-reftype:30| Int) (|$V-reftype:28| Int) (|mc91_without_checking_1058| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$V-reftype:31| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:18| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) (|mc91_1030$unknown:9| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:8| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_1030$unknown:7| |mc91_without_checking_1058|) )
      (|mc91_1030$unknown:10| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_mc91_1050| Int) (|$V-reftype:56| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (= |$V-reftype:56| (- |$alpha-11:n_1031| 10)) |$knormal:24| (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:18| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_1030$unknown:11| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_1030$unknown:12| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_mc91_1050| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= |$knormal:24| (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not |$knormal:24|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:16| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_1030$unknown:13| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

