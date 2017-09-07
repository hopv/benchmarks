(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 n_1031 =
       let set_flag_fib_1052 = true
       in
       let s_fib_n_1049 = n_1031
       in
         if n_1031 < 2 then
           1
         else
           fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 1)
           +
           fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 (n_1031 - 2)
  
     let rec fib_1030 prev_set_flag_fib_1051 s_prev_fib_n_1050 n_1031 =
       let u = if prev_set_flag_fib_1051 then
                if (0 * 1) + (1 * s_prev_fib_n_1050) > (0 * 1) + (1 * n_1031) &&
                   (0 * 1) + (1 * n_1031) >= 0 then
                  ()
                else
                  let u_1811 = fail ()
                  in
                    bot()
               else () in
              fib_without_checking_1060 prev_set_flag_fib_1051 s_prev_fib_n_1050
                n_1031
  
     let main_1032 r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_1030 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

(declare-fun |fib_without_checking_1060$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:13|
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
  (forall ( (|$knormal:32| Int) (|$knormal:31| Int) (|$knormal:29| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$knormal:37| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$alpha-10:n_1031| Int) (|$knormal:34| Bool) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:33| Bool) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (= |$knormal:34| (and |$knormal:29| |$knormal:33|)) (= |$knormal:33| (>= |$knormal:32| 0)) (= |$knormal:32| (+ |$knormal:30| |$knormal:31|)) (= |$knormal:31| |$alpha-10:n_1031|) (= |$knormal:30| 0) (= |$knormal:29| (> |$knormal:25| |$knormal:28|)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-10:n_1031|) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-9:s_prev_fib_n_1050|) (= |$knormal:23| 0) (= |$alpha-9:s_prev_fib_n_1050| 0) (= |$alpha-8:prev_set_flag_fib_1051| 0) (not |$knormal:34|) (not (= |$alpha-8:prev_set_flag_fib_1051| 0)) (|main_1032$unknown:13| |$alpha-10:n_1031|) (|fail$unknown:4| |$knormal:38| |$knormal:37|) (|bot$unknown:2| |$knormal:36| |$knormal:35|) )
      (|fib_without_checking_1060$unknown:11| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:14| Bool) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:6| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:10| Bool) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:7| Int) )
    ( and (= |$cond-alpha-rename:9| (+ |$cond-alpha-rename:7| |$cond-alpha-rename:8|)) (= |$cond-alpha-rename:8| |$cond-alpha-rename:1|) (= |$cond-alpha-rename:7| 0) (= |$cond-alpha-rename:6| (+ |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| |$cond-alpha-rename:3|) (= |$cond-alpha-rename:4| 0) (= |$cond-alpha-rename:3| 0) (= |$cond-alpha-rename:2| 0) (= |$cond-alpha-rename:15| (and |$cond-alpha-rename:10| |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:14| (>= |$cond-alpha-rename:13| 0)) (= |$cond-alpha-rename:13| (+ |$cond-alpha-rename:11| |$cond-alpha-rename:12|)) (= |$cond-alpha-rename:12| |$cond-alpha-rename:1|) (= |$cond-alpha-rename:11| 0) (= |$cond-alpha-rename:10| (> |$cond-alpha-rename:6| |$cond-alpha-rename:9|)) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:15|) (not (= |$cond-alpha-rename:2| 0)) (|main_1032$unknown:13| |$cond-alpha-rename:1|) )
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:32| Int) (|$knormal:31| Int) (|$knormal:29| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$alpha-10:n_1031| Int) (|$knormal:34| Bool) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:33| Bool) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (= |$knormal:34| (and |$knormal:29| |$knormal:33|)) (= |$knormal:33| (>= |$knormal:32| 0)) (= |$knormal:32| (+ |$knormal:30| |$knormal:31|)) (= |$knormal:31| |$alpha-10:n_1031|) (= |$knormal:30| 0) (= |$knormal:29| (> |$knormal:25| |$knormal:28|)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-10:n_1031|) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-9:s_prev_fib_n_1050|) (= |$knormal:23| 0) (= |$alpha-9:s_prev_fib_n_1050| 0) (= |$alpha-8:prev_set_flag_fib_1051| 0) (not |$knormal:34|) (not (= |$alpha-8:prev_set_flag_fib_1051| 0)) (|main_1032$unknown:13| |$alpha-10:n_1031|) (|fail$unknown:4| |$knormal:38| |$knormal:37|) )
      (|bot$unknown:1| |$knormal:35|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$knormal:31| Int) (|$knormal:29| Bool) (|$knormal:26| Int) (|$knormal:23| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-10:n_1031| Int) (|$knormal:34| Bool) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:33| Bool) )
    (=>
      ( and (= |$knormal:34| (and |$knormal:29| |$knormal:33|)) (= |$knormal:33| (>= |$knormal:32| 0)) (= |$knormal:32| (+ |$knormal:30| |$knormal:31|)) (= |$knormal:31| |$alpha-10:n_1031|) (= |$knormal:30| 0) (= |$knormal:29| (> |$knormal:25| |$knormal:28|)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-10:n_1031|) (= |$knormal:26| 0) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-9:s_prev_fib_n_1050|) (= |$knormal:23| 0) (= |$alpha-9:s_prev_fib_n_1050| 0) (= |$alpha-8:prev_set_flag_fib_1051| 0) |$knormal:34| (not (= |$alpha-8:prev_set_flag_fib_1051| 0)) (|main_1032$unknown:13| |$alpha-10:n_1031|) )
      (|fib_without_checking_1060$unknown:11| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) )
    (=>
      ( and (= |$alpha-9:s_prev_fib_n_1050| 0) (= |$alpha-8:prev_set_flag_fib_1051| 0) (= |$alpha-8:prev_set_flag_fib_1051| 0) (|main_1032$unknown:13| |$alpha-10:n_1031|) )
      (|fib_without_checking_1060$unknown:11| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:9| Int) (|$knormal:16| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$knormal:14| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:7| Int) (|$V-reftype:32| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= |$knormal:3| (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (= |$V-reftype:32| (+ |$knormal:9| |$knormal:16|)) (not |$knormal:3|) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:12| |$knormal:16| |$knormal:14| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:11| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|) true )
      (|fib_without_checking_1060$unknown:12| |$V-reftype:32| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Int) (|$knormal:3| Bool) (|$knormal:9| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$knormal:7| Int) (|$alpha-6:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= |$knormal:3| (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not |$knormal:3|) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:11| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|) true )
      (|fib_without_checking_1060$unknown:11| |$knormal:14| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-5:n_1031| Int) (|$alpha-4:s_fib_n_1049| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (< |$alpha-5:n_1031| 2)) (= |$V-reftype:29| 1) |$knormal:3| true (|fib_without_checking_1060$unknown:11| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|) true )
      (|fib_without_checking_1060$unknown:12| |$V-reftype:29| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-6:set_flag_fib_1052| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= |$knormal:3| (< |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not |$knormal:3|) true (|fib_without_checking_1060$unknown:11| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|) true )
      (|fib_without_checking_1060$unknown:11| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|)
    )
  )
)
(check-sat)

(get-model)

