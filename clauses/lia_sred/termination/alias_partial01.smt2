(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let rec lambda_1031 set_flag_f_1089 s_f_x_1086 x_1033 = x_1033 + 1
  
     let rec f_without_checking_1098 set_flag_f_1089 s_f_x_1086 x_1032 =
       let set_flag_f_1089 = true
       in
       let s_f_x_1086 = x_1032
       in
         if x_1032 > 0 then
           f_without_checking_1098 set_flag_f_1089 s_f_x_1086 (x_1032 - 1)
         else
           lambda_1031
  
     let rec f_1030 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032 =
       let u = if prev_set_flag_f_1088 then
                let u_2286 = fail ()
                in
                  bot()
               else () in
              f_without_checking_1098 prev_set_flag_f_1088 s_prev_f_x_1087 x_1032
  
     let g_1034 = f_1030 false 0 1
  
     let main_1035 set_flag_f_1089 s_f_x_1086 u_1036 =
       g_1034 set_flag_f_1089 s_f_x_1086 2
  
  let main =
       main_1035 false 0 ()
")

(set-logic HORN)

(declare-fun |f_without_checking_1098$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:15|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:14|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:51| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:51| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:51| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:1| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:10| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:40| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:41| 1) (= |$cond-alpha-rename:40| 0) (= |$cond-alpha-rename:3| 1) (= |$cond-alpha-rename:2| 0) (= |$cond-alpha-rename:1| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:10| 0) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:4| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:18| Int) (|$knormal:16| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$V-reftype:12| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:6| 1) (= |$cond-alpha-rename:56| 1) (= |$cond-alpha-rename:5| 0) (= |$cond-alpha-rename:43| 1) (= |$cond-alpha-rename:42| 0) (= |$cond-alpha-rename:4| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:24| 0) (= |$V-reftype:12| 0) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:44| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:26| Int) (|$V-reftype:14| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:9| 1) (= |$cond-alpha-rename:8| 0) (= |$cond-alpha-rename:7| 0) (= |$cond-alpha-rename:62| 1) (= |$cond-alpha-rename:57| 1) (= |$cond-alpha-rename:45| 1) (= |$cond-alpha-rename:44| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$V-reftype:14| 2) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:11| Int) (|$knormal:18| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$V-reftype:28| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$V-reftype:29| Int) (|$V-reftype:26| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:17| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:63| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:63| 1) (= |$cond-alpha-rename:58| 1) (= |$cond-alpha-rename:47| 1) (= |$cond-alpha-rename:46| 0) (= |$cond-alpha-rename:12| 1) (= |$cond-alpha-rename:11| 0) (= |$cond-alpha-rename:10| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:28| 2) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$alpha-13:x_1032| Int) (|$knormal:17| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:15| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:15| 1) (= |$cond-alpha-rename:14| 0) (= |$cond-alpha-rename:13| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:16| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:48| Int) )
    (=>
      ( and (= |$cond-alpha-rename:49| 1) (= |$cond-alpha-rename:48| 0) (= |$cond-alpha-rename:18| 1) (= |$cond-alpha-rename:17| 0) (= |$cond-alpha-rename:16| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:10| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:19| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:12| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:59| Int) )
    (=>
      ( and (= |$cond-alpha-rename:59| 1) (= |$cond-alpha-rename:51| 1) (= |$cond-alpha-rename:50| 0) (= |$cond-alpha-rename:21| 1) (= |$cond-alpha-rename:20| 0) (= |$cond-alpha-rename:19| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:24| 0) (= |$V-reftype:12| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:22| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:26| Int) (|$V-reftype:14| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:60| Int) )
    (=>
      ( and (= |$cond-alpha-rename:64| 1) (= |$cond-alpha-rename:60| 1) (= |$cond-alpha-rename:53| 1) (= |$cond-alpha-rename:52| 0) (= |$cond-alpha-rename:24| 1) (= |$cond-alpha-rename:23| 0) (= |$cond-alpha-rename:22| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$V-reftype:14| 2) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:26| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$V-reftype:26| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:65| Int) )
    (=>
      ( and (= |$cond-alpha-rename:65| 1) (= |$cond-alpha-rename:61| 1) (= |$cond-alpha-rename:55| 1) (= |$cond-alpha-rename:54| 0) (= |$cond-alpha-rename:27| 1) (= |$cond-alpha-rename:26| 0) (= |$cond-alpha-rename:25| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:28| 2) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$cond-alpha-rename:29| Int) (|$alpha-13:x_1032| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:30| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (= |$cond-alpha-rename:30| 1) (= |$cond-alpha-rename:29| 0) (= |$cond-alpha-rename:28| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) )
      (|bot$unknown:1| |$knormal:15|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:35| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:36| Int) )
    (=>
      ( and (= |$cond-alpha-rename:36| 1) (= |$cond-alpha-rename:35| 0) (= |$cond-alpha-rename:34| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$V-reftype:23| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:27| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$knormal:7| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|) (|f_without_checking_1098$unknown:15| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$cond-alpha-rename:99| Bool) (|$cond-alpha-rename:103| Bool) (|$V-reftype:38| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:102| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-6:set_flag_f_1089| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:97| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$cond-alpha-rename:107| Bool) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$cond-alpha-rename:99| (> |$cond-alpha-rename:98| 0)) (= |$cond-alpha-rename:107| (> |$cond-alpha-rename:106| 0)) (= |$cond-alpha-rename:103| (> |$cond-alpha-rename:102| 0)) (= |$V-reftype:39| (+ |$V-reftype:38| 1)) (not |$knormal:3|) (not |$cond-alpha-rename:99|) (not |$cond-alpha-rename:107|) (not |$cond-alpha-rename:103|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$cond-alpha-rename:96|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:16| |$V-reftype:39| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:12| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(check-sat)

(get-model)

