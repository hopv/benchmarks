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
  
     let main r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

(declare-fun |fib_without_checking_1060$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |fib_1030$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:11|
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
  (forall ( (|$V-reftype:51| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$V-reftype:51| |$knormal:7|) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|fib_1030$unknown:12| |$V-reftype:51| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
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
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true (|fail$unknown:4| |$knormal:23| |$knormal:22|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (= |$V-reftype:48| |$knormal:7|) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      (|fib_1030$unknown:12| |$V-reftype:48| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (= |$V-reftype:53| |$knormal:7|) (not (not (= 0 |$alpha-4:prev_set_flag_fib_1051|))) true (|fib_1030$unknown:8| |$knormal:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      (|fib_1030$unknown:12| |$V-reftype:53| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-8:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:22| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-5:s_prev_fib_n_1050|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-6:n_1031|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-6:n_1031|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-4:prev_set_flag_fib_1051|)) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      (|fail$unknown:3| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_fib_1051|))) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_fib_1051|))) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:prev_set_flag_fib_1051| Int) (|$alpha-5:s_prev_fib_n_1050| Int) (|$alpha-6:n_1031| Int) (|$alpha-8:u| Int) )
    (=>
      ( and (= |$alpha-8:u| 1) (not (not (= 0 |$alpha-4:prev_set_flag_fib_1051|))) true (|fib_1030$unknown:11| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|) true )
      (|fib_1030$unknown:7| |$alpha-6:n_1031| |$alpha-5:s_prev_fib_n_1050| |$alpha-4:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (= |$V-reftype:59| (+ |$knormal:30| |$knormal:39|)) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true (|fib_1030$unknown:12| |$knormal:39| |$knormal:37| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:59| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) (|fib_without_checking_1060| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true (|fib_1030$unknown:7| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|) true true )
      (|fib_without_checking_1060$unknown:15| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:28| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) (|fib_without_checking_1060| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$V-reftype:28| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true (|fib_1030$unknown:7| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|) true true )
      (|fib_1030$unknown:8| |$V-reftype:28| |$V-reftype:27| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      (|fib_1030$unknown:11| |$knormal:37| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| (- |$alpha-11:n_1031| 2)) (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:16| |$knormal:30| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (= |$V-reftype:56| 1) (not (= 0 |$knormal:24|)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      (|fib_without_checking_1060$unknown:16| |$V-reftype:56| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-12:set_flag_fib_1052| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:24| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (- |$alpha-11:n_1031| 1)) (= (not (= 0 |$knormal:24|)) (< |$alpha-11:n_1031| 2)) (= |$alpha-12:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:24|))) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) true true )
      (|fib_without_checking_1060$unknown:15| |$knormal:28| |$alpha-11:n_1031| |$alpha-12:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-16:s_fib_n_1049| 0) (= |$alpha-15:set_flag_fib_1052| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-16:s_fib_n_1049| 0) (= |$alpha-15:set_flag_fib_1052| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) (|$alpha-15:set_flag_fib_1052| Int) (|$alpha-16:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-16:s_fib_n_1049| 0) (= |$alpha-15:set_flag_fib_1052| 0) )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| |$alpha-16:s_fib_n_1049| |$alpha-15:set_flag_fib_1052|)
    )
  )
)
(check-sat)

(get-model)

(exit)

