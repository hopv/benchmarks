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
  
     let main r =
       let set_flag_fib_1052 = false in
       let s_fib_n_1049 = 0 in
       fib_without_checking_1060 set_flag_fib_1052 s_fib_n_1049 r
")

(set-logic HORN)

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
    ( and (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) (not (= 0 1)) (not (< |$cond-alpha-rename:2| 2)) (not (and (>= (- |$cond-alpha-rename:2| 1) 0) (> |$cond-alpha-rename:2| (- |$cond-alpha-rename:2| 1)))) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:291| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:146| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:167| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:147|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:275| |$cond-alpha-rename:276|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:150| |$cond-alpha-rename:151|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:291| 1) (|fail$unknown:4| |$cond-alpha-rename:166| 1) (|bot$unknown:2| |$cond-alpha-rename:289| 1) (|bot$unknown:2| |$cond-alpha-rename:164| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:167| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:146| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:167| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:147|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:294| |$cond-alpha-rename:295|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:150| |$cond-alpha-rename:151|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:166| 1) (|bot$unknown:2| |$cond-alpha-rename:164| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:167| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:326| Int) (|$cond-alpha-rename:328| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:171| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:188| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:172|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:312| |$cond-alpha-rename:313|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:175| |$cond-alpha-rename:176|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:328| 1) (|bot$unknown:2| |$cond-alpha-rename:326| 1) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:188| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:332| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:171| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$knormal:39| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:188| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:171| |$cond-alpha-rename:170| |$cond-alpha-rename:172|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:331| |$cond-alpha-rename:332|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:175| |$cond-alpha-rename:176|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:16| (+ |$cond-alpha-rename:188| |$knormal:39|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:363| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:201| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:222| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:201| |$cond-alpha-rename:200| |$cond-alpha-rename:202|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:349| |$cond-alpha-rename:350|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:205| |$cond-alpha-rename:206|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:365| 1) (|fail$unknown:4| |$cond-alpha-rename:221| 1) (|bot$unknown:2| |$cond-alpha-rename:363| 1) (|bot$unknown:2| |$cond-alpha-rename:219| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:369| Int) )
    (=>
      ( and (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (and (>= (- |$alpha-11:n_1031| 1) 0) (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)))) (not (< |$cond-alpha-rename:201| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:222| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:201| |$cond-alpha-rename:200| |$cond-alpha-rename:202|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:368| |$cond-alpha-rename:369|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:205| |$cond-alpha-rename:206|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:221| 1) (|bot$unknown:2| |$cond-alpha-rename:219| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:400| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:226| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0))) (not (< |$alpha-11:n_1031| 2)) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:243| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:226| |$cond-alpha-rename:225| |$cond-alpha-rename:227|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:386| |$cond-alpha-rename:387|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:230| |$cond-alpha-rename:231|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fail$unknown:4| |$cond-alpha-rename:402| 1) (|bot$unknown:2| |$cond-alpha-rename:400| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:406| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| (- |$alpha-11:n_1031| 1)) (>= (- |$alpha-11:n_1031| 1) 0) (= (- |$alpha-11:n_1031| 1) (- |$alpha-11:n_1031| 1)) (= 1 1) (not (< |$cond-alpha-rename:226| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 1))) (>= (+ 0 (- |$alpha-11:n_1031| 1)) 0) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:243| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:226| |$cond-alpha-rename:225| |$cond-alpha-rename:227|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:405| |$cond-alpha-rename:406|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:230| |$cond-alpha-rename:231|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) )
      (|fib_without_checking_1060$unknown:15| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:423| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:437| Int) (|$cond-alpha-rename:439| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (>= (+ 0 (- |$V-reftype:25| 1)) 0))) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:423| |$cond-alpha-rename:424|) (|fail$unknown:4| |$cond-alpha-rename:439| 1) (|bot$unknown:2| |$cond-alpha-rename:437| 1) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:443| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (< |$V-reftype:25| 2)) (not (= 0 1)) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 1))) (>= (+ 0 (- |$V-reftype:25| 1)) 0) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:442| |$cond-alpha-rename:443|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:458| Int) )
    (=>
      ( and (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) (not (< |$V-reftype:25| 2)) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:457| |$cond-alpha-rename:458|) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 1) |$V-reftype:25| 1)
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

