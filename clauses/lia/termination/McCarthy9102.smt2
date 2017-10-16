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
  
     let main r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |mc91_without_checking_1058$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |mc91_1030$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |mc91_1030$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:33| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:33| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:33| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$V-reftype:51| |$knormal:7|) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:12| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|mc91_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
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
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (= |$V-reftype:48| |$knormal:7|) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      (|mc91_1030$unknown:12| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$V-reftype:53| |$knormal:7|) (not (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|))) true (|mc91_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      (|mc91_1030$unknown:12| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      (|mc91_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:22| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (- |$alpha-5:s_prev_mc91_n_1048|)) (= |$knormal:8| 111) (= |$knormal:22| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| (- |$alpha-6:n_1031|)) (= |$knormal:15| 111) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| (- |$alpha-6:n_1031|)) (= |$knormal:11| 111) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|)) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      (|fail$unknown:3| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|))) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|))) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_mc91_1049| Int) (|$alpha-5:s_prev_mc91_n_1048| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_mc91_1049|))) true (|mc91_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|) true )
      (|mc91_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_mc91_n_1048| |$alpha-4:prev_set_flag_mc91_1049|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (= |$V-reftype:58| |$knormal:38|) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$knormal:32| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| |$V-reftype:58| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:15| |$knormal:32| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|mc91_without_checking_1058| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:7| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|) true true )
      (|mc91_without_checking_1058$unknown:15| |$V-reftype:14| |$V-reftype:28| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$V-reftype:30| Int) (|$V-reftype:31| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|mc91_without_checking_1058| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:16| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true (|mc91_1030$unknown:7| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|) true true )
      (|mc91_1030$unknown:8| |$V-reftype:31| |$V-reftype:30| |$V-reftype:28| |mc91_without_checking_1058|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (= |$V-reftype:56| (- |$alpha-11:n_1031| 10)) (not (= 0 |$knormal:24|)) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true )
      (|mc91_without_checking_1058$unknown:16| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true )
      (|mc91_1030$unknown:11| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_mc91_1050| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-11:n_1031| 11)) (= (not (= 0 |$knormal:24|)) (> |$alpha-11:n_1031| 100)) (= |$alpha-12:set_flag_mc91_1050| 1) (not (not (= 0 |$knormal:24|))) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-16:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-16:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) (|$alpha-15:set_flag_mc91_1050| Int) (|$alpha-16:s_mc91_n_1047| Int) )
    (=>
      ( and (= |$alpha-16:s_mc91_n_1047| 0) (= |$alpha-15:set_flag_mc91_1050| 0) )
      (|mc91_without_checking_1058$unknown:15| |$alpha-14:r| |$alpha-16:s_mc91_n_1047| |$alpha-15:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

(exit)

