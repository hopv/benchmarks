(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 n_1031 =
       let set_flag_mc91_1050 = true
       in
       let s_mc91_n_1047 = n_1031
       in
         if n_1031 > 100 then
           n_1031 - 10
         else
           mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
             (mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
               (n_1031 + 11))
  
     let rec mc91_1030 prev_set_flag_mc91_1049 s_prev_mc91_n_1048 n_1031 =
       let u = if prev_set_flag_mc91_1049 then
                if (111 * 1) + (-s_prev_mc91_n_1048) > (111 * 1) + (-n_1031) &&
                   (111 * 1) + (-n_1031) >= 0 then
                  ()
                else
                  let u_1771 = fail ()
                  in
                    bot()
               else () in
              mc91_without_checking_1058 prev_set_flag_mc91_1049
                s_prev_mc91_n_1048 n_1031
  
     let main_1032 r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_1030 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |mc91_without_checking_1058$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
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
  (not (exists ( (|$cond-alpha-rename:1| Int) )
    ( and (|main_1032$unknown:5| |$cond-alpha-rename:1|) (not (= 0 0)) (not (and (>= (+ 111 (- |$cond-alpha-rename:1|)) 0) (> (+ 111 (- 0)) (+ 111 (- |$cond-alpha-rename:1|))))) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) (|$knormal:15| Int) (|$knormal:9| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:14| |$knormal:15| |$knormal:9| |$alpha-5:n_1031| 1) (|mc91_without_checking_1058$unknown:14| |$knormal:9| (+ |$alpha-5:n_1031| 11) |$alpha-5:n_1031| 1) (not (> |$alpha-5:n_1031| 100)) )
      (|mc91_without_checking_1058$unknown:14| |$knormal:15| |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:set_flag_mc91_1050| Int) (|$alpha-4:s_mc91_n_1047| Int) (|$alpha-5:n_1031| Int) )
    (=>
      ( and (> |$alpha-5:n_1031| 100) )
      (|mc91_without_checking_1058$unknown:14| (- |$alpha-5:n_1031| 10) |$alpha-5:n_1031| |$alpha-4:s_mc91_n_1047| |$alpha-3:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

(exit)

