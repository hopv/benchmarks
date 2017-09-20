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

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |fib_1030$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:62| Int) (|$knormal:21| Int) (|$knormal:23| Int) (|$knormal:7| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| 1) (|fail$unknown:4| |$knormal:23| 1) (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$cond-alpha-rename:59|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:20| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:62| (- |$cond-alpha-rename:57| 1) |$cond-alpha-rename:57| 1) (|fib_without_checking_1060$unknown:16| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (not (= 0 1)) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) (not (< |$cond-alpha-rename:57| 2)) (not (and (> (+ 0 |$alpha-5:s_prev_fib_n_1050|) (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2))) (>= (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2)) 0))) )
      (|fib_1030$unknown:12| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:25| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| 1) (|fail$unknown:4| |$knormal:23| 1) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:21| |$cond-alpha-rename:22|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:25| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (not (= 0 1)) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) (not (and (> (+ 0 |$alpha-5:s_prev_fib_n_1050|) (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2))) (>= (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2)) 0))) )
      (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:30| Int) )
    ( and (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:26| |$cond-alpha-rename:27|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:30| (- |$cond-alpha-rename:2| 1) |$cond-alpha-rename:2| 1) (not (= 0 1)) (not (and (>= (+ 0 (- |$cond-alpha-rename:2| 2)) 0) (> (+ 0 |$cond-alpha-rename:2|) (+ 0 (- |$cond-alpha-rename:2| 2))))) (not (< |$cond-alpha-rename:2| 2)) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:70| Int) (|$knormal:7| Int) )
    (=>
      ( and (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:31| |$cond-alpha-rename:32|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:65| |$cond-alpha-rename:64| |$cond-alpha-rename:67|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:35| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:70| (- |$cond-alpha-rename:65| 1) |$cond-alpha-rename:65| 1) (|fib_without_checking_1060$unknown:16| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2)) 0) (> (+ 0 |$alpha-5:s_prev_fib_n_1050|) (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2))) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) (not (< |$cond-alpha-rename:65| 2)) )
      (|fib_1030$unknown:12| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:78| Int) (|$knormal:7| Int) )
    (=>
      ( and (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:36| |$cond-alpha-rename:37|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$cond-alpha-rename:75|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:40| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:78| (- |$cond-alpha-rename:73| 1) |$cond-alpha-rename:73| 1) (|fib_without_checking_1060$unknown:16| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1) (not (not (= 0 1))) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) (not (< |$cond-alpha-rename:73| 2)) )
      (|fib_1030$unknown:12| |$knormal:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:45| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:41| |$cond-alpha-rename:42|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:45| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2)) 0) (> (+ 0 |$alpha-5:s_prev_fib_n_1050|) (+ 0 (- |$alpha-5:s_prev_fib_n_1050| 2))) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) )
      (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-5:s_prev_fib_n_1050| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:50| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-5:s_prev_fib_n_1050| |$cond-alpha-rename:46| |$cond-alpha-rename:47|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:50| (- |$alpha-5:s_prev_fib_n_1050| 1) |$alpha-5:s_prev_fib_n_1050| 1) (not (not (= 0 1))) (not (< |$alpha-5:s_prev_fib_n_1050| 2)) )
      (|fib_1030$unknown:7| (- |$alpha-5:s_prev_fib_n_1050| 2) |$alpha-5:s_prev_fib_n_1050| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:30| Int) (|$knormal:39| Int) )
    (=>
      ( and (|fib_1030$unknown:12| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$knormal:30| Int) (|fib_without_checking_1060| Int) )
    (=>
      ( and (|fib_1030$unknown:7| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| |$V-reftype:11| |$V-reftype:25| |fib_without_checking_1060|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (< |$alpha-11:n_1031| 2) )
      (|fib_without_checking_1060$unknown:16| 1 |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and (|main_1032$unknown:17| |$alpha-14:r|) )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

