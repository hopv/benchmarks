(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let lambda_1031 set_flag_f_1089 s_f_x_1086 x_1033 = x_1033 + 1
  
     let rec f_1030 f_without_checking_1098 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032 =
       let u =
       if prev_set_flag_f_1088 then
                if (0 * 1) + (1 * s_prev_f_x_1087) > (0 * 1) + (1 * x_1032) &&
                   (0 * 1) + (1 * x_1032) >= 0 then
                  ()
                else
                  let u_4274 = fail ()
                  in
                    bot()
       else
         ()
           in
              f_without_checking_1098 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032
  
     let rec f_without_checking_1098 set_flag_f_1089 s_f_x_1086 x_1032 =
       let set_flag_f_1089 = true
       in
       let s_f_x_1086 = x_1032
       in
         if x_1032 > 0 then
           f_1030 f_without_checking_1098 set_flag_f_1089 s_f_x_1086 (x_1032 - 1)
         else
           lambda_1031
  
     let g_1034 = f_without_checking_1098 false 0 1
  
     let main_1035 set_flag_f_1089 s_f_x_1086 u_1036 =
       g_1034 set_flag_f_1089 s_f_x_1086 2
  
  let main =
       main_1035 false 0 ()
")

(set-logic HORN)

(declare-fun |f_1030$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:23|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:5|
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:54| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$alpha-8:s_prev_f_x_1087| 0) (not (and (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)))) (> |$cond-alpha-rename:54| 0) (|fail$unknown:25| |$knormal:23| 1) (|f_without_checking_1098$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|f_1030$unknown:5| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|bot$unknown:2| |$knormal:21| 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:5| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:21| 1) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:5| |$cond-alpha-rename:4|) (|fail$unknown:25| |$knormal:23| 1) (not (= 0 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (not (and (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0))) )
      (|f_1030$unknown:5| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (> |$alpha-8:s_prev_f_x_1087| (- |$alpha-8:s_prev_f_x_1087| 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (- |$alpha-8:s_prev_f_x_1087| 1) 0) (> |$cond-alpha-rename:59| 0) (|f_without_checking_1098$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$cond-alpha-rename:57|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_1030$unknown:5| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) )
    (=>
      ( and (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:14| |$cond-alpha-rename:13|) (not (= 0 1)) (> |$alpha-8:s_prev_f_x_1087| 0) (>= (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1)) 0) (> (+ 0 |$alpha-8:s_prev_f_x_1087|) (+ 0 (- |$alpha-8:s_prev_f_x_1087| 1))) )
      (|f_1030$unknown:5| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) )
    (=>
      ( and (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:20| |$cond-alpha-rename:19|) (> |$alpha-8:s_prev_f_x_1087| 0) (not (not (= 0 1))) )
      (|f_1030$unknown:5| (- |$alpha-8:s_prev_f_x_1087| 1) |$alpha-8:s_prev_f_x_1087| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:30| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) )
    (=>
      ( and (|f_1030$unknown:16| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| (- |$alpha-14:x_1032| 1) |$alpha-14:x_1032| 1) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (> |$alpha-14:x_1032| 0) )
      (|f_without_checking_1098$unknown:23| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:8| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (|f_1030$unknown:5| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (> |$alpha-14:x_1032| 0) )
      (|f_without_checking_1098$unknown:19| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) )
    (=>
      ( and (not (> |$alpha-14:x_1032| 0)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:23| (+ |$V-reftype:52| 1) |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) )
    ( and (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:92| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (not (= 0 1)) (> |$cond-alpha-rename:92| 0) (not (and (> (+ 0 |$cond-alpha-rename:92|) (+ 0 (- |$cond-alpha-rename:92| 1))) (>= (+ 0 (- |$cond-alpha-rename:92| 1)) 0))) )
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_without_checking_1098$unknown:19| 1 0 0)
    )
  )
)
(check-sat)

(get-model)

