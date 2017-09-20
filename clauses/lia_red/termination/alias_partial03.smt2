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

(declare-fun |f_without_checking_1098$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:170| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:168| 1) (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:155| |$cond-alpha-rename:154|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|fail$unknown:25| |$cond-alpha-rename:170| 1) (> |$V-reftype:34| 0) (> |$alpha-14:x_1032| 0) (not (= 0 1)) (not (and (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (>= (+ 0 (- |$V-reftype:34| 1)) 0))) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:174| Int) )
    (=>
      ( and (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:174| |$cond-alpha-rename:173|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (> |$V-reftype:34| 0) (>= (+ 0 (- |$V-reftype:34| 1)) 0) (> (+ 0 |$V-reftype:34|) (+ 0 (- |$V-reftype:34| 1))) (> |$alpha-14:x_1032| 0) (not (= 0 1)) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) )
    (=>
      ( and (|f_without_checking_1098$unknown:19| |$V-reftype:34| |$cond-alpha-rename:189| |$cond-alpha-rename:188|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (> |$V-reftype:34| 0) (> |$alpha-14:x_1032| 0) (not (not (= 0 1))) )
      (|f_without_checking_1098$unknown:19| (- |$V-reftype:34| 1) |$V-reftype:34| 1)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:4827| Int) (|$cond-alpha-rename:4829| Int) (|$cond-alpha-rename:4830| Int) )
    ( and (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:4827| |$cond-alpha-rename:4830| |$cond-alpha-rename:4829|) (not (= 0 1)) (> |$cond-alpha-rename:4827| 0) (not (and (> (+ 0 |$cond-alpha-rename:4827|) (+ 0 (- |$cond-alpha-rename:4827| 1))) (>= (+ 0 (- |$cond-alpha-rename:4827| 1)) 0))) )
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|f_without_checking_1098$unknown:19| 1 0 0)
    )
  )
)
(check-sat)

(get-model)

