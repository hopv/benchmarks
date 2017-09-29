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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:40| Int) )
    ( and (not (and (>= (- |$cond-alpha-rename:2| 2) 0) (> |$cond-alpha-rename:2| (- |$cond-alpha-rename:2| 2)))) (not (< |$cond-alpha-rename:2| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:40| (- |$cond-alpha-rename:2| 1) |$cond-alpha-rename:2| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:36| |$cond-alpha-rename:37|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:318| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 2) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)))) (not (< |$cond-alpha-rename:214| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:304| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:240| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:225| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:219| (- |$cond-alpha-rename:214| 1) |$cond-alpha-rename:214| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:214| |$cond-alpha-rename:213| |$cond-alpha-rename:216|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:300| |$cond-alpha-rename:301|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:221| |$cond-alpha-rename:222|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:318| 1) (|fail$unknown:4| |$cond-alpha-rename:239| 1) (|bot$unknown:2| |$cond-alpha-rename:316| 1) (|bot$unknown:2| |$cond-alpha-rename:237| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:240|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:325| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 2) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)))) (not (< |$cond-alpha-rename:214| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:325| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:240| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:225| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:219| (- |$cond-alpha-rename:214| 1) |$cond-alpha-rename:214| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:214| |$cond-alpha-rename:213| |$cond-alpha-rename:216|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:321| |$cond-alpha-rename:322|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:221| |$cond-alpha-rename:222|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:239| 1) (|bot$unknown:2| |$cond-alpha-rename:237| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:240|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$knormal:30| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)) (>= (- |$alpha-11:n_1031| 2) 0) (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (< |$cond-alpha-rename:245| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:347| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:266| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:250| (- |$cond-alpha-rename:245| 1) |$cond-alpha-rename:245| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:243| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:245| |$cond-alpha-rename:244| |$cond-alpha-rename:247|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:343| |$cond-alpha-rename:344|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:252| |$cond-alpha-rename:253|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:361| 1) (|bot$unknown:2| |$cond-alpha-rename:359| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:266|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:368| Int) (|$knormal:30| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 2)) (>= (- |$alpha-11:n_1031| 2) 0) (= (- |$alpha-11:n_1031| 2) (- |$alpha-11:n_1031| 2)) (= 1 1) (not (< |$cond-alpha-rename:245| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:368| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:266| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:250| (- |$cond-alpha-rename:245| 1) |$cond-alpha-rename:245| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:243| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:245| |$cond-alpha-rename:244| |$cond-alpha-rename:247|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:364| |$cond-alpha-rename:365|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:252| |$cond-alpha-rename:253|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:266|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:404| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (>= (+ 0 (- |$V-reftype:25| 2)) 0))) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:390| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:386| |$cond-alpha-rename:387|) (|fail$unknown:4| |$cond-alpha-rename:404| 1) (|bot$unknown:2| |$cond-alpha-rename:402| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:411| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (>= (+ 0 (- |$V-reftype:25| 2)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:411| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:407| |$cond-alpha-rename:408|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:428| Int) (|$knormal:30| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) (not (< |$V-reftype:25| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:428| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:424| |$cond-alpha-rename:425|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
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

(exit)

