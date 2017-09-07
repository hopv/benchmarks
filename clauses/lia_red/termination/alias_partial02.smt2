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

(declare-fun |f_without_checking_1098$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1098$unknown:12|
  ( Int Int Int ) Bool
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
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:1| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:30| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:64| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:65| 1) (= |$cond-alpha-rename:64| 0) (= |$cond-alpha-rename:3| 1) (= |$cond-alpha-rename:2| 0) (= |$cond-alpha-rename:1| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:10| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:4| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$knormal:26| Bool) (|$knormal:29| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:12| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:94| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:94| 1) (= |$cond-alpha-rename:67| 1) (= |$cond-alpha-rename:66| 0) (= |$cond-alpha-rename:6| 1) (= |$cond-alpha-rename:5| 0) (= |$cond-alpha-rename:4| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:24| 0) (= |$V-reftype:12| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:106| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:26| Int) (|$V-reftype:14| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:30| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$V-reftype:24| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:9| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:95| 1) (= |$cond-alpha-rename:9| 1) (= |$cond-alpha-rename:8| 0) (= |$cond-alpha-rename:7| 0) (= |$cond-alpha-rename:69| 1) (= |$cond-alpha-rename:68| 0) (= |$cond-alpha-rename:106| 1) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$V-reftype:14| 2) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$cond-alpha-rename:14| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:30| Int) (|$knormal:28| Int) (|$knormal:27| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:15| 1) (= |$cond-alpha-rename:14| 0) (= |$cond-alpha-rename:13| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) (|bot$unknown:2| |$knormal:28| |$knormal:27|) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:16| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:26| Bool) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:72| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:73| 1) (= |$cond-alpha-rename:72| 0) (= |$cond-alpha-rename:18| 1) (= |$cond-alpha-rename:17| 0) (= |$cond-alpha-rename:16| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:10| 0) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:19| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:10| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:74| Int) )
    (=>
      ( and (= |$cond-alpha-rename:75| 1) (= |$cond-alpha-rename:74| 0) (= |$cond-alpha-rename:21| 1) (= |$cond-alpha-rename:20| 0) (= |$cond-alpha-rename:19| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:10| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:13| |$V-reftype:10| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:22| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$knormal:26| Bool) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:12| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:97| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:97| 1) (= |$cond-alpha-rename:77| 1) (= |$cond-alpha-rename:76| 0) (= |$cond-alpha-rename:24| 1) (= |$cond-alpha-rename:23| 0) (= |$cond-alpha-rename:22| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:24| 0) (= |$V-reftype:12| 0) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:25| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:24| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:12| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:98| Int) )
    (=>
      ( and (= |$cond-alpha-rename:98| 1) (= |$cond-alpha-rename:79| 1) (= |$cond-alpha-rename:78| 0) (= |$cond-alpha-rename:27| 1) (= |$cond-alpha-rename:26| 0) (= |$cond-alpha-rename:25| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:24| 0) (= |$V-reftype:12| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:14| |$V-reftype:12| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Bool) (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:19| Int) (|$knormal:17| Int) (|$knormal:16| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:108| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:26| Int) (|$V-reftype:14| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:26| Bool) (|$V-reftype:24| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:81| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:21| Bool) (|$knormal:23| Int) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:99| 1) (= |$cond-alpha-rename:81| 1) (= |$cond-alpha-rename:80| 0) (= |$cond-alpha-rename:30| 1) (= |$cond-alpha-rename:29| 0) (= |$cond-alpha-rename:28| 0) (= |$cond-alpha-rename:108| 1) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$V-reftype:14| 2) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:100| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$V-reftype:26| Int) (|$V-reftype:14| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$V-reftype:24| Int) (|$alpha-13:x_1032| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:82| Int) )
    (=>
      ( and (= |$cond-alpha-rename:83| 1) (= |$cond-alpha-rename:82| 0) (= |$cond-alpha-rename:33| 1) (= |$cond-alpha-rename:32| 0) (= |$cond-alpha-rename:31| 0) (= |$cond-alpha-rename:109| 1) (= |$cond-alpha-rename:100| 1) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$V-reftype:26| 0) (= |$V-reftype:24| 0) (= |$V-reftype:14| 2) (= |$alpha-11:prev_set_flag_f_1088| 0) )
      (|f_without_checking_1098$unknown:15| |$V-reftype:14| |$V-reftype:26| |$V-reftype:24| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$knormal:27| Int) (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$cond-alpha-rename:41| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:30| Int) (|$knormal:29| Int) (|$knormal:26| Bool) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:42| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:29| 1) (= |$knormal:27| 1) (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:42| 1) (= |$cond-alpha-rename:41| 0) (= |$cond-alpha-rename:40| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (not |$knormal:26|) (not (= |$alpha-11:prev_set_flag_f_1088| 0)) (|fail$unknown:18| |$knormal:30| |$knormal:29|) )
      (|bot$unknown:1| |$knormal:27|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:23| Int) (|$knormal:21| Bool) (|$knormal:18| Int) (|$knormal:15| Int) (|$cond-alpha-rename:44| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$knormal:26| Bool) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:45| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:25| Bool) )
    (=>
      ( and (= |$knormal:26| (and |$knormal:21| |$knormal:25|)) (= |$knormal:25| (>= |$knormal:24| 0)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-13:x_1032|) (= |$knormal:22| 0) (= |$knormal:21| (> |$knormal:17| |$knormal:20|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-13:x_1032|) (= |$knormal:18| 0) (= |$knormal:17| (+ |$knormal:15| |$knormal:16|)) (= |$knormal:16| |$alpha-12:s_prev_f_x_1087|) (= |$knormal:15| 0) (= |$cond-alpha-rename:45| 1) (= |$cond-alpha-rename:44| 0) (= |$cond-alpha-rename:43| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) |$knormal:26| (not (= |$alpha-11:prev_set_flag_f_1088| 0)) )
      (|f_without_checking_1098$unknown:12| |$alpha-13:x_1032| |$alpha-12:s_prev_f_x_1087| |$alpha-11:prev_set_flag_f_1088|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:50| Int) (|$alpha-13:x_1032| Int) (|$alpha-11:prev_set_flag_f_1088| Int) (|$alpha-12:s_prev_f_x_1087| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:51| Int) )
    (=>
      ( and (= |$cond-alpha-rename:51| 1) (= |$cond-alpha-rename:50| 0) (= |$cond-alpha-rename:49| 0) (= |$alpha-13:x_1032| 1) (= |$alpha-12:s_prev_f_x_1087| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) (= |$alpha-11:prev_set_flag_f_1088| 0) )
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
  (forall ( (|$V-reftype:39| Int) (|$cond-alpha-rename:266| Bool) (|$cond-alpha-rename:258| Bool) (|$V-reftype:38| Int) (|$cond-alpha-rename:263| Int) (|$cond-alpha-rename:265| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:257| Int) (|$alpha-7:s_f_x_1086| Int) (|$alpha-8:x_1032| Int) (|$alpha-6:set_flag_f_1089| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:264| Int) (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$cond-alpha-rename:262| Bool) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (> |$alpha-8:x_1032| 0)) (= |$cond-alpha-rename:266| (> |$cond-alpha-rename:265| 0)) (= |$cond-alpha-rename:262| (> |$cond-alpha-rename:261| 0)) (= |$cond-alpha-rename:258| (> |$cond-alpha-rename:257| 0)) (= |$V-reftype:39| (+ |$V-reftype:38| 1)) (not |$knormal:3|) (not |$cond-alpha-rename:266|) (not |$cond-alpha-rename:262|) (not |$cond-alpha-rename:258|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:265| |$cond-alpha-rename:264| |$cond-alpha-rename:263|) (|f_without_checking_1098$unknown:15| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:265| |$cond-alpha-rename:264| |$cond-alpha-rename:263|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259|) (|f_without_checking_1098$unknown:14| |$V-reftype:36| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:265| |$cond-alpha-rename:264| |$cond-alpha-rename:263|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$cond-alpha-rename:257| |$cond-alpha-rename:256| |$cond-alpha-rename:255|) (|f_without_checking_1098$unknown:13| |$V-reftype:34| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:265| |$cond-alpha-rename:264| |$cond-alpha-rename:263|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:261| |$cond-alpha-rename:260| |$cond-alpha-rename:259|) (|f_without_checking_1098$unknown:12| |$cond-alpha-rename:257| |$cond-alpha-rename:256| |$cond-alpha-rename:255|) (|f_without_checking_1098$unknown:12| |$alpha-8:x_1032| |$alpha-7:s_f_x_1086| |$alpha-6:set_flag_f_1089|) )
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

