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

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:40| Int) )
    ( and (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:36| |$cond-alpha-rename:37|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:40| (- |$cond-alpha-rename:2| 1) |$cond-alpha-rename:2| 1) (not (= 0 1)) (not (< |$cond-alpha-rename:2| 2)) (not (and (>= (- |$cond-alpha-rename:2| 2) 0) (> |$cond-alpha-rename:2| (- |$cond-alpha-rename:2| 2)))) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:296| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 2) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)))) (not (< |$cond-alpha-rename:192| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:282| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:218| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:203| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:197| (- |$cond-alpha-rename:192| 1) |$cond-alpha-rename:192| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:192| |$cond-alpha-rename:191| |$cond-alpha-rename:194|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:278| |$cond-alpha-rename:279|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:199| |$cond-alpha-rename:200|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:296| 1) (|fail$unknown:4| |$cond-alpha-rename:217| 1) (|bot$unknown:2| |$cond-alpha-rename:294| 1) (|bot$unknown:2| |$cond-alpha-rename:215| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:218|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:303| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 2) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)))) (not (< |$cond-alpha-rename:192| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:303| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:218| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:203| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:197| (- |$cond-alpha-rename:192| 1) |$cond-alpha-rename:192| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:192| |$cond-alpha-rename:191| |$cond-alpha-rename:194|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:299| |$cond-alpha-rename:300|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:199| |$cond-alpha-rename:200|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:217| 1) (|bot$unknown:2| |$cond-alpha-rename:215| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:218|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:339| Int) (|$knormal:30| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)) (>= (- |$alpha-11:n_1031| 2) 0) (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (< |$cond-alpha-rename:223| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:325| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:244| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:228| (- |$cond-alpha-rename:223| 1) |$cond-alpha-rename:223| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:221| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:225|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:321| |$cond-alpha-rename:322|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:230| |$cond-alpha-rename:231|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:339| 1) (|bot$unknown:2| |$cond-alpha-rename:337| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:244|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:346| Int) (|$knormal:30| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)) (>= (- |$alpha-11:n_1031| 2) 0) (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (< |$cond-alpha-rename:223| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:346| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:244| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:228| (- |$cond-alpha-rename:223| 1) |$cond-alpha-rename:223| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:221| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:225|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:342| |$cond-alpha-rename:343|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:230| |$cond-alpha-rename:231|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:244|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:380| Int) (|$cond-alpha-rename:382| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (>= (+ 0 (- |$V-reftype:25| 2)) 0))) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:368| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:364| |$cond-alpha-rename:365|) (|fail$unknown:4| |$cond-alpha-rename:382| 1) (|bot$unknown:2| |$cond-alpha-rename:380| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:389| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (>= (+ 0 (- |$V-reftype:25| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:389| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:385| |$cond-alpha-rename:386|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:406| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) (not (< |$V-reftype:25| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:406| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:402| |$cond-alpha-rename:403|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) )
    (=>
      ( and (< |$alpha-11:n_1031| 2) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| 1 |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and true )
      (|fib_without_checking_1060$unknown:15| |$alpha-14:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

