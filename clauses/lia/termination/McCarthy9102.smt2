(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec mc91_1030 mc91_without_checking_1058 prev_set_flag_mc91_1049 s_prev_mc91_n_1048 n_1031 =
       let u = if prev_set_flag_mc91_1049 then
                if (111 * 1) + (-s_prev_mc91_n_1048) > (111 * 1) + (-n_1031) &&
                   (111 * 1) + (-n_1031) >= 0 then
                  ()
                else
                  let u_2195 = fail ()
                  in
                    bot()
       else () in
              mc91_without_checking_1058 prev_set_flag_mc91_1049
                s_prev_mc91_n_1048 n_1031
  
  
     let rec mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 n_1031 =
       let set_flag_mc91_1050 = true
       in
       let s_mc91_n_1047 = n_1031
       in
         if n_1031 > 100 then
           n_1031 - 10
         else
           mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047
             (mc91_1030 mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 (n_1031 + 11))
  
     let main r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |mc91_without_checking_1058$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:15|
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) )
    ( and (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:2| |$cond-alpha-rename:30| |$cond-alpha-rename:31|) (not (= 0 1)) (not (> |$cond-alpha-rename:2| 100)) (not (and (>= (+ 111 (- (+ |$cond-alpha-rename:2| 11))) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- (+ |$cond-alpha-rename:2| 11)))))) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:280| Int) (|$knormal:38| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:140| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$cond-alpha-rename:161| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:161| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:141|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:264| |$cond-alpha-rename:265|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:144| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:280| 1) (|fail$unknown:4| |$cond-alpha-rename:160| 1) (|bot$unknown:2| |$cond-alpha-rename:278| 1) (|bot$unknown:2| |$cond-alpha-rename:158| 1) )
      (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:284| Int) (|$knormal:38| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:140| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$cond-alpha-rename:161| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:161| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:140| |$cond-alpha-rename:139| |$cond-alpha-rename:141|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:283| |$cond-alpha-rename:284|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:144| |$cond-alpha-rename:145|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:160| 1) (|bot$unknown:2| |$cond-alpha-rename:158| 1) )
      (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:317| Int) (|$knormal:38| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:165| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$cond-alpha-rename:182| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:182| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:166|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:301| |$cond-alpha-rename:302|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:169| |$cond-alpha-rename:170|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:317| 1) (|bot$unknown:2| |$cond-alpha-rename:315| 1) )
      (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) (|$knormal:38| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:165| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$cond-alpha-rename:182| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:182| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:165| |$cond-alpha-rename:164| |$cond-alpha-rename:166|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:320| |$cond-alpha-rename:321|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:169| |$cond-alpha-rename:170|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:354| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:195| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:216| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:195| |$cond-alpha-rename:194| |$cond-alpha-rename:196|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:338| |$cond-alpha-rename:339|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:199| |$cond-alpha-rename:200|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:354| 1) (|fail$unknown:4| |$cond-alpha-rename:215| 1) (|bot$unknown:2| |$cond-alpha-rename:352| 1) (|bot$unknown:2| |$cond-alpha-rename:213| 1) )
      (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:216| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:358| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:195| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:216| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:195| |$cond-alpha-rename:194| |$cond-alpha-rename:196|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:357| |$cond-alpha-rename:358|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:199| |$cond-alpha-rename:200|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:215| 1) (|bot$unknown:2| |$cond-alpha-rename:213| 1) )
      (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:216| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:391| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:220| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:237| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:221|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:375| |$cond-alpha-rename:376|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:224| |$cond-alpha-rename:225|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:391| 1) (|bot$unknown:2| |$cond-alpha-rename:389| 1) )
      (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:237| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:395| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:220| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:16| |$cond-alpha-rename:237| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:221|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:394| |$cond-alpha-rename:395|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$cond-alpha-rename:224| |$cond-alpha-rename:225|) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:15| |$cond-alpha-rename:237| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:426| Int) (|$cond-alpha-rename:428| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0))) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:412| |$cond-alpha-rename:413|) (|fail$unknown:4| |$cond-alpha-rename:428| 1) (|bot$unknown:2| |$cond-alpha-rename:426| 1) )
      (|mc91_without_checking_1058$unknown:15| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:431| |$cond-alpha-rename:432|) )
      (|mc91_without_checking_1058$unknown:15| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) (not (> |$V-reftype:28| 100)) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:15| |$V-reftype:28| |$cond-alpha-rename:446| |$cond-alpha-rename:447|) )
      (|mc91_without_checking_1058$unknown:15| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (> |$alpha-11:n_1031| 100) (|mc91_without_checking_1058$unknown:15| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:16| (- |$alpha-11:n_1031| 10) |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and true )
      (|mc91_without_checking_1058$unknown:15| |$alpha-14:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

