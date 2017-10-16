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

(declare-fun |main_1035$unknown:33|
  ( Int Int Int Int ) Bool
)

(declare-fun |main_1035$unknown:32|
  ( Int Int Int ) Bool
)

(declare-fun |lambda_1031$unknown:29|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:23|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:24|
  ( Int ) Bool
)

(declare-fun |f_1030$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1030$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:65| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:65| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) true true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) true true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) true (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$alpha-11:u| 1) (not (= 0 |$knormal:19|)) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:22| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:14|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= (not (= 0 |$knormal:14|)) (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (not (not (= 0 |$knormal:19|))) (not (= 0 |$alpha-7:prev_set_flag_f_1088|)) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      (|fail$unknown:24| |$knormal:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:u| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$alpha-11:u| 1) (not (not (= 0 |$alpha-7:prev_set_flag_f_1088|))) (|f_1030$unknown:12| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) true true )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:30| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) true true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true (|f_1030$unknown:16| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$knormal:30| |$alpha-14:x_1032| |$alpha-15:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:23| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true true (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true true true (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:42| Int) (|$V-reftype:43| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:23| |$V-reftype:43| |$V-reftype:42| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true true true (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) true true )
      (|f_1030$unknown:9| |$V-reftype:43| |$V-reftype:42| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:8| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) (|f_without_checking_1098| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true (|f_1030$unknown:5| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|) true true )
      (|f_without_checking_1098$unknown:19| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) true true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (not (= 0 |$knormal:24|))) true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (not (= 0 |$knormal:24|))) true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (not (= 0 |$knormal:24|))) true true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (not (= 0 |$knormal:24|))) (|lambda_1031$unknown:29| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48|) true true true (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:23| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:set_flag_f_1089| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:24| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) (not (= 0 |$knormal:24|)) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) true true )
      (|f_1030$unknown:12| |$knormal:30| |$alpha-14:x_1032| |$alpha-15:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:91| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:44| Int) (|$knormal:46| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$knormal:44| 2) (= |$V-reftype:91| |$knormal:46|) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true (|f_without_checking_1098$unknown:23| |$knormal:46| |$knormal:44| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089| |$knormal:52| |$knormal:49| |$knormal:47|) )
      (|main_1035$unknown:33| |$V-reftype:91| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:24| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:67| Int) (|$alpha-3:set_flag_f_1089| Int) (|$alpha-4:s_f_x_1086| Int) (|$alpha-5:x_1033| Int) )
    (=>
      ( and (= |$V-reftype:67| (+ |$alpha-5:x_1033| 1)) true true true )
      (|lambda_1031$unknown:29| |$V-reftype:67| |$alpha-5:x_1033| |$alpha-4:s_f_x_1086| |$alpha-3:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:44| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$knormal:44| 2) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:44| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$knormal:44| 2) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:44| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$knormal:44| 2) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-19:u_1036| Int) (|$knormal:47| Int) (|$knormal:49| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (|main_1035$unknown:32| |$alpha-19:u_1036| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089|) true true )
      (|f_without_checking_1098$unknown:19| |$knormal:52| |$knormal:49| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| 1) (= |$knormal:57| 0) (= |$knormal:55| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| 1) (= |$knormal:57| 0) (= |$knormal:55| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:55| Int) (|$knormal:57| Int) (|$knormal:60| Int) )
    (=>
      ( and (= |$knormal:60| 1) (= |$knormal:57| 0) (= |$knormal:55| 0) )
      (|main_1035$unknown:32| |$knormal:60| |$knormal:57| |$knormal:55|)
    )
  )
)
(check-sat)

(get-model)

(exit)

