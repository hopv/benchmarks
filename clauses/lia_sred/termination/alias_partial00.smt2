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

(declare-fun |lambda_without_checking_1078$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
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

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:45| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:45| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:45| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:35| Bool) (|$knormal:11| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:33| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:60| Int) (|$knormal:10| Int) (|$cond-alpha-rename:63| Bool) (|$V-reftype:51| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:7| (+ |$alpha-10:x_1033| 1)) (= |$knormal:10| 1) (= |$cond-alpha-rename:7| (> |$cond-alpha-rename:6| 0)) (= |$cond-alpha-rename:63| (> |$cond-alpha-rename:62| 0)) (= |$cond-alpha-rename:35| (> |$cond-alpha-rename:34| 0)) (= |$V-reftype:51| |$knormal:7|) (not |$cond-alpha-rename:7|) (not |$cond-alpha-rename:63|) (not |$cond-alpha-rename:35|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:6| |$cond-alpha-rename:5| |$cond-alpha-rename:4|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32|) (|f_1030$unknown:5| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:5| |$cond-alpha-rename:6| |$cond-alpha-rename:5| |$cond-alpha-rename:4|) (|f_1030$unknown:5| |$cond-alpha-rename:34| |$cond-alpha-rename:33| |$cond-alpha-rename:32|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|lambda_1031$unknown:15| |$V-reftype:51| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:39| Bool) (|$knormal:11| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:9| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:64| Int) (|$knormal:10| Int) (|$cond-alpha-rename:11| Bool) (|$cond-alpha-rename:67| Bool) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$cond-alpha-rename:67| (> |$cond-alpha-rename:66| 0)) (= |$cond-alpha-rename:39| (> |$cond-alpha-rename:38| 0)) (= |$cond-alpha-rename:11| (> |$cond-alpha-rename:10| 0)) (not |$cond-alpha-rename:67|) (not |$cond-alpha-rename:39|) (not |$cond-alpha-rename:11|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:10| |$cond-alpha-rename:9| |$cond-alpha-rename:8|) (|f_1030$unknown:5| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_1030$unknown:5| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (|f_1030$unknown:5| |$cond-alpha-rename:10| |$cond-alpha-rename:9| |$cond-alpha-rename:8|) (|bot$unknown:2| |$knormal:9| |$knormal:8|) )
      (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$V-reftype:10| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:6| |$V-reftype:10| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:6| |$V-reftype:10| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:12| Int) (|$V-reftype:11| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$V-reftype:14| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:16| Int) (|$V-reftype:15| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$V-reftype:25| Int) (|$V-reftype:26| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (not |$knormal:12|) (|lambda_1031$unknown:15| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:5| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:43| Bool) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:71| Bool) )
    ( and (= |$cond-alpha-rename:71| (> |$cond-alpha-rename:70| 0)) (= |$cond-alpha-rename:43| (> |$cond-alpha-rename:42| 0)) (= |$cond-alpha-rename:15| (> |$cond-alpha-rename:14| 0)) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:71|) (not |$cond-alpha-rename:43|) (not |$cond-alpha-rename:15|) (not (= |$cond-alpha-rename:2| 0)) (|f_1030$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) (|f_1030$unknown:7| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) (|f_1030$unknown:7| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |$cond-alpha-rename:12|) (|f_1030$unknown:5| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) (|f_1030$unknown:5| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40|) (|f_1030$unknown:5| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |$cond-alpha-rename:12|) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:47| Bool) (|$knormal:11| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:72| Int) (|$knormal:10| Int) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:75| Bool) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$cond-alpha-rename:75| (> |$cond-alpha-rename:74| 0)) (= |$cond-alpha-rename:47| (> |$cond-alpha-rename:46| 0)) (= |$cond-alpha-rename:19| (> |$cond-alpha-rename:18| 0)) (not |$cond-alpha-rename:75|) (not |$cond-alpha-rename:47|) (not |$cond-alpha-rename:19|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) (|f_1030$unknown:5| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72|) (|f_1030$unknown:5| |$cond-alpha-rename:46| |$cond-alpha-rename:45| |$cond-alpha-rename:44|) (|f_1030$unknown:5| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) )
      (|bot$unknown:1| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:23| Bool) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:51| Bool) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$alpha-10:x_1033| 1)) (= |$cond-alpha-rename:79| (> |$cond-alpha-rename:78| 0)) (= |$cond-alpha-rename:51| (> |$cond-alpha-rename:50| 0)) (= |$cond-alpha-rename:23| (> |$cond-alpha-rename:22| 0)) (= |$V-reftype:53| |$knormal:7|) (not |$cond-alpha-rename:79|) (not |$cond-alpha-rename:51|) (not |$cond-alpha-rename:23|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$cond-alpha-rename:48|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$cond-alpha-rename:48|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) (|f_1030$unknown:5| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_1030$unknown:5| |$cond-alpha-rename:50| |$cond-alpha-rename:49| |$cond-alpha-rename:48|) (|f_1030$unknown:5| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) )
      (|lambda_1031$unknown:15| |$V-reftype:53| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:55| Bool) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:27| Bool) (|$cond-alpha-rename:83| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:83| (> |$cond-alpha-rename:82| 0)) (= |$cond-alpha-rename:55| (> |$cond-alpha-rename:54| 0)) (= |$cond-alpha-rename:27| (> |$cond-alpha-rename:26| 0)) (not |$cond-alpha-rename:83|) (not |$cond-alpha-rename:55|) (not |$cond-alpha-rename:27|) (= |$alpha-8:prev_set_flag_lambda_1062| 0) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|f_1030$unknown:5| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$cond-alpha-rename:80|) (|f_1030$unknown:5| |$cond-alpha-rename:54| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_1030$unknown:5| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) )
      (|lambda_without_checking_1078$unknown:18| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-18:u_1036| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:6| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:7| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:30| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:8| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:5| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(check-sat)

(get-model)

