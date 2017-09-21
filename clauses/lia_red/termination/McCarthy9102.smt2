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
  
     let main_1032 r =
       let set_flag_mc91_1050 = false in
       let s_mc91_n_1047 = 0 in
       mc91_without_checking_1058 set_flag_mc91_1050 s_mc91_n_1047 r
")

(set-logic HORN)

(declare-fun |mc91_without_checking_1058$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |main_1032$unknown:5|
  ( Int ) Bool
)

(declare-fun |mc91_without_checking_1058$unknown:17|
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
  (not (exists ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) )
    ( and (not (and (>= (+ 111 (- (+ |$cond-alpha-rename:2| 11))) 0) (> (+ 111 (- |$cond-alpha-rename:2|)) (+ 111 (- (+ |$cond-alpha-rename:2| 11)))))) (not (> |$cond-alpha-rename:2| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:2| |$cond-alpha-rename:76| |$cond-alpha-rename:77|) )
    )
  )
)
(assert
  (forall ( (|$alpha-14:r| Int) )
    (=>
      ( and (|main_1032$unknown:5| |$alpha-14:r|) )
      (|mc91_without_checking_1058$unknown:17| |$alpha-14:r| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:276| Int) (|$knormal:38| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:139| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:157| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:157| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:140|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:260| |$cond-alpha-rename:261|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:135| |$cond-alpha-rename:136|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:276| 1) (|fail$unknown:4| |$cond-alpha-rename:156| 1) (|bot$unknown:2| |$cond-alpha-rename:274| 1) (|bot$unknown:2| |$cond-alpha-rename:154| 1) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:280| Int) (|$knormal:38| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:139| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:157| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:157| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:139| |$cond-alpha-rename:138| |$cond-alpha-rename:140|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:279| |$cond-alpha-rename:280|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:135| |$cond-alpha-rename:136|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:156| 1) (|bot$unknown:2| |$cond-alpha-rename:154| 1) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:313| Int) (|$knormal:38| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:164| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:178| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:178| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:165|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:297| |$cond-alpha-rename:298|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:160| |$cond-alpha-rename:161|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:313| 1) (|bot$unknown:2| |$cond-alpha-rename:311| 1) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$knormal:38| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:164| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$cond-alpha-rename:178| |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:178| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:164| |$cond-alpha-rename:163| |$cond-alpha-rename:165|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:316| |$cond-alpha-rename:317|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:160| |$cond-alpha-rename:161|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:18| |$knormal:38| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:350| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:194| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:212| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:195|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:334| |$cond-alpha-rename:335|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:190| |$cond-alpha-rename:191|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:350| 1) (|fail$unknown:4| |$cond-alpha-rename:211| 1) (|bot$unknown:2| |$cond-alpha-rename:348| 1) (|bot$unknown:2| |$cond-alpha-rename:209| 1) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:212| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:209| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:354| Int) )
    (=>
      ( and (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (and (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))))) (not (> |$cond-alpha-rename:194| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:212| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:194| |$cond-alpha-rename:193| |$cond-alpha-rename:195|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:353| |$cond-alpha-rename:354|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:190| |$cond-alpha-rename:191|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:211| 1) (|bot$unknown:2| |$cond-alpha-rename:209| 1) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:212| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:387| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:219| 100)) (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0))) (not (> |$alpha-11:n_1031| 100)) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:233| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:220|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:371| |$cond-alpha-rename:372|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:215| |$cond-alpha-rename:216|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|fail$unknown:4| |$cond-alpha-rename:387| 1) (|bot$unknown:2| |$cond-alpha-rename:385| 1) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:233| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:391| Int) )
    (=>
      ( and (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (= (+ |$alpha-11:n_1031| 11) (+ |$alpha-11:n_1031| 11)) (= 1 1) (not (> |$cond-alpha-rename:219| 100)) (not (> |$alpha-11:n_1031| 100)) (not (> |$alpha-11:n_1031| 100)) (> (+ 111 (- |$alpha-11:n_1031|)) (+ 111 (- (+ |$alpha-11:n_1031| 11)))) (>= (+ 111 (- (+ |$alpha-11:n_1031| 11))) 0) (|mc91_without_checking_1058$unknown:18| |$cond-alpha-rename:233| (+ |$alpha-11:n_1031| 11) |$alpha-11:n_1031| 1) (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:220|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:390| |$cond-alpha-rename:391|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$cond-alpha-rename:215| |$cond-alpha-rename:216|) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) )
      (|mc91_without_checking_1058$unknown:17| |$cond-alpha-rename:233| |$alpha-11:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:409| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:424| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (and (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0))) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:408| |$cond-alpha-rename:409|) (|fail$unknown:4| |$cond-alpha-rename:424| 1) (|bot$unknown:2| |$cond-alpha-rename:422| 1) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:428| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (> |$V-reftype:28| 100)) (not (= 0 1)) (> (+ 111 (- |$V-reftype:28|)) (+ 111 (- (+ |$V-reftype:28| 11)))) (>= (+ 111 (- (+ |$V-reftype:28| 11))) 0) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:427| |$cond-alpha-rename:428|) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:443| Int) )
    (=>
      ( and (not (> |$alpha-11:n_1031| 100)) (not (not (= 0 1))) (not (> |$V-reftype:28| 100)) (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (|mc91_without_checking_1058$unknown:17| |$V-reftype:28| |$cond-alpha-rename:442| |$cond-alpha-rename:443|) )
      (|mc91_without_checking_1058$unknown:17| (+ |$V-reftype:28| 11) |$V-reftype:28| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_mc91_n_1047| Int) (|$alpha-11:n_1031| Int) (|$alpha-9:set_flag_mc91_1050| Int) )
    (=>
      ( and (|mc91_without_checking_1058$unknown:17| |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|) (> |$alpha-11:n_1031| 100) )
      (|mc91_without_checking_1058$unknown:18| (- |$alpha-11:n_1031| 10) |$alpha-11:n_1031| |$alpha-10:s_mc91_n_1047| |$alpha-9:set_flag_mc91_1050|)
    )
  )
)
(check-sat)

(get-model)

