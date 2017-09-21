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

(declare-fun |fib_1030$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:13|
  ( Int ) Bool
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
  (forall ( (|$alpha-10:n_1031| Int) (|$knormal:22| Int) (|$knormal:36| Int) (|$knormal:38| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:36| 1) (|fail$unknown:4| |$knormal:38| 1) (|fib_without_checking_1060$unknown:12| |$knormal:22| |$alpha-10:n_1031| 0 0) (|main_1032$unknown:13| |$alpha-10:n_1031|) (not (= 0 0)) (not (and (>= |$alpha-10:n_1031| 0) (> 0 |$alpha-10:n_1031|))) )
      (|fib_1030$unknown:8| |$knormal:22| |$alpha-10:n_1031| 0 0)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1| Int) )
    ( and (|main_1032$unknown:13| |$cond-alpha-rename:1|) (not (= 0 0)) (not (and (>= |$cond-alpha-rename:1| 0) (> 0 |$cond-alpha-rename:1|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$knormal:22| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:12| |$knormal:22| |$alpha-10:n_1031| 0 0) (|main_1032$unknown:13| |$alpha-10:n_1031|) (not (= 0 0)) (>= |$alpha-10:n_1031| 0) (> 0 |$alpha-10:n_1031|) )
      (|fib_1030$unknown:8| |$knormal:22| |$alpha-10:n_1031| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n_1031| Int) (|$knormal:22| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:12| |$knormal:22| |$alpha-10:n_1031| 0 0) (|main_1032$unknown:13| |$alpha-10:n_1031|) (not (not (= 0 0))) )
      (|fib_1030$unknown:8| |$knormal:22| |$alpha-10:n_1031| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) (|$knormal:16| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (< |$alpha-5:n_1031| 2)) (|fib_without_checking_1060$unknown:12| |$knormal:9| (- |$alpha-5:n_1031| 1) |$alpha-5:n_1031| 1) (|fib_without_checking_1060$unknown:12| |$knormal:16| (- |$alpha-5:n_1031| 2) |$alpha-5:n_1031| 1) )
      (|fib_without_checking_1060$unknown:12| (+ |$knormal:9| |$knormal:16|) |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:set_flag_fib_1052| Int) (|$alpha-4:s_fib_n_1049| Int) (|$alpha-5:n_1031| Int) )
    (=>
      ( and (< |$alpha-5:n_1031| 2) )
      (|fib_without_checking_1060$unknown:12| 1 |$alpha-5:n_1031| |$alpha-4:s_fib_n_1049| |$alpha-3:set_flag_fib_1052|)
    )
  )
)
(check-sat)

(get-model)

