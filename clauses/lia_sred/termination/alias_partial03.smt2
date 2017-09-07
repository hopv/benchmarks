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

(declare-fun |f_1030$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:23|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:22|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:17|
  ( Int ) Bool
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

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:65| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:65| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$cond-alpha-rename:158| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:3| Bool) (|$cond-alpha-rename:138| Bool) (|$knormal:23| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:109| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:73| Int) (|$V-reftype:16| Int) (|$knormal:22| Int) (|$cond-alpha-rename:111| Bool) (|$cond-alpha-rename:157| Bool) (|$cond-alpha-rename:75| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:75| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:3| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:158| (- |$cond-alpha-rename:156| 1)) (= |$cond-alpha-rename:157| (> |$cond-alpha-rename:156| 0)) (= |$cond-alpha-rename:138| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:111| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:75| |$cond-alpha-rename:3| |$cond-alpha-rename:157| |$cond-alpha-rename:138| |$cond-alpha-rename:111| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_without_checking_1098$unknown:22| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$cond-alpha-rename:154|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:2| |$cond-alpha-rename:1|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:155| |$cond-alpha-rename:154|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:73|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:154|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:136|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:109|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:1|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:141| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$V-reftype:28| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:112| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:76| Int) (|$knormal:22| Int) (|$cond-alpha-rename:114| Bool) (|$cond-alpha-rename:6| Bool) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:78| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:6| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:141| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:114| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:78| |$cond-alpha-rename:6| |$cond-alpha-rename:141| |$cond-alpha-rename:114| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:22| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:5| |$cond-alpha-rename:4|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:77| |$cond-alpha-rename:76|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:5| |$cond-alpha-rename:4|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:140| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:113| |$cond-alpha-rename:112|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:76|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:4|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:139|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:112|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:81| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:7| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:79| Int) (|$V-reftype:11| Int) (|$V-reftype:26| Int) (|$knormal:22| Int) (|$cond-alpha-rename:117| Bool) (|$cond-alpha-rename:9| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:9| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:81| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:117| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:9| |$cond-alpha-rename:81| |$cond-alpha-rename:117| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:21| |$V-reftype:26| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:80| |$cond-alpha-rename:79|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:80| |$cond-alpha-rename:79|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:80| |$cond-alpha-rename:79|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:8| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:116| |$cond-alpha-rename:115|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:79|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:7|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:115|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:84| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$V-reftype:24| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:10| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$cond-alpha-rename:82| Int) (|$knormal:22| Int) (|$cond-alpha-rename:12| Bool) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:84| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:12| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:84| |$cond-alpha-rename:12| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:20| |$V-reftype:24| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:83| |$cond-alpha-rename:82|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:83| |$cond-alpha-rename:82|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:11| |$cond-alpha-rename:10|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:83| |$cond-alpha-rename:82|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:11| |$cond-alpha-rename:10|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:82|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:10|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:6| |$V-reftype:24| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$cond-alpha-rename:13| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$cond-alpha-rename:14| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$knormal:22| Int) (|$cond-alpha-rename:15| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:15| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:15| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:14| |$cond-alpha-rename:13|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:14| |$cond-alpha-rename:13|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:13|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:18| Bool) (|$knormal:22| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:17| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$cond-alpha-rename:16| Int) (|$knormal:23| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:18| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:18| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:16|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$cond-alpha-rename:19| Int) (|$knormal:21| Int) (|$knormal:20| Int) (|$cond-alpha-rename:20| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$knormal:22| Int) (|$cond-alpha-rename:21| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:21| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:21| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:20| |$cond-alpha-rename:19|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:20| |$cond-alpha-rename:19|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:19|) (|bot$unknown:2| |$knormal:21| |$knormal:20|) )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$cond-alpha-rename:163| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:24| Bool) (|$cond-alpha-rename:144| Bool) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:142| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-9:x_1032| Int) (|$V-reftype:15| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:85| Int) (|$V-reftype:16| Int) (|$cond-alpha-rename:120| Bool) (|$cond-alpha-rename:162| Bool) (|$cond-alpha-rename:87| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:87| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:24| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:163| (- |$cond-alpha-rename:161| 1)) (= |$cond-alpha-rename:162| (> |$cond-alpha-rename:161| 0)) (= |$cond-alpha-rename:144| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:120| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:87| |$cond-alpha-rename:24| |$cond-alpha-rename:162| |$cond-alpha-rename:144| |$cond-alpha-rename:120| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_without_checking_1098$unknown:22| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:119| |$cond-alpha-rename:118|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:119| |$cond-alpha-rename:118|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:161| |$cond-alpha-rename:160| |$cond-alpha-rename:159|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:23| |$cond-alpha-rename:22|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:119| |$cond-alpha-rename:118|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:86| |$cond-alpha-rename:85|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:23| |$cond-alpha-rename:22|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:160| |$cond-alpha-rename:159|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:143| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:119| |$cond-alpha-rename:118|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:85|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:22|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:159|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:142|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:118|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:27| Bool) (|$cond-alpha-rename:147| Bool) (|$V-reftype:16| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:121| Int) (|$V-reftype:15| Int) (|$alpha-9:x_1032| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:123| Bool) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:90| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:90| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:27| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:168| (- |$cond-alpha-rename:166| 1)) (= |$cond-alpha-rename:167| (> |$cond-alpha-rename:166| 0)) (= |$cond-alpha-rename:147| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:123| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:90| |$cond-alpha-rename:27| |$cond-alpha-rename:167| |$cond-alpha-rename:147| |$cond-alpha-rename:123| (|f_without_checking_1098$unknown:23| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_without_checking_1098$unknown:22| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:89| |$cond-alpha-rename:88|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:166| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:89| |$cond-alpha-rename:88|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:26| |$cond-alpha-rename:25|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:89| |$cond-alpha-rename:88|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:26| |$cond-alpha-rename:25|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:165| |$cond-alpha-rename:164|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:146| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:88|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:25|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:164|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:145|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:121|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|) (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|) )
      (|f_1030$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:93| Bool) (|$cond-alpha-rename:150| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$V-reftype:28| Int) (|$V-reftype:13| Int) (|$V-reftype:11| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:126| Bool) (|$cond-alpha-rename:30| Bool) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:93| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:30| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:150| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:126| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:93| |$cond-alpha-rename:30| |$cond-alpha-rename:150| |$cond-alpha-rename:126| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:22| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:29| |$cond-alpha-rename:28|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:29| |$cond-alpha-rename:28|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:125| |$cond-alpha-rename:124|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:91|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:28|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:148|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:124|) )
      (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:153| Bool) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:95| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:28| Int) (|$cond-alpha-rename:129| Bool) (|$cond-alpha-rename:33| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$cond-alpha-rename:96| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:33| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:153| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:129| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:96| |$cond-alpha-rename:33| |$cond-alpha-rename:153| |$cond-alpha-rename:129| (|f_without_checking_1098$unknown:22| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:21| |$V-reftype:13| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:32| |$cond-alpha-rename:31|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:95| |$cond-alpha-rename:94|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:32| |$cond-alpha-rename:31|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:128| |$cond-alpha-rename:127|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:94|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:31|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:151|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:127|) )
      (|f_1030$unknown:8| |$V-reftype:28| |$V-reftype:13| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$cond-alpha-rename:36| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:97| Int) (|$V-reftype:11| Int) (|$V-reftype:26| Int) (|$cond-alpha-rename:132| Bool) (|$cond-alpha-rename:99| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:99| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:36| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:132| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:99| |$cond-alpha-rename:36| |$cond-alpha-rename:132| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:21| |$V-reftype:26| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:35| |$cond-alpha-rename:34|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:35| |$cond-alpha-rename:34|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:131| |$cond-alpha-rename:130|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:97|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:34|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:130|) )
      (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1032| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$cond-alpha-rename:135| Bool) (|$V-reftype:26| Int) (|$V-reftype:11| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:38| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:102| Bool) (|$cond-alpha-rename:39| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:39| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:135| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:102| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:39| |$cond-alpha-rename:135| |$cond-alpha-rename:102| (|f_without_checking_1098$unknown:21| |$V-reftype:26| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:134| |$cond-alpha-rename:133|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:134| |$cond-alpha-rename:133|) (|f_without_checking_1098$unknown:20| |$V-reftype:11| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:38| |$cond-alpha-rename:37|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:134| |$cond-alpha-rename:133|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:38| |$cond-alpha-rename:37|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:134| |$cond-alpha-rename:133|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:37|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:133|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:100|) )
      (|f_1030$unknown:7| |$V-reftype:26| |$V-reftype:11| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:42| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:105| Bool) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:42| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:105| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:42| |$cond-alpha-rename:105| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:20| |$V-reftype:24| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:104| |$cond-alpha-rename:103|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:41| |$cond-alpha-rename:40|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:104| |$cond-alpha-rename:103|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:41| |$cond-alpha-rename:40|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:104| |$cond-alpha-rename:103|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:40|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:103|) )
      (|f_1030$unknown:6| |$V-reftype:24| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:45| Bool) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:44| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$cond-alpha-rename:108| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$cond-alpha-rename:45| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$cond-alpha-rename:108| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:45| |$cond-alpha-rename:108| (|f_without_checking_1098$unknown:20| |$V-reftype:24| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:107| |$cond-alpha-rename:106|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:44| |$cond-alpha-rename:43|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:107| |$cond-alpha-rename:106|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:44| |$cond-alpha-rename:43|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:107| |$cond-alpha-rename:106|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:43|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:106|) )
      (|f_1030$unknown:6| |$V-reftype:24| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:23| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:47| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$knormal:22| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:22| 1) (= |$knormal:20| 1) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:48| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (not |$knormal:19|) |$cond-alpha-rename:48| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|fail$unknown:25| |$knormal:23| |$knormal:22|) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:47| |$cond-alpha-rename:46|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:47| |$cond-alpha-rename:46|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:46|) )
      (|bot$unknown:1| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:50| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:51| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:51| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:51| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:50| |$cond-alpha-rename:49|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:50| |$cond-alpha-rename:49|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:49|) )
      (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$knormal:16| Int) (|$knormal:14| Bool) (|$knormal:11| Int) (|$knormal:8| Int) (|$cond-alpha-rename:54| Bool) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:52| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$knormal:19| Bool) (|$alpha-9:x_1032| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$knormal:18| Bool) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:54| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:54| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:53| |$cond-alpha-rename:52|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:52|) )
      (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:15| Int) (|$knormal:13| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$knormal:10| Int) (|$alpha-9:x_1032| Int) (|$knormal:19| Bool) (|$alpha-7:prev_set_flag_f_1088| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:57| Bool) (|$knormal:8| Int) (|$knormal:11| Int) (|$knormal:14| Bool) (|$knormal:16| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$knormal:9| |$alpha-8:s_prev_f_x_1087|) (= |$knormal:8| 0) (= |$knormal:19| (and |$knormal:14| |$knormal:18|)) (= |$knormal:18| (>= |$knormal:17| 0)) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-9:x_1032|) (= |$knormal:15| 0) (= |$knormal:14| (> |$knormal:10| |$knormal:13|)) (= |$knormal:13| (+ |$knormal:11| |$knormal:12|)) (= |$knormal:12| |$alpha-9:x_1032|) (= |$knormal:11| 0) (= |$knormal:10| (+ |$knormal:8| |$knormal:9|)) (= |$cond-alpha-rename:57| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) |$knormal:19| |$cond-alpha-rename:57| (not (= |$alpha-7:prev_set_flag_f_1088| 0)) (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:56| |$cond-alpha-rename:55|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:56| |$cond-alpha-rename:55|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:55|) )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1032| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:63| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:63| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:63| (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:62| |$cond-alpha-rename:61|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:62| |$cond-alpha-rename:61|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:61|) )
      (|f_1030$unknown:3| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:66| Bool) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-9:x_1032| Int) )
    (=>
      ( and (= |$cond-alpha-rename:66| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:66| (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:65| |$cond-alpha-rename:64|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:64|) )
      (|f_1030$unknown:4| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x_1032| Int) (|$alpha-7:prev_set_flag_f_1088| Int) (|$alpha-8:s_prev_f_x_1087| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:69| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:69| (> |$alpha-8:s_prev_f_x_1087| 0)) (= |$alpha-9:x_1032| (- |$alpha-8:s_prev_f_x_1087| 1)) (= |$alpha-7:prev_set_flag_f_1088| 1) (= |$alpha-7:prev_set_flag_f_1088| 0) |$cond-alpha-rename:69| (|f_without_checking_1098$unknown:19| |$alpha-8:s_prev_f_x_1087| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:67|) )
      (|f_1030$unknown:5| |$alpha-9:x_1032| |$alpha-8:s_prev_f_x_1087| |$alpha-7:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-13:s_f_x_1086| Int) (|$alpha-15:set_flag_f_1089| Int) (|$knormal:30| Int) (|$V-reftype:27| Int) (|$V-reftype:30| Int) (|$V-reftype:29| Int) (|$V-reftype:25| Int) (|$alpha-14:x_1032| Int) (|$alpha-12:set_flag_f_1089| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) (= |$alpha-15:set_flag_f_1089| 1) |$knormal:24| (|f_without_checking_1098$unknown:22| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:21| |$V-reftype:27| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:20| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:16| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$knormal:30| |$alpha-14:x_1032| |$alpha-15:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:23| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$V-reftype:25| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-14:x_1032| Int) (|$alpha-13:s_f_x_1086| Int) (|$V-reftype:4| Int) (|$alpha-12:set_flag_f_1089| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:3| |$V-reftype:4|) )
      (|f_without_checking_1098$unknown:17| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-12:set_flag_f_1089| Int) (|$V-reftype:10| Int) (|f_without_checking_1098| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:6| |$V-reftype:10| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:4| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:3| |f_without_checking_1098|) )
      (|f_without_checking_1098$unknown:20| |$V-reftype:10| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-14:x_1032| Int) (|$alpha-13:s_f_x_1086| Int) (|$V-reftype:12| Int) (|$V-reftype:38| Int) (|f_without_checking_1098| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-12:set_flag_f_1089| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:6| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:4| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:3| |f_without_checking_1098|) )
      (|f_without_checking_1098$unknown:21| |$V-reftype:12| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-12:set_flag_f_1089| Int) (|$V-reftype:14| Int) (|$V-reftype:36| Int) (|$V-reftype:34| Int) (|f_without_checking_1098| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:7| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:6| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:4| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:3| |f_without_checking_1098|) )
      (|f_without_checking_1098$unknown:22| |$V-reftype:14| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-14:x_1032| Int) (|$alpha-13:s_f_x_1086| Int) (|$V-reftype:8| Int) (|$V-reftype:34| Int) (|f_without_checking_1098| Int) (|$alpha-12:set_flag_f_1089| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:5| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:4| |$V-reftype:34| |f_without_checking_1098|) (|f_1030$unknown:3| |f_without_checking_1098|) )
      (|f_without_checking_1098$unknown:19| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-12:set_flag_f_1089| Int) (|$V-reftype:6| Int) (|f_without_checking_1098| Int) (|$alpha-13:s_f_x_1086| Int) (|$alpha-14:x_1032| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (- |$alpha-14:x_1032| 1)) (= |$knormal:24| (> |$alpha-14:x_1032| 0)) |$knormal:24| (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) (|f_1030$unknown:4| |$V-reftype:6| |f_without_checking_1098|) (|f_1030$unknown:3| |f_without_checking_1098|) )
      (|f_without_checking_1098$unknown:18| |$V-reftype:6| |f_without_checking_1098|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$cond-alpha-rename:222| Bool) (|$cond-alpha-rename:214| Bool) (|$V-reftype:52| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:211| Int) (|$alpha-12:set_flag_f_1089| Int) (|$cond-alpha-rename:215| Int) (|$alpha-13:s_f_x_1086| Int) (|$cond-alpha-rename:212| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:220| Int) (|$alpha-14:x_1032| Int) (|$cond-alpha-rename:217| Int) (|$V-reftype:48| Int) (|$V-reftype:50| Int) (|$cond-alpha-rename:218| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:24| (> |$alpha-14:x_1032| 0)) (= |$cond-alpha-rename:222| (> |$cond-alpha-rename:221| 0)) (= |$cond-alpha-rename:218| (> |$cond-alpha-rename:217| 0)) (= |$cond-alpha-rename:214| (> |$cond-alpha-rename:213| 0)) (= |$V-reftype:53| (+ |$V-reftype:52| 1)) (not |$knormal:24|) (not |$cond-alpha-rename:222|) (not |$cond-alpha-rename:218|) (not |$cond-alpha-rename:214|) (|f_without_checking_1098$unknown:22| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:22| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:21| |$V-reftype:50| |$V-reftype:48| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:21| |$V-reftype:50| |$V-reftype:48| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|f_without_checking_1098$unknown:21| |$V-reftype:50| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:20| |$V-reftype:48| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:20| |$V-reftype:48| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|f_without_checking_1098$unknown:20| |$V-reftype:48| |$cond-alpha-rename:213| |$cond-alpha-rename:212| |$cond-alpha-rename:211|) (|f_without_checking_1098$unknown:20| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:213| |$cond-alpha-rename:212| |$cond-alpha-rename:211|) (|f_without_checking_1098$unknown:19| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:220| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:212| |$cond-alpha-rename:211|) (|f_without_checking_1098$unknown:18| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:219|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:215|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:211|) (|f_without_checking_1098$unknown:17| |$alpha-12:set_flag_f_1089|) )
      (|f_without_checking_1098$unknown:23| |$V-reftype:53| |$V-reftype:52| |$V-reftype:50| |$V-reftype:48| |$alpha-14:x_1032| |$alpha-13:s_f_x_1086| |$alpha-12:set_flag_f_1089|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:179| Bool) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:184| Bool) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:170| Int) (|$cond-alpha-rename:174| Bool) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:183| Bool) )
    ( and (= |$cond-alpha-rename:186| |$cond-alpha-rename:170|) (= |$cond-alpha-rename:185| 0) (= |$cond-alpha-rename:184| (and |$cond-alpha-rename:179| |$cond-alpha-rename:183|)) (= |$cond-alpha-rename:183| (>= |$cond-alpha-rename:182| 0)) (= |$cond-alpha-rename:182| (+ |$cond-alpha-rename:180| |$cond-alpha-rename:181|)) (= |$cond-alpha-rename:181| |$cond-alpha-rename:171|) (= |$cond-alpha-rename:180| 0) (= |$cond-alpha-rename:179| (> |$cond-alpha-rename:175| |$cond-alpha-rename:178|)) (= |$cond-alpha-rename:178| (+ |$cond-alpha-rename:176| |$cond-alpha-rename:177|)) (= |$cond-alpha-rename:177| |$cond-alpha-rename:171|) (= |$cond-alpha-rename:176| 0) (= |$cond-alpha-rename:175| (+ |$cond-alpha-rename:185| |$cond-alpha-rename:186|)) (= |$cond-alpha-rename:174| (> |$cond-alpha-rename:170| 0)) (= |$cond-alpha-rename:171| (- |$cond-alpha-rename:170| 1)) (= |$cond-alpha-rename:169| 1) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:184|) |$cond-alpha-rename:174| (not (= |$cond-alpha-rename:169| 0)) (|f_without_checking_1098$unknown:19| |$cond-alpha-rename:170| |$cond-alpha-rename:173| |$cond-alpha-rename:172|) (|f_without_checking_1098$unknown:18| |$cond-alpha-rename:173| |$cond-alpha-rename:172|) (|f_without_checking_1098$unknown:17| |$cond-alpha-rename:172|) )
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:47| Int) (|$alpha-18:s_f_x_1086| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-19:u_1036| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:20| |$alpha-17:set_flag_f_1089| |$knormal:52| |$knormal:49| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$alpha-19:u_1036| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$knormal:47| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:21| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089| |$knormal:52| |$knormal:49| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$knormal:52| Int) (|$knormal:47| Int) (|$alpha-19:u_1036| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$knormal:44| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$knormal:44| 2) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:22| |$knormal:44| |$alpha-18:s_f_x_1086| |$alpha-17:set_flag_f_1089| |$knormal:52| |$knormal:49| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:u_1036| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| 0) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:17| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$alpha-19:u_1036| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:18| |$knormal:49| |$knormal:47|)
    )
  )
)
(assert
  (forall ( (|$knormal:49| Int) (|$alpha-19:u_1036| Int) (|$alpha-17:set_flag_f_1089| Int) (|$alpha-18:s_f_x_1086| Int) (|$knormal:47| Int) (|$knormal:52| Int) )
    (=>
      ( and (= |$knormal:52| 1) (= |$knormal:49| 0) (= |$knormal:47| 0) (= |$alpha-19:u_1036| 1) (= |$alpha-18:s_f_x_1086| 0) (= |$alpha-17:set_flag_f_1089| 0) )
      (|f_without_checking_1098$unknown:19| |$knormal:52| |$knormal:49| |$knormal:47|)
    )
  )
)
(check-sat)

(get-model)

