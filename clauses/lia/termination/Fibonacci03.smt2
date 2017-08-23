(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec fib_1030 fib_without_checking_1060 prev_set_flag_fib_1051 s_prev_fib_n_1050 n_1031 =
       let u =if prev_set_flag_fib_1051 then
                if (0 * 1) + (1 * s_prev_fib_n_1050) > (0 * 1) + (1 * n_1031) &&
                   (0 * 1) + (1 * n_1031) >= 0 then
                  ()
                else
                  let u_2697 = fail ()
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
           fib_1030 fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 1) +
           fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 2)
  
     let main_1032 r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

(declare-fun |main_1032$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |main_1032$unknown:17|
  ( Int ) Bool
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

(declare-fun |fail$unknown:3|
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

(declare-fun |fib_1030$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:9|
  ( Int ) Bool
)

(declare-fun |fib_1030$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:10|
  ( Int Int ) Bool
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
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (= |$V-reftype:33| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:2| |$V-reftype:33| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$knormal:7| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$V-reftype:51| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| |$knormal:20|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$V-reftype:51| |$knormal:7|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:20| 1) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:12| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| |$knormal:20|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:20| 1) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| |$knormal:20|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:20| 1) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| |$knormal:20|) (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:20| 1) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
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
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:22| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:20| 1) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|bot$unknown:1| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$alpha-8:u| Int) (|$V-reftype:48| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:7| Int) (|$knormal:19| Bool) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) |$knormal:19| (= |$V-reftype:48| |$knormal:7|) (= |$alpha-8:u| 1) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:12| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:u| Int) (|$V-reftype:53| Int) (|$knormal:7| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (= |$V-reftype:53| |$knormal:7|) (= |$alpha-8:u| 1) )
      (|fib_1030$unknown:12| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) |$knormal:19| (= |$alpha-8:u| 1) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$alpha-8:u| Int) (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$knormal:19| Bool) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) |$knormal:19| (= |$alpha-8:u| 1) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) |$knormal:19| (= |$alpha-8:u| 1) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:19| Bool) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (not (= |$alpha-4:prev_set_flag_fib_1051| 0)) (not |$knormal:19|) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$knormal:11| 0) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:15| 0) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:22| 1) (= |$knormal:8| 0) (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) )
      (|fail$unknown:3| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (= |$alpha-8:u| 1) )
      (|fib_1030$unknown:5| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:u| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (= |$alpha-8:u| 1) )
      (|fib_1030$unknown:6| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n_1031| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (|fib_1030$unknown:10| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:9| |$alpha-4:prev_set_flag_fib_1051|) (= |$alpha-4:prev_set_flag_fib_1051| 0) (= |$alpha-8:u| 1) )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:39| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$knormal:37| Int) (|$V-reftype:59| Int) )
    (=>
      ( and (|fib_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$knormal:39| |$knormal:37| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (not |$knormal:24|) (= |$V-reftype:59| (+ |$knormal:32| |$knormal:39|)) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) (= |$knormal:37| (- |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:59| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) )
    (=>
      ( and (|fib_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) (= |$knormal:37| (- |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:13| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Bool) (|$knormal:37| Int) )
    (=>
      ( and (|fib_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) (= |$knormal:37| (- |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:14| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) )
    (=>
      ( and (|fib_1030$unknown:12| |$knormal:32| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) (= |$knormal:37| (- |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| |$knormal:37| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$V-reftype:7| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_1030$unknown:5| |$V-reftype:7|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_without_checking_1060$unknown:13| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|fib_without_checking_1060| Int) (|$V-reftype:25| Int) (|$V-reftype:11| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_1030$unknown:5| |fib_without_checking_1060|) (|fib_1030$unknown:6| |$V-reftype:25| |fib_without_checking_1060|) (|fib_1030$unknown:7| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_without_checking_1060$unknown:15| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|$V-reftype:27| Int) (|$V-reftype:25| Int) (|fib_without_checking_1060| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$V-reftype:28| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|fib_1030$unknown:5| |fib_without_checking_1060|) (|fib_1030$unknown:6| |$V-reftype:25| |fib_without_checking_1060|) (|fib_1030$unknown:7| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$V-reftype:28| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_1030$unknown:8| |$V-reftype:28| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|fib_without_checking_1060| Int) (|$V-reftype:9| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|fib_1030$unknown:5| |fib_without_checking_1060|) (|fib_1030$unknown:6| |$V-reftype:9| |fib_without_checking_1060|) (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_without_checking_1060$unknown:14| |$V-reftype:9| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$V-reftype:56| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) |$knormal:24| (= |$V-reftype:56| 1) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-11:n_1031| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_1030$unknown:10| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_1030$unknown:11| |$knormal:30| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:24| Bool) (|$alpha-9:set_flag_fib_1052| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:13| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:14| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not |$knormal:24|) (= |$alpha-12:set_flag_fib_1052| 1) (= |$knormal:24| (< |$alpha-11:n_1031| 2)) (= |$knormal:30| (- |$alpha-11:n_1031| 1)) )
      (|fib_1030$unknown:9| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:s_fib_n_1049| Int) (|$knormal:45| Int) (|$alpha-14:r| Int) (|$alpha-15:set_flag_fib_1052| Int) (|$V-reftype:62| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:16| |$knormal:45| |$alpha-14:r| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|) (|main_1032$unknown:17| |$alpha-14:r|) (= |$V-reftype:62| |$knormal:45|) (= |$alpha-15:set_flag_fib_1052| 0) (= |$alpha-16:s_fib_n_1049| 0) )
      (|main_1032$unknown:18| |$V-reftype:62| |$alpha-14:r|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-14:r| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (|main_1032$unknown:17| |$alpha-14:r|) (= |$alpha-15:set_flag_fib_1052| 0) (= |$alpha-16:s_fib_n_1049| 0) )
      (|fib_without_checking_1060$unknown:13| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:s_fib_n_1049| Int) (|$alpha-14:r| Int) (|$alpha-15:set_flag_fib_1052| Int) )
    (=>
      ( and (|main_1032$unknown:17| |$alpha-14:r|) (= |$alpha-15:set_flag_fib_1052| 0) (= |$alpha-16:s_fib_n_1049| 0) )
      (|fib_without_checking_1060$unknown:14| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-14:r| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (|main_1032$unknown:17| |$alpha-14:r|) (= |$alpha-15:set_flag_fib_1052| 0) (= |$alpha-16:s_fib_n_1049| 0) )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(check-sat)

