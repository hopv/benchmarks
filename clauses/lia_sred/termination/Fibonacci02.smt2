(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec fib_1030 fib_without_checking_1060 prev_set_flag_fib_1051 s_prev_fib_n_1050 n_1031 =
       let u =if prev_set_flag_fib_1051 then
                if (0 * 1) + (1 * s_prev_fib_n_1050) > (0 * 1) + (1 * n_1031) &&
                   (0 * 1) + (1 * n_1031) >= 0 then
                  ()
                else
                  let u_2254 = fail ()
                  in
                    bot()
              else () in
              fib_without_checking_1060 prev_set_flag_fib_1051 s_prev_fib_n_1050
                n_1031
  
     let rec fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 n_1031 =
       let set_flag_fib_1052 = true
       in
       let s_fib_n_1049 = n_1031
       in
         if n_1031 < 2 then
           1
         else
           fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 1)
           + fib_1030 fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 2)
  
     let main_1032 r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

(declare-fun |main_1032$unknown:17|
  ( Int ) Bool
)

(declare-fun |fib_1030$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:13|
  ( Int ) Bool
)

(declare-fun |fib_1030$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |fib_1030$unknown:5|
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
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:18| Bool) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:94| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:97| Int) (|$knormal:7| Int) (|$cond-alpha-rename:95| Bool) (|$V-reftype:51| Int) (|$cond-alpha-rename:98| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:98| (- |$cond-alpha-rename:92| 2)) (= |$cond-alpha-rename:96| (- |$cond-alpha-rename:92| 1)) (= |$cond-alpha-rename:95| (< |$cond-alpha-rename:92| 2)) (= |$cond-alpha-rename:93| 1) (= |$cond-alpha-rename:19| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:18| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (= |$V-reftype:51| |$knormal:7|) (not |$knormal:19|) (not |$cond-alpha-rename:95|) (not |$cond-alpha-rename:18|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:97| |$cond-alpha-rename:96| |$cond-alpha-rename:92| |$cond-alpha-rename:93|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:92| |$cond-alpha-rename:91| |$cond-alpha-rename:94|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:91| |$cond-alpha-rename:94|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:94|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:17|) (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|fib_1030$unknown:12| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:22| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$cond-alpha-rename:21| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:24| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:23| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:24| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:23| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$knormal:19|) (not |$cond-alpha-rename:23|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:21| |$cond-alpha-rename:22|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:21| |$cond-alpha-rename:22|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:22|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:28| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:29| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:26| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:30| Int) (|$knormal:19| Bool) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:29| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:28| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$knormal:19|) (not |$cond-alpha-rename:28|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:26| |$cond-alpha-rename:27|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:26| |$cond-alpha-rename:27|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:27|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:32| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$cond-alpha-rename:31| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:34| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:33| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:34| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:33| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$knormal:19|) (not |$cond-alpha-rename:33|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:31| |$cond-alpha-rename:32|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:31| |$cond-alpha-rename:32|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:32|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:12| Bool) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:13| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:5| Int) )
    ( and (= |$cond-alpha-rename:9| 0) (= |$cond-alpha-rename:8| (> |$cond-alpha-rename:4| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (+ |$cond-alpha-rename:5| |$cond-alpha-rename:6|)) (= |$cond-alpha-rename:6| |$cond-alpha-rename:3|) (= |$cond-alpha-rename:5| 0) (= |$cond-alpha-rename:4| (+ |$cond-alpha-rename:14| |$cond-alpha-rename:15|)) (= |$cond-alpha-rename:39| (- |$cond-alpha-rename:2| 1)) (= |$cond-alpha-rename:38| (< |$cond-alpha-rename:2| 2)) (= |$cond-alpha-rename:3| (- |$cond-alpha-rename:2| 2)) (= |$cond-alpha-rename:15| |$cond-alpha-rename:2|) (= |$cond-alpha-rename:14| 0) (= |$cond-alpha-rename:13| (and |$cond-alpha-rename:12| |$cond-alpha-rename:8|)) (= |$cond-alpha-rename:12| (>= |$cond-alpha-rename:11| 0)) (= |$cond-alpha-rename:11| (+ |$cond-alpha-rename:9| |$cond-alpha-rename:10|)) (= |$cond-alpha-rename:10| |$cond-alpha-rename:3|) (= |$cond-alpha-rename:1| 1) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:38|) (not |$cond-alpha-rename:13|) (not (= |$cond-alpha-rename:1| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:36| |$cond-alpha-rename:37|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:36| |$cond-alpha-rename:37|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:37|) )
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:42| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$cond-alpha-rename:41| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:44| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:43| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:44| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:43| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$knormal:19|) (not |$cond-alpha-rename:43|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:45| |$cond-alpha-rename:44| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:41| |$cond-alpha-rename:42|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:41| |$cond-alpha-rename:42|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:42|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) )
      (|bot$unknown:1| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:19| Bool) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:47| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:50| Int) (|$knormal:7| Int) (|$cond-alpha-rename:103| Bool) (|$V-reftype:48| Int) (|$cond-alpha-rename:106| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:49| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:48| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$cond-alpha-rename:106| (- |$cond-alpha-rename:100| 2)) (= |$cond-alpha-rename:104| (- |$cond-alpha-rename:100| 1)) (= |$cond-alpha-rename:103| (< |$cond-alpha-rename:100| 2)) (= |$cond-alpha-rename:101| 1) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (= |$V-reftype:48| |$knormal:7|) (not |$cond-alpha-rename:48|) (not |$cond-alpha-rename:103|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:105| |$cond-alpha-rename:104| |$cond-alpha-rename:100| |$cond-alpha-rename:101|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:100| |$cond-alpha-rename:99| |$cond-alpha-rename:102|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:46| |$cond-alpha-rename:47|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:99| |$cond-alpha-rename:102|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:46| |$cond-alpha-rename:47|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:47|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:102|) (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|) )
      (|fib_1030$unknown:12| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:53| Bool) (|$knormal:7| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:110| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:111| Bool) (|$V-reftype:53| Int) (|$cond-alpha-rename:114| Int) )
    (=>
      ( and (= |$cond-alpha-rename:54| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:53| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$cond-alpha-rename:114| (- |$cond-alpha-rename:108| 2)) (= |$cond-alpha-rename:112| (- |$cond-alpha-rename:108| 1)) (= |$cond-alpha-rename:111| (< |$cond-alpha-rename:108| 2)) (= |$cond-alpha-rename:109| 1) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (= |$V-reftype:53| |$knormal:7|) (not |$cond-alpha-rename:53|) (not |$cond-alpha-rename:111|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (|fib_without_checking_1060$unknown:16| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:113| |$cond-alpha-rename:112| |$cond-alpha-rename:108| |$cond-alpha-rename:109|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$cond-alpha-rename:110|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:51| |$cond-alpha-rename:52|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:51| |$cond-alpha-rename:52|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:107| |$cond-alpha-rename:110|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:52|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:110|) (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|) )
      (|fib_1030$unknown:12| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:56| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:59| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:59| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:58| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:58|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:60| |$cond-alpha-rename:59| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:56| |$cond-alpha-rename:57|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:56| |$cond-alpha-rename:57|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:57|) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:64| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:63| Bool) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:64| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:63| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:63|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:61| |$cond-alpha-rename:62|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:62|) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:68| Bool) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:66| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:69| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:69| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:68| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:68|) |$knormal:19| (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:66| |$cond-alpha-rename:67|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:66| |$cond-alpha-rename:67|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:67|) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:73| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:74| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) )
    (=>
      ( and (= |$cond-alpha-rename:74| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:73| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:73|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:71| |$cond-alpha-rename:72|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:71| |$cond-alpha-rename:72|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:72|) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:76| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:79| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:78| Bool) (|$alpha-6:n_1031| Int) )
    (=>
      ( and (= |$cond-alpha-rename:79| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:78| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:78|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:76| |$cond-alpha-rename:77|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:76| |$cond-alpha-rename:77|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:77|) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$cond-alpha-rename:83| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$cond-alpha-rename:84| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:85| Int) )
    (=>
      ( and (= |$cond-alpha-rename:84| (- |$alpha-5:s_prev_fib_n_1050| 1)) (= |$cond-alpha-rename:83| (< |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-6:n_1031| (- |$alpha-5:s_prev_fib_n_1050| 2)) (= |$alpha-4:prev_set_flag_fib_1051| 1) (not |$cond-alpha-rename:83|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:81| |$cond-alpha-rename:82|) (|fib_without_checking_1060$unknown:14| |$cond-alpha-rename:81| |$cond-alpha-rename:82|) (|fib_without_checking_1060$unknown:13| |$cond-alpha-rename:82|) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:30| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$knormal:39| Int) (|$knormal:37| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$knormal:28| Int) (|$V-reftype:59| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (= |$V-reftype:59| (+ |$knormal:30| |$knormal:39|)) (not |$knormal:24|) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_1030$unknown:12| |$knormal:39| |$knormal:37| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:59| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:24| Bool) (|$knormal:30| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$V-reftype:7| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$knormal:28| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_1030$unknown:5| |$V-reftype:7|) )
      (|fib_without_checking_1060$unknown:13| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:24| Bool) (|$knormal:30| Int) (|$alpha-9:set_flag_fib_1052| Int) (|fib_without_checking_1060| Int) (|$V-reftype:25| Int) (|$V-reftype:11| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$knormal:28| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_1030$unknown:7| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|) (|fib_1030$unknown:6| |$V-reftype:25| |fib_without_checking_1060|) (|fib_1030$unknown:5| |fib_without_checking_1060|) )
      (|fib_without_checking_1060$unknown:15| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$knormal:28| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|fib_without_checking_1060| Int) (|$V-reftype:9| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:30| Int) (|$knormal:24| Bool) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_1030$unknown:6| |$V-reftype:9| |fib_without_checking_1060|) (|fib_1030$unknown:5| |fib_without_checking_1060|) )
      (|fib_without_checking_1060$unknown:14| |$V-reftype:9| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$V-reftype:56| 1) |$knormal:24| (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:13| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:14| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not |$knormal:24|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:15| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) (|$alpha-15:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$alpha-15:set_flag_fib_1052| 0) (|main_1032$unknown:17| |$alpha-14:r|) )
      (|fib_without_checking_1060$unknown:13| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:s_fib_n_1049| Int) (|$alpha-14:r| Int) (|$alpha-15:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$alpha-16:s_fib_n_1049| 0) (= |$alpha-15:set_flag_fib_1052| 0) (|main_1032$unknown:17| |$alpha-14:r|) )
      (|fib_without_checking_1060$unknown:14| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-14:r| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-16:s_fib_n_1049| 0) (= |$alpha-15:set_flag_fib_1052| 0) (|main_1032$unknown:17| |$alpha-14:r|) )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(check-sat)

(get-model)

