(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  
     let lambda_1031 set_flag_f_1089 s_f_x_1086 x_1033 = x_1033 + 1
  
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
       let u =     if prev_set_flag_f_1088 then
                if (0 * 1) + (1 * s_prev_f_x_1087) > (0 * 1) + (1 * x_1032) &&
                   (0 * 1) + (1 * x_1032) >= 0 then
                  ()
                else
                  let u_3528 = fail ()
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
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:26| Bool) (|$knormal:29| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:10| Int) (|$knormal:30| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$V-reftype:12| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:26| Bool) (|$knormal:29| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$V-reftype:14| Int) (|$knormal:30| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:10| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:26| Bool) (|$knormal:29| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:30| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:11| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$alpha-15:u| Int) (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:26| Bool) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:u| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:6| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:26| Bool) (|$V-reftype:12| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$V-reftype:12| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$alpha-15:u| Int) (|$V-reftype:14| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$knormal:26| Bool) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:u| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:26| Bool) (|$V-reftype:29| Int) (|$V-reftype:28| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$V-reftype:26| Int) (|$alpha-15:u| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_1030$unknown:9| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|bot$unknown:1| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:26| Bool) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-15:u| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:10| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$alpha-15:u| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$knormal:26| Bool) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:11| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$knormal:26| Bool) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-15:u| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$alpha-15:u| 1) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:26| Bool) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|fail$unknown:17| |$knormal:29|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:10| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:u| Int) (|$alpha-13:x_1032| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-11:prev_set_flag_f_1088| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:11| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$alpha-13:x_1032| Int) (|$alpha-15:u| Int) )
    (=>
      ( and (= |$alpha-15:u| 1) (= |$alpha-11:prev_set_flag_f_1088| 0) (|f_1030$unknown:5| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-11:prev_set_flag_f_1088|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:u_1036| Int) (|$knormal:45| Int) (|$knormal:50| Int) (|$alpha-17:s_f_x_1086| Int) (|$knormal:44| Int) (|$knormal:42| Int) (|$alpha-16:set_flag_f_1089| Int) (|$knormal:47| Int) (|$V-reftype:77| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (= |$knormal:42| 2) (= |$V-reftype:77| |$knormal:44|) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) (|f_1030$unknown:9| |$knormal:44| |$knormal:42| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:50| |$knormal:47| |$knormal:45|) )
      (|main_1035$unknown:26| |$V-reftype:77| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:23| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$V-reftype:23| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not |$knormal:3|) (|f_without_checking_1098$unknown:13| |$V-reftype:23| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:19| |$V-reftype:23|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:24| Int) (|$V-reftype:25| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$V-reftype:27| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$V-reftype:26| Int) (|$V-reftype:24| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$V-reftype:28| Int) (|$V-reftype:29| Int) (|$knormal:7| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$knormal:7| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|) (|f_without_checking_1098$unknown:15| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:16| |$V-reftype:29| |$V-reftype:28| |$V-reftype:26| |$V-reftype:24| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$V-reftype:25| Int) (|$V-reftype:34| Int) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not |$knormal:3|) (|f_without_checking_1098$unknown:14| |$V-reftype:25| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:20| |$V-reftype:25| |$V-reftype:34|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$V-reftype:27| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not |$knormal:3|) (|f_without_checking_1098$unknown:15| |$V-reftype:27| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|lambda_1031$unknown:21| |$V-reftype:27| |$V-reftype:36| |$V-reftype:34|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$V-reftype:39| Int) (|$V-reftype:38| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-6:set_flag_f_1089| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) (not |$knormal:3|) (|lambda_1031$unknown:22| |$V-reftype:39| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:16| |$V-reftype:39| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:10| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:set_flag_f_1089| Int) (|$alpha-8:x_1032| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-6:set_flag_f_1089| Int) (|$knormal:3| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:11| |$alpha-8:x_1032| |$alpha-9:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$knormal:3| Bool) (|$alpha-6:set_flag_f_1089| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-9:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-8:x_1032| 1)) (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$alpha-9:set_flag_f_1089| 1) |$knormal:3| (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:11| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:10| |$alpha-6:set_flag_f_1089|) )
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
  (forall ( (|$alpha-5:x_1033| Int) (|$alpha-4:s_f_x_1086| Int) (|$alpha-3:set_flag_f_1089| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$V-reftype:53| (+ |$alpha-5:x_1033| 1)) (|lambda_1031$unknown:21| |$alpha-5:x_1033| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|) (|lambda_1031$unknown:20| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|) (|lambda_1031$unknown:19| |$alpha-3:set_flag_f_1089|) )
      (|lambda_1031$unknown:22| |$V-reftype:53| |$alpha-5:x_1033| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$knormal:45| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-16:set_flag_f_1089| Int) (|$knormal:42| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (= |$knormal:42| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:6| |$alpha-16:set_flag_f_1089| |$knormal:50| |$knormal:47| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$knormal:42| Int) (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:45| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (= |$knormal:42| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:7| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:50| |$knormal:47| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$knormal:45| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-16:set_flag_f_1089| Int) (|$knormal:42| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (= |$knormal:42| 2) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:8| |$knormal:42| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089| |$knormal:50| |$knormal:47| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-16:set_flag_f_1089| Int) (|$knormal:45| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:3| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:50| Int) (|$knormal:45| Int) (|$alpha-16:set_flag_f_1089| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-18:u_1036| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:4| |$knormal:47| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$alpha-18:u_1036| Int) (|$alpha-17:s_f_x_1086| Int) (|$alpha-16:set_flag_f_1089| Int) (|$knormal:45| Int) (|$knormal:50| Int) )
    (=>
      ( and (= |$knormal:50| 1) (= |$knormal:47| 0) (= |$knormal:45| 0) (|main_1035$unknown:25| |$alpha-18:u_1036| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:24| |$alpha-17:s_f_x_1086| |$alpha-16:set_flag_f_1089|) (|main_1035$unknown:23| |$alpha-16:set_flag_f_1089|) )
      (|f_1030$unknown:5| |$knormal:50| |$knormal:47| |$knormal:45|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$knormal:53| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| 1) (= |$knormal:55| 0) (= |$knormal:53| 0) )
      (|main_1035$unknown:23| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$knormal:58| Int) (|$knormal:53| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:58| 1) (= |$knormal:55| 0) (= |$knormal:53| 0) )
      (|main_1035$unknown:24| |$knormal:55| |$knormal:53|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$knormal:53| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| 1) (= |$knormal:55| 0) (= |$knormal:53| 0) )
      (|main_1035$unknown:25| |$knormal:58| |$knormal:55| |$knormal:53|)
    )
  )
)
(check-sat)

(get-model)

