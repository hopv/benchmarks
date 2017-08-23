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

(declare-fun |main_1035$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |main_1035$unknown:20|
  ( Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f_1030$unknown:3|
  ( Int ) Bool
)

(declare-fun |lambda_without_checking_1078$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |lambda_without_checking_1078$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |lambda_without_checking_1078$unknown:16|
  ( Int ) Bool
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

(declare-fun |lambda_1031$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:12|
  ( Int ) Bool
)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:45| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (= |$V-reftype:45| |$knormal:2|) (= |$knormal:1| 1) )
      (|bot$unknown:2| |$V-reftype:45| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (|bot$unknown:1| |$alpha-1:$$tmp::1|) (= |$knormal:1| 1) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-10:x_1033| Int) (|$V-reftype:51| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| |$knormal:8|) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_without_checking_1078$unknown:19| |$knormal:7| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$V-reftype:51| |$knormal:7|) (= |$knormal:10| 1) (= |$knormal:8| 1) )
      (|lambda_1031$unknown:15| |$V-reftype:51| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:11| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| |$knormal:8|) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$knormal:10| 1) (= |$knormal:8| 1) )
      (|lambda_without_checking_1078$unknown:16| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$knormal:11| Int) (|$knormal:9| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-10:x_1033| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| |$knormal:8|) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$knormal:10| 1) (= |$knormal:8| 1) )
      (|lambda_without_checking_1078$unknown:17| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:11| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:9| |$knormal:8|) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$knormal:10| 1) (= |$knormal:8| 1) )
      (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$V-reftype:10| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:6| |$V-reftype:10| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$V-reftype:10| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (not |$knormal:12|) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) )
      (|lambda_1031$unknown:12| |$V-reftype:10|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:12| Int) (|$V-reftype:11| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$V-reftype:14| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:16| Int) (|$V-reftype:15| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$V-reftype:21| Int) (|$V-reftype:12| Int) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (not |$knormal:12|) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) )
      (|lambda_1031$unknown:13| |$V-reftype:12| |$V-reftype:21|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$V-reftype:14| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (not |$knormal:12|) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) )
      (|lambda_1031$unknown:14| |$V-reftype:14| |$V-reftype:23| |$V-reftype:21|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|lambda_1031$unknown:15| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21|) (not |$knormal:12|) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$knormal:16| Int) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:12| Bool) )
    (=>
      ( and (|f_1030$unknown:3| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:4| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) |$knormal:12| (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$knormal:16| (- |$alpha-15:x_1032| 1)) )
      (|f_1030$unknown:5| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:38| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:32| Int) (|$knormal:30| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$knormal:35| Int) (|$V-reftype:60| Int) )
    (=>
      ( and (|f_1030$unknown:9| |$knormal:32| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|) (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$V-reftype:60| |$knormal:32|) (= |$knormal:30| 2) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
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
  (forall ( (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$knormal:8| Int) )
    (=>
      ( and (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$knormal:10| 1) (= |$knormal:8| 1) )
      (|bot$unknown:1| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:u| Int) (|$V-reftype:53| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$knormal:7| Int) )
    (=>
      ( and (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_without_checking_1078$unknown:19| |$knormal:7| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (= |$V-reftype:53| |$knormal:7|) (= |$alpha-12:u| 1) )
      (|lambda_1031$unknown:15| |$V-reftype:53| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-10:x_1033| Int) (|$knormal:10| Int) )
    (=>
      ( and (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (= |$knormal:10| 1) )
      (|fail$unknown:10| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) )
    (=>
      ( and (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (= |$alpha-12:u| 1) )
      (|lambda_without_checking_1078$unknown:16| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:u| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) )
    (=>
      ( and (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (= |$alpha-12:u| 1) )
      (|lambda_without_checking_1078$unknown:17| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-10:x_1033| Int) (|$alpha-12:u| Int) )
    (=>
      ( and (|lambda_1031$unknown:12| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:13| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|lambda_1031$unknown:14| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (= |$alpha-12:u| 1) )
      (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_lambda_1063| Int) (|$V-reftype:48| Int) (|$alpha-3:set_flag_lambda_1063| Int) (|$alpha-4:s_lambda_x_1060| Int) (|$alpha-5:x_1033| Int) )
    (=>
      ( and (|lambda_without_checking_1078$unknown:16| |$alpha-3:set_flag_lambda_1063|) (|lambda_without_checking_1078$unknown:17| |$alpha-4:s_lambda_x_1060| |$alpha-3:set_flag_lambda_1063|) (|lambda_without_checking_1078$unknown:18| |$alpha-5:x_1033| |$alpha-4:s_lambda_x_1060| |$alpha-3:set_flag_lambda_1063|) (= |$V-reftype:48| (+ |$alpha-5:x_1033| 1)) (= |$alpha-6:set_flag_lambda_1063| 1) )
      (|lambda_without_checking_1078$unknown:19| |$V-reftype:48| |$alpha-5:x_1033| |$alpha-4:s_lambda_x_1060| |$alpha-3:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$knormal:30| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:30| 2) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:6| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$knormal:30| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:30| 2) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:7| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$knormal:30| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:30| 2) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:8| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:3| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-18:u_1036| Int) (|$knormal:35| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:4| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (|main_1035$unknown:20| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:21| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (|main_1035$unknown:22| |$alpha-18:u_1036| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063|) (= |$knormal:33| 0) (= |$knormal:35| 0) (= |$knormal:38| 1) )
      (|f_1030$unknown:5| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:41| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:41| 0) (= |$knormal:43| 0) (= |$knormal:46| 1) )
      (|main_1035$unknown:20| |$knormal:41|)
    )
  )
)
(assert
  (forall ( (|$knormal:46| Int) (|$knormal:41| Int) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:41| 0) (= |$knormal:43| 0) (= |$knormal:46| 1) )
      (|main_1035$unknown:21| |$knormal:43| |$knormal:41|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$knormal:41| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:41| 0) (= |$knormal:43| 0) (= |$knormal:46| 1) )
      (|main_1035$unknown:22| |$knormal:46| |$knormal:43| |$knormal:41|)
    )
  )
)
(check-sat)

