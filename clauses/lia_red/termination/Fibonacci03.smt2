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

(declare-fun |main_1032$unknown:17|
  ( Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |fib_without_checking_1060$unknown:15|
  ( Int Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) )
    ( and (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:22| |$cond-alpha-rename:23|) (not (= 0 1)) (not (and (>= (+ 0 (- |$cond-alpha-rename:2| 1)) 0) (> (+ 0 |$cond-alpha-rename:2|) (+ 0 (- |$cond-alpha-rename:2| 1))))) (not (< |$cond-alpha-rename:2| 2)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:266| 1) (|bot$unknown:2| |$cond-alpha-rename:72| 1) (|fail$unknown:4| |$cond-alpha-rename:268| 1) (|fail$unknown:4| |$cond-alpha-rename:74| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:252| |$cond-alpha-rename:253|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:250| |$cond-alpha-rename:249| |$cond-alpha-rename:251|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:75| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:250| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:75| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:277| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:72| 1) (|fail$unknown:4| |$cond-alpha-rename:74| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:276| |$cond-alpha-rename:277|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:274| |$cond-alpha-rename:273| |$cond-alpha-rename:275|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:75| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:274| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:75| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:72| 1) (|fail$unknown:4| |$cond-alpha-rename:74| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:296| |$cond-alpha-rename:297|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:58| |$cond-alpha-rename:59|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:294| |$cond-alpha-rename:293| |$cond-alpha-rename:295|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:75| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:294| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:75| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:91| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:318| 1) (|fail$unknown:4| |$cond-alpha-rename:320| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:304| |$cond-alpha-rename:305|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:78| |$cond-alpha-rename:79|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:302| |$cond-alpha-rename:301| |$cond-alpha-rename:303|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:91| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:302| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:91| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:326| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:91| Int) (|$knormal:39| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:328| |$cond-alpha-rename:329|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:78| |$cond-alpha-rename:79|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:326| |$cond-alpha-rename:325| |$cond-alpha-rename:327|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:91| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:326| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:91| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:91| Int) (|$knormal:39| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:348| |$cond-alpha-rename:349|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:78| |$cond-alpha-rename:79|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:346| |$cond-alpha-rename:345| |$cond-alpha-rename:347|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:91| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:346| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:91| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:97| Int) (|$knormal:39| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:370| 1) (|fail$unknown:4| |$cond-alpha-rename:372| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:356| |$cond-alpha-rename:357|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:94| |$cond-alpha-rename:95|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:354| |$cond-alpha-rename:353| |$cond-alpha-rename:355|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:97| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:354| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:97| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:380| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:97| Int) (|$knormal:39| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:380| |$cond-alpha-rename:381|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:94| |$cond-alpha-rename:95|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:378| |$cond-alpha-rename:377| |$cond-alpha-rename:379|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:97| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:378| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:97| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:398| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:400| Int) (|$cond-alpha-rename:401| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:97| Int) (|$knormal:39| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:400| |$cond-alpha-rename:401|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:94| |$cond-alpha-rename:95|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:398| |$cond-alpha-rename:397| |$cond-alpha-rename:399|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:97| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:398| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:97| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:406| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:112| 1) (|bot$unknown:2| |$cond-alpha-rename:422| 1) (|fail$unknown:4| |$cond-alpha-rename:114| 1) (|fail$unknown:4| |$cond-alpha-rename:424| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:408| |$cond-alpha-rename:409|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:98| |$cond-alpha-rename:99|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:406| |$cond-alpha-rename:405| |$cond-alpha-rename:407|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:115| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:406| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:430| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:433| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:112| 1) (|fail$unknown:4| |$cond-alpha-rename:114| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:432| |$cond-alpha-rename:433|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:98| |$cond-alpha-rename:99|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:430| |$cond-alpha-rename:429| |$cond-alpha-rename:431|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:115| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:430| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:112| 1) (|fail$unknown:4| |$cond-alpha-rename:114| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:452| |$cond-alpha-rename:453|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:98| |$cond-alpha-rename:99|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:451|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:115| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:450| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:458| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:460| Int) (|$cond-alpha-rename:461| Int) (|$cond-alpha-rename:474| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:474| 1) (|fail$unknown:4| |$cond-alpha-rename:476| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:460| |$cond-alpha-rename:461|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:458| |$cond-alpha-rename:457| |$cond-alpha-rename:459|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:458| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:481| Int) (|$cond-alpha-rename:482| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:484| |$cond-alpha-rename:485|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:482| |$cond-alpha-rename:481| |$cond-alpha-rename:483|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:482| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:502| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:504| Int) (|$cond-alpha-rename:505| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:504| |$cond-alpha-rename:505|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:502| |$cond-alpha-rename:501| |$cond-alpha-rename:503|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:502| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:509| Int) (|$cond-alpha-rename:510| Int) (|$cond-alpha-rename:511| Int) (|$cond-alpha-rename:512| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:528| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:526| 1) (|fail$unknown:4| |$cond-alpha-rename:528| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:134| |$cond-alpha-rename:135|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:512| |$cond-alpha-rename:513|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:510| |$cond-alpha-rename:509| |$cond-alpha-rename:511|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:137| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$cond-alpha-rename:510| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:535| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:537| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:134| |$cond-alpha-rename:135|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:536| |$cond-alpha-rename:537|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:534| |$cond-alpha-rename:533| |$cond-alpha-rename:535|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:137| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:534| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:554| Int) (|$cond-alpha-rename:555| Int) (|$cond-alpha-rename:556| Int) (|$cond-alpha-rename:557| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:134| |$cond-alpha-rename:135|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:556| |$cond-alpha-rename:557|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:554| |$cond-alpha-rename:553| |$cond-alpha-rename:555|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:137| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:554| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:154| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:152| 1) (|fail$unknown:4| |$cond-alpha-rename:154| 1) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:138| |$cond-alpha-rename:139|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not (= 0 1)) (not (< |$V-reftype:25| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (>= (+ 0 (- |$V-reftype:25| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:157| |$cond-alpha-rename:158|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (>= (+ 0 (- |$V-reftype:25| 1)) 0) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (not (= 0 1)) (not (< |$V-reftype:25| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:172| |$cond-alpha-rename:173|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (not (< |$V-reftype:25| 2)) (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
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
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and (|main_1032$unknown:17| |$alpha-14:r|) )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

