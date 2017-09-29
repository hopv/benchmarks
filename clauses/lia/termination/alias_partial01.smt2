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

(declare-fun |lambda_1031$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:19|
  ( Int ) Bool
)

(declare-fun |main_1035$unknown:26|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1035$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |main_1035$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |main_1035$unknown:23|
  ( Int ) Bool
)

(declare-fun |fail$unknown:17|
  ( Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:10|
  ( Int ) Bool
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

(declare-fun |f_1030$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:14|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:18|
  ( Int Int ) Bool
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

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
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
  (forall ( (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:10| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:11| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:16| |$knormal:15|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:17| 1) (= |$knormal:15| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|fail$unknown:18| |$knormal:18| |$knormal:17|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|bot$unknown:1| |$knormal:15|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:17| 1) (not (= 0 |$alpha-11:prev_set_flag_f_1088|)) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|fail$unknown:17| |$knormal:17|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:10| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:11| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (not (not (= 0 |$alpha-11:prev_set_flag_f_1088|))) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (= |$V-reftype:64| |$knormal:32|) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) (|f_1030$unknown:9| |$knormal:32| |$knormal:30| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:38| |$knormal:35| |$knormal:33|) )
      (|main_1035$unknown:26| |$V-reftype:64| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (not (= 0 |$knormal:3|))) (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:19| |$V-reftype:23|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:27| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|) (|f_without_checking_1098$unknown:15| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:34| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (not (= 0 |$knormal:3|))) (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:20| |$V-reftype:25| |$V-reftype:34|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (not (= 0 |$knormal:3|))) (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:21| |$V-reftype:27| |$V-reftype:36| |$V-reftype:34|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:39| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (not (= 0 |$knormal:3|))) (|lambda_1031$unknown:22| |$V-reftype:39| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:16| |$V-reftype:39| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:10| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:11| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= (not (= 0 |$knormal:3|)) (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not (= 0 |$knormal:3|)) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:12| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:17| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-3:set_flag_f_1089| Int) (|$alpha-4:s_f_x_1086| Int) (|$alpha-5:x_1033| Int) )
    (=>
      ( and (= |$V-reftype:53| (+ |$alpha-5:x_1033| 1)) (|lambda_1031$unknown:21| |$alpha-5:x_1033| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|) (|lambda_1031$unknown:20| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|) (|lambda_1031$unknown:19| |$alpha-3:set_flag_f_1089|) )
      (|lambda_1031$unknown:22| |$V-reftype:53| |$alpha-5:x_1033| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:6| |$alpha-16:set_flag_f_1089| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:7| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:30| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:8| |$knormal:30| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:3| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:4| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:33| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:5| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      (|main_1035$unknown:23| |$knormal:41|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      (|main_1035$unknown:24| |$knormal:43| |$knormal:41|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:43| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:46| 1) (= |$knormal:43| 0) (= |$knormal:41| 0) )
      (|main_1035$unknown:25| |$knormal:46| |$knormal:43| |$knormal:41|)
    )
  )
)
(check-sat)

(get-model)

(exit)

