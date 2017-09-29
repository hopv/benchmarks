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

(declare-fun |fib_without_checking_1060$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) )
    ( and (not (and (>= (- |$cond-alpha-rename:2| 1) 0) (> |$cond-alpha-rename:2| (- |$cond-alpha-rename:2| 1)))) (not (< |$cond-alpha-rename:2| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:313| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:168| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:189| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:169|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:297| |$cond-alpha-rename:298|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:172| |$cond-alpha-rename:173|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:313| 1) (|fail$unknown:4| |$cond-alpha-rename:188| 1) (|bot$unknown:2| |$cond-alpha-rename:311| 1) (|bot$unknown:2| |$cond-alpha-rename:186| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:189| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:168| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:189| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:168| |$cond-alpha-rename:167| |$cond-alpha-rename:169|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:316| |$cond-alpha-rename:317|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:172| |$cond-alpha-rename:173|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:188| 1) (|bot$unknown:2| |$cond-alpha-rename:186| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:189| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:350| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:193| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:210| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:193| |$cond-alpha-rename:192| |$cond-alpha-rename:194|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:334| |$cond-alpha-rename:335|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:197| |$cond-alpha-rename:198|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:350| 1) (|bot$unknown:2| |$cond-alpha-rename:348| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:210| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:354| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:193| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:210| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:193| |$cond-alpha-rename:192| |$cond-alpha-rename:194|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:353| |$cond-alpha-rename:354|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:197| |$cond-alpha-rename:198|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:210| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:387| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:223| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:244| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:224|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:371| |$cond-alpha-rename:372|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:227| |$cond-alpha-rename:228|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:387| 1) (|fail$unknown:4| |$cond-alpha-rename:243| 1) (|bot$unknown:2| |$cond-alpha-rename:385| 1) (|bot$unknown:2| |$cond-alpha-rename:241| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:391| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:223| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:244| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:224|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:390| |$cond-alpha-rename:391|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:227| |$cond-alpha-rename:228|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:243| 1) (|bot$unknown:2| |$cond-alpha-rename:241| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:424| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:248| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:265| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:249|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:408| |$cond-alpha-rename:409|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:252| |$cond-alpha-rename:253|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:424| 1) (|bot$unknown:2| |$cond-alpha-rename:422| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:249| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:428| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:248| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:265| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:249|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:427| |$cond-alpha-rename:428|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:252| |$cond-alpha-rename:253|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:445| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:461| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (>= (+ 0 (- |$V-reftype:25| 1)) 0))) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:445| |$cond-alpha-rename:446|) (|fail$unknown:4| |$cond-alpha-rename:461| 1) (|bot$unknown:2| |$cond-alpha-rename:459| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:464| Int) (|$cond-alpha-rename:465| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (>= (+ 0 (- |$V-reftype:25| 1)) 0) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:464| |$cond-alpha-rename:465|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) (not (< |$V-reftype:25| 2)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:479| |$cond-alpha-rename:480|) )
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

(exit)

