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

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:14| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) )
    (=>
      ( and (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (> |$alpha-15:x_1032| 0) )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| (- |$alpha-15:x_1032| 1) |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) )
    (=>
      ( and (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| (- |$alpha-15:x_1032| 1) |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (> |$alpha-15:x_1032| 0) )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:36| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:36| 1) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28|) (|fail$unknown:11| |$cond-alpha-rename:33| 1) (not (= 0 |$V-reftype:21|)) (not (> |$cond-alpha-rename:30| 0)) (not (> |$alpha-15:x_1032| 0)) )
      (|f_1030$unknown:9| (+ |$V-reftype:25| 1) |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) )
    (=>
      ( and (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37|) (not (not (= 0 |$V-reftype:21|))) (not (> |$cond-alpha-rename:39| 0)) (not (> |$alpha-15:x_1032| 0)) )
      (|f_1030$unknown:9| (+ |$V-reftype:25| 1) |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:9| Int) )
    ( and (|f_1030$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:10| |$cond-alpha-rename:9| |$cond-alpha-rename:8|) (not (= 0 |$cond-alpha-rename:2|)) (not (> |$cond-alpha-rename:10| 0)) )
    )
  )
)
(assert
  (forall ( )
    (=>
      ( and true )
      (|f_1030$unknown:8| 2 0 0 1 0 0)
    )
  )
)
(check-sat)

(get-model)

