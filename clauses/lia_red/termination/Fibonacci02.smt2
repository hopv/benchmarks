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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:30| Int) )
    ( and (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:26| |$cond-alpha-rename:27|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:30| (- |$cond-alpha-rename:2| 1) |$cond-alpha-rename:2| 1) (not (= 0 1)) (not (and (>= (+ 0 (- |$cond-alpha-rename:2| 2)) 0) (> (+ 0 |$cond-alpha-rename:2|) (+ 0 (- |$cond-alpha-rename:2| 2))))) (not (< |$cond-alpha-rename:2| 2)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:262| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:90| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:102| 1) (|bot$unknown:2| |$cond-alpha-rename:281| 1) (|fail$unknown:4| |$cond-alpha-rename:104| 1) (|fail$unknown:4| |$cond-alpha-rename:283| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:265| |$cond-alpha-rename:266|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:86| |$cond-alpha-rename:87|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:262| |$cond-alpha-rename:261| |$cond-alpha-rename:264|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:105| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:269| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:288| (- |$cond-alpha-rename:262| 1) |$cond-alpha-rename:262| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:90| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$cond-alpha-rename:262| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:105|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:90| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:102| 1) (|fail$unknown:4| |$cond-alpha-rename:104| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:294| |$cond-alpha-rename:295|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:86| |$cond-alpha-rename:87|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:291| |$cond-alpha-rename:290| |$cond-alpha-rename:293|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:105| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:298| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:313| (- |$cond-alpha-rename:291| 1) |$cond-alpha-rename:291| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:90| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:291| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:105|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:326| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:90| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:102| 1) (|fail$unknown:4| |$cond-alpha-rename:104| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:319| |$cond-alpha-rename:320|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:86| |$cond-alpha-rename:87|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:316| |$cond-alpha-rename:315| |$cond-alpha-rename:318|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:105| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:323| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:326| (- |$cond-alpha-rename:316| 1) |$cond-alpha-rename:316| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:90| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:316| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:105|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:355| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:348| 1) (|fail$unknown:4| |$cond-alpha-rename:350| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:108| |$cond-alpha-rename:109|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:332| |$cond-alpha-rename:333|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:329| |$cond-alpha-rename:328| |$cond-alpha-rename:331|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:112| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:123| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:336| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:355| (- |$cond-alpha-rename:329| 1) |$cond-alpha-rename:329| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$cond-alpha-rename:329| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:123|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:358| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:365| Int) (|$cond-alpha-rename:380| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:108| |$cond-alpha-rename:109|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:361| |$cond-alpha-rename:362|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:358| |$cond-alpha-rename:357| |$cond-alpha-rename:360|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:112| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:123| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:365| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:380| (- |$cond-alpha-rename:358| 1) |$cond-alpha-rename:358| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:358| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:123|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:108| |$cond-alpha-rename:109|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:386| |$cond-alpha-rename:387|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:383| |$cond-alpha-rename:382| |$cond-alpha-rename:385|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:112| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:123| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:390| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:393| (- |$cond-alpha-rename:383| 1) |$cond-alpha-rename:383| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:383| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:123|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:398| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:400| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:415| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:422| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:415| 1) (|fail$unknown:4| |$cond-alpha-rename:417| 1) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:126| |$cond-alpha-rename:127|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:399| |$cond-alpha-rename:400|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:396| |$cond-alpha-rename:395| |$cond-alpha-rename:398|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:130| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:403| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:422| (- |$cond-alpha-rename:396| 1) |$cond-alpha-rename:396| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (and (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0))) (not (< |$cond-alpha-rename:396| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:131|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:447| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:126| |$cond-alpha-rename:127|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:428| |$cond-alpha-rename:429|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:425| |$cond-alpha-rename:424| |$cond-alpha-rename:427|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:130| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:432| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:447| (- |$cond-alpha-rename:425| 1) |$cond-alpha-rename:425| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (>= (+ 0 (- |$alpha-11:n_1031| 2)) 0) (> (+ 0 |$alpha-11:n_1031|) (+ 0 (- |$alpha-11:n_1031| 2))) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:425| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:131|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:454| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:460| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:126| |$cond-alpha-rename:127|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:453| |$cond-alpha-rename:454|) (|fib_without_checking_1060$unknown:15| |$cond-alpha-rename:450| |$cond-alpha-rename:449| |$cond-alpha-rename:452|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:130| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:131| (- |$alpha-11:n_1031| 2) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:457| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:460| (- |$cond-alpha-rename:450| 1) |$cond-alpha-rename:450| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (not (= 0 1))) (not (< |$alpha-11:n_1031| 2)) (not (< |$alpha-11:n_1031| 2)) (not (< |$cond-alpha-rename:450| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:16| (+ |$knormal:30| |$cond-alpha-rename:131|) |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:150| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:148| 1) (|fail$unknown:4| |$cond-alpha-rename:150| 1) (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:132| |$cond-alpha-rename:133|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:136| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (= 0 1)) (not (< |$V-reftype:25| 2)) (not (and (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (>= (+ 0 (- |$V-reftype:25| 2)) 0))) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:157| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:153| |$cond-alpha-rename:154|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:157| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (>= (+ 0 (- |$V-reftype:25| 2)) 0) (> (+ 0 |$V-reftype:25|) (+ 0 (- |$V-reftype:25| 2))) (not (= 0 1)) (not (< |$V-reftype:25| 2)) (not (< |$alpha-11:n_1031| 2)) )
      (|fib_without_checking_1060$unknown:15| (- |$V-reftype:25| 2) |$V-reftype:25| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-10:s_fib_n_1049| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_fib_1052| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:174| Int) (|$knormal:30| Int) )
    (=>
      ( and (|fib_without_checking_1060$unknown:15| |$V-reftype:25| |$cond-alpha-rename:170| |$cond-alpha-rename:171|) (|fib_without_checking_1060$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_fib_n_1049| |$alpha-9:set_flag_fib_1052|) (|fib_without_checking_1060$unknown:16| |$cond-alpha-rename:174| (- |$V-reftype:25| 1) |$V-reftype:25| 1) (|fib_without_checking_1060$unknown:16| |$knormal:30| (- |$alpha-11:n_1031| 1) |$alpha-11:n_1031| 1) (not (< |$V-reftype:25| 2)) (not (< |$alpha-11:n_1031| 2)) (not (not (= 0 1))) )
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

