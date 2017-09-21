(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec lambda_without_checking_1078 set_flag_lambda_1063 s_lambda_x_1060 x_1033 =
       let set_flag_lambda_1063 = true
       in
       let s_lambda_x_1060 = x_1033
       in
         x_1033 + 1
  
     let rec lambda_1031 prev_set_flag_lambda_1062 s_prev_lambda_x_1061 x_1033 =
       let u = if prev_set_flag_lambda_1062 then
                let u_1175 = fail ()
                in
                  bot()
               else () in
              lambda_without_checking_1078 prev_set_flag_lambda_1062
                s_prev_lambda_x_1061 x_1033
  
     let rec f_1030 set_flag_lambda_1063 s_lambda_x_1060 x_1032 =
       if x_1032 > 0 then
         f_1030 set_flag_lambda_1063 s_lambda_x_1060 (x_1032 - 1)
       else
         lambda_1031
  
     let g_1034 = f_1030 false 0 1
  
     let main_1035 set_flag_lambda_1063 s_lambda_x_1060 u_1036 =
       g_1034 set_flag_lambda_1063 s_lambda_x_1060 2
  
     let main =
       main_1035 false 0 ()
")

(set-logic HORN)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:15|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_1030$unknown:8|
  ( Int Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (> |$cond-alpha-rename:16| 0)) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|fail$unknown:11| |$knormal:11| 1) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|bot$unknown:2| |$knormal:9| 1) )
      (|lambda_1031$unknown:15| (+ |$alpha-10:x_1033| 1) |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:14| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) )
    (=>
      ( and (> |$alpha-15:x_1032| 0) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| (- |$alpha-15:x_1032| 1) |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) )
    (=>
      ( and (> |$alpha-15:x_1032| 0) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-15:x_1032| 1) |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) )
    (=>
      ( and (not (> |$alpha-15:x_1032| 0)) (|lambda_1031$unknown:15| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:3| Int) )
    ( and (|f_1030$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18|) (not (= 0 |$cond-alpha-rename:2|)) (not (> |$cond-alpha-rename:20| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) )
    (=>
      ( and (not (> |$cond-alpha-rename:24| 0)) (not (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|))) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$cond-alpha-rename:22|) )
      (|lambda_1031$unknown:15| (+ |$alpha-10:x_1033| 1) |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|f_1030$unknown:8| 2 0 0 1 0 0)
    )
  )
)
(check-sat)

(get-model)

