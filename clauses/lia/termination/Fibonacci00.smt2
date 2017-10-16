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
       let u =if prev_set_flag_fib_1051 then
                let u_1078 = fail ()
                in
                  bot()
              else () in
              fib_without_checking_1060 prev_set_flag_fib_1051 s_prev_fib_n_1050
                n_1031
  
     let main r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_1030 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

(declare-fun |fail$unknown:3|
  ( Int ) Bool
)

(declare-fun |fib_1030$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_1030$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:25| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:25| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:35| Int) (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:25| 1) (= |$knormal:23| 1) (= |$V-reftype:35| |$knormal:22|) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_without_checking_1060$unknown:12| |$knormal:22| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true (|fail$unknown:4| |$knormal:26| |$knormal:25|) (|bot$unknown:2| |$knormal:24| |$knormal:23|) )
      (|fib_1030$unknown:8| |$V-reftype:35| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:25| 1) (= |$knormal:23| 1) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true (|fail$unknown:4| |$knormal:26| |$knormal:25|) (|bot$unknown:2| |$knormal:24| |$knormal:23|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:25| 1) (= |$knormal:23| 1) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true (|fail$unknown:4| |$knormal:26| |$knormal:25|) (|bot$unknown:2| |$knormal:24| |$knormal:23|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:25| 1) (= |$knormal:23| 1) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true (|fail$unknown:4| |$knormal:26| |$knormal:25|) (|bot$unknown:2| |$knormal:24| |$knormal:23|) )
      true
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
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:23| Int) (|$knormal:25| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$knormal:25| 1) (= |$knormal:23| 1) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true (|fail$unknown:4| |$knormal:26| |$knormal:25|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (= |$V-reftype:37| |$knormal:22|) (not (not (= 0 |$alpha-8:prev_set_flag_fib_1051|))) (|fib_without_checking_1060$unknown:12| |$knormal:22| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true )
      (|fib_1030$unknown:8| |$V-reftype:37| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 1) (not (= 0 |$alpha-8:prev_set_flag_fib_1051|)) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true )
      (|fail$unknown:3| |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_fib_1051|))) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_fib_1051|))) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_fib_1051| Int) (|$alpha-9:s_prev_fib_n_1050| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_fib_1051|))) (|fib_1030$unknown:7| |$alpha-10:n_1031| |$alpha-9:s_prev_fib_n_1050| |$alpha-8:prev_set_flag_fib_1051|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:3| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (= |$V-reftype:32| (+ |$knormal:9| |$knormal:16|)) (not (not (= 0 |$knormal:3|))) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:12| |$knormal:16| |$knormal:14| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) true true )
      (|fib_without_checking_1060$unknown:12| |$V-reftype:32| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:14| Int) (|$knormal:3| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$knormal:14| (- |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true (|fib_without_checking_1060$unknown:12| |$knormal:9| |$knormal:7| |$alpha-5:n_1031| |$alpha-6:set_flag_fib_1052|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (= |$V-reftype:29| 1) (not (= 0 |$knormal:3|)) true true true )
      (|fib_without_checking_1060$unknown:12| |$V-reftype:29| |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n_1031| Int) (|$alpha-6:set_flag_fib_1052| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-5:n_1031| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-5:n_1031| 2)) (= |$alpha-6:set_flag_fib_1052| 1) (not (not (= 0 |$knormal:3|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:set_flag_fib_1052| Int) (|$alpha-15:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-15:s_fib_n_1049| 0) (= |$alpha-14:set_flag_fib_1052| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:set_flag_fib_1052| Int) (|$alpha-15:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-15:s_fib_n_1049| 0) (= |$alpha-14:set_flag_fib_1052| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:r| Int) (|$alpha-14:set_flag_fib_1052| Int) (|$alpha-15:s_fib_n_1049| Int) )
    (=>
      ( and (= |$alpha-15:s_fib_n_1049| 0) (= |$alpha-14:set_flag_fib_1052| 0) )
      (|fib_1030$unknown:7| |$alpha-13:r| |$alpha-15:s_fib_n_1049| |$alpha-14:set_flag_fib_1052|)
    )
  )
)
(check-sat)

(get-model)

(exit)

