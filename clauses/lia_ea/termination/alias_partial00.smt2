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

(declare-fun |fail$unknown:10|
  ( Int ) Bool
)

(declare-fun |main_1035$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1035$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:15|
  ( Int Int Int Int ) Bool
)

(declare-fun |lambda_without_checking_1078$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:45| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:45| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$V-reftype:51| |$knormal:7|) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_without_checking_1078$unknown:19| |$knormal:7| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|lambda_1031$unknown:15| |$V-reftype:51| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (not (= 0 |$knormal:12|))) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:14| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true true true true )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true true true true )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (not (= 0 |$knormal:12|))) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (not (= 0 |$knormal:12|))) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true true true true )
      (|lambda_1031$unknown:14| |$V-reftype:14| |$V-reftype:23| |$V-reftype:21|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (not (= 0 |$knormal:12|))) (|lambda_1031$unknown:15| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true true true true )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$knormal:12| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= (not (= 0 |$knormal:12|)) (> |$alpha-15:x_1032| 0)) (not (= 0 |$knormal:12|)) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (= |$V-reftype:60| |$knormal:32|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true (|f_1030$unknown:9| |$knormal:32| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|) )
      (|main_1035$unknown:23| |$V-reftype:60| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:10| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true (|fail$unknown:11| |$knormal:11| |$knormal:10|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (= |$V-reftype:53| |$knormal:7|) (not (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|))) (|lambda_without_checking_1078$unknown:19| |$knormal:7| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true )
      (|lambda_1031$unknown:15| |$V-reftype:53| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 1) (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|)) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true )
      (|fail$unknown:10| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|))) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|))) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) )
    (=>
      ( and (= |$alpha-12:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_lambda_1062|))) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-3:set_flag_lambda_1063| Int) (|$alpha-4:s_lambda_x_1060| Int) (|$alpha-5:x_1033| Int) (|$alpha-6:set_flag_lambda_1063| Int) )
    (=>
      ( and (= |$alpha-6:set_flag_lambda_1063| 1) (= |$V-reftype:48| (+ |$alpha-5:x_1033| 1)) true true true )
      (|lambda_without_checking_1078$unknown:19| |$V-reftype:48| |$alpha-5:x_1033| |$alpha-4:s_lambda_x_1060| |$alpha-3:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:8| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      (|main_1035$unknown:22| |$knormal:46| |$knormal:43| |$knormal:41|)
    )
  )
)
(check-sat)

(get-model)

(exit)

