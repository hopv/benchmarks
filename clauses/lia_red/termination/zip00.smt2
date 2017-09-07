(set-info :origin "Verification conditions for the caml program
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec zip_without_checking_1077 x_DO_NOT_CARE_1083 x_DO_NOT_CARE_1084 x_DO_NOT_CARE_1085 xs_1031 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys_1032 =
    let set_flag_zip_1063 = true
    in
    let s_zip_ys_1059 = ys_1032
    in
    let s_zip_xs_1058 = xs_1031
    in
      if xs_1031 <= 0 then
        0
      else
        let xs'_1033 = xs_1031 - 1
        in
          if ys_1032 <= 0 then
            0
          else
            let ys'_1034 = ys_1032 - 1
            in
              1 +
              zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058
                s_zip_ys_1059 xs'_1033 set_flag_zip_1063 s_zip_xs_1058
                s_zip_ys_1059 ys'_1034
  
  let rec zip_1030 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062 s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032 =
    let u =if prev_set_flag_zip_1062 then
             let u_1166 = fail ()
             in
               bot()
           else
             ()
               in
           zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080
             x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062
             s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032
  
  let main_1035 l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_1030 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l1_1037
        set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |zip_without_checking_1077$unknown:25|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:24|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1035$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:47| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:47| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:47| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$alpha-22:s_prev_zip_ys_1061| Int) (|$alpha-21:s_prev_zip_xs_1060| Int) (|$alpha-18:x_DO_NOT_CARE_1081| Int) (|$alpha-17:x_DO_NOT_CARE_1080| Int) (|$alpha-16:x_DO_NOT_CARE_1079| Int) (|$alpha-19:xs_1031| Int) (|$knormal:38| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:39| Int) (|$alpha-23:ys_1032| Int) (|$alpha-20:prev_set_flag_zip_1062| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$cond-alpha-rename:26| 0) (= |$cond-alpha-rename:25| 0) (= |$cond-alpha-rename:24| 0) (= |$alpha-22:s_prev_zip_ys_1061| |$cond-alpha-rename:26|) (= |$alpha-21:s_prev_zip_xs_1060| |$cond-alpha-rename:25|) (= |$alpha-20:prev_set_flag_zip_1062| |$cond-alpha-rename:24|) (= |$alpha-18:x_DO_NOT_CARE_1081| |$cond-alpha-rename:26|) (= |$alpha-17:x_DO_NOT_CARE_1080| |$cond-alpha-rename:25|) (= |$alpha-16:x_DO_NOT_CARE_1079| |$cond-alpha-rename:24|) (not (= |$alpha-20:prev_set_flag_zip_1062| 0)) (|main_1035$unknown:6| |$alpha-23:ys_1032| |$alpha-19:xs_1031|) (|fail$unknown:4| |$knormal:39| |$knormal:38|) (|bot$unknown:2| |$knormal:37| |$knormal:36|) )
      (|zip_without_checking_1077$unknown:24| |$alpha-23:ys_1032| |$alpha-22:s_prev_zip_ys_1061| |$alpha-21:s_prev_zip_xs_1060| |$alpha-20:prev_set_flag_zip_1062| |$alpha-19:xs_1031| |$alpha-18:x_DO_NOT_CARE_1081| |$alpha-17:x_DO_NOT_CARE_1080| |$alpha-16:x_DO_NOT_CARE_1079|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:17| Bool) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:16| Int) (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) )
    ( and (= |$cond-alpha-rename:29| 0) (= |$cond-alpha-rename:28| 0) (= |$cond-alpha-rename:27| 0) (= |$cond-alpha-rename:19| |$cond-alpha-rename:29|) (= |$cond-alpha-rename:18| |$cond-alpha-rename:28|) (= |$cond-alpha-rename:17| (not (= |$cond-alpha-rename:27| 0))) (= |$cond-alpha-rename:15| |$cond-alpha-rename:29|) (= |$cond-alpha-rename:14| |$cond-alpha-rename:28|) (= |$cond-alpha-rename:13| |$cond-alpha-rename:27|) (= |$alpha-2:$$tmp::2| 1) |$cond-alpha-rename:17| (|main_1035$unknown:6| |$cond-alpha-rename:20| |$cond-alpha-rename:16|) )
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:30| Int) (|$alpha-20:prev_set_flag_zip_1062| Bool) (|$alpha-23:ys_1032| Int) (|$knormal:39| Int) (|$knormal:38| Int) (|$alpha-19:xs_1031| Int) (|$alpha-16:x_DO_NOT_CARE_1079| Int) (|$alpha-17:x_DO_NOT_CARE_1080| Int) (|$alpha-18:x_DO_NOT_CARE_1081| Int) (|$alpha-21:s_prev_zip_xs_1060| Int) (|$alpha-22:s_prev_zip_ys_1061| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= |$cond-alpha-rename:32| 0) (= |$cond-alpha-rename:31| 0) (= |$cond-alpha-rename:30| 0) (= |$alpha-22:s_prev_zip_ys_1061| |$cond-alpha-rename:32|) (= |$alpha-21:s_prev_zip_xs_1060| |$cond-alpha-rename:31|) (= |$alpha-20:prev_set_flag_zip_1062| (not (= |$cond-alpha-rename:30| 0))) (= |$alpha-18:x_DO_NOT_CARE_1081| |$cond-alpha-rename:32|) (= |$alpha-17:x_DO_NOT_CARE_1080| |$cond-alpha-rename:31|) (= |$alpha-16:x_DO_NOT_CARE_1079| |$cond-alpha-rename:30|) |$alpha-20:prev_set_flag_zip_1062| (|main_1035$unknown:6| |$alpha-23:ys_1032| |$alpha-19:xs_1031|) (|fail$unknown:4| |$knormal:39| |$knormal:38|) )
      (|bot$unknown:1| |$knormal:36|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:s_prev_zip_ys_1061| Int) (|$alpha-21:s_prev_zip_xs_1060| Int) (|$alpha-18:x_DO_NOT_CARE_1081| Int) (|$alpha-17:x_DO_NOT_CARE_1080| Int) (|$alpha-16:x_DO_NOT_CARE_1079| Int) (|$alpha-19:xs_1031| Int) (|$alpha-23:ys_1032| Int) (|$alpha-20:prev_set_flag_zip_1062| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) )
    (=>
      ( and (= |$cond-alpha-rename:38| 0) (= |$cond-alpha-rename:37| 0) (= |$cond-alpha-rename:36| 0) (= |$alpha-22:s_prev_zip_ys_1061| |$cond-alpha-rename:38|) (= |$alpha-21:s_prev_zip_xs_1060| |$cond-alpha-rename:37|) (= |$alpha-20:prev_set_flag_zip_1062| |$cond-alpha-rename:36|) (= |$alpha-18:x_DO_NOT_CARE_1081| |$cond-alpha-rename:38|) (= |$alpha-17:x_DO_NOT_CARE_1080| |$cond-alpha-rename:37|) (= |$alpha-16:x_DO_NOT_CARE_1079| |$cond-alpha-rename:36|) (= |$alpha-20:prev_set_flag_zip_1062| 0) (|main_1035$unknown:6| |$alpha-23:ys_1032| |$alpha-19:xs_1031|) )
      (|zip_without_checking_1077$unknown:24| |$alpha-23:ys_1032| |$alpha-22:s_prev_zip_ys_1061| |$alpha-21:s_prev_zip_xs_1060| |$alpha-20:prev_set_flag_zip_1062| |$alpha-19:xs_1031| |$alpha-18:x_DO_NOT_CARE_1081| |$alpha-17:x_DO_NOT_CARE_1080| |$alpha-16:x_DO_NOT_CARE_1079|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$alpha-11:set_flag_zip_1063| Int) (|$knormal:19| Int) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-6:xs_1031| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-10:ys_1032| Int) (|$alpha-9:s_zip_ys_1059| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$alpha-15:ys'_1034| Int) (|$alpha-14:xs'_1033| Int) (|$knormal:3| Bool) (|$V-reftype:56| Int) )
    (=>
      ( and (= |$knormal:4| (<= |$alpha-10:ys_1032| 0)) (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$alpha-15:ys'_1034| (- |$alpha-10:ys_1032| 1)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_zip_1063| 1) (= |$V-reftype:56| (+ 1 |$knormal:19|)) (not |$knormal:4|) (not |$knormal:3|) (|zip_without_checking_1077$unknown:25| |$knormal:19| |$alpha-15:ys'_1034| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_zip_1063| |$alpha-14:xs'_1033| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_zip_1063|) (|zip_without_checking_1077$unknown:24| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|) true true true true true true true )
      (|zip_without_checking_1077$unknown:25| |$V-reftype:56| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-6:xs_1031| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-10:ys_1032| Int) (|$alpha-9:s_zip_ys_1059| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$V-reftype:51| Int) )
    (=>
      ( and (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$V-reftype:51| 0) |$knormal:3| (|zip_without_checking_1077$unknown:24| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|) true true true true true true true )
      (|zip_without_checking_1077$unknown:25| |$V-reftype:51| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:xs'_1033| Int) (|$knormal:3| Bool) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-9:s_zip_ys_1059| Int) (|$alpha-10:ys_1032| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-6:xs_1031| Int) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$knormal:4| Bool) (|$V-reftype:54| Int) )
    (=>
      ( and (= |$knormal:4| (<= |$alpha-10:ys_1032| 0)) (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$V-reftype:54| 0) (not |$knormal:3|) |$knormal:4| (|zip_without_checking_1077$unknown:24| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|) true true true true true true true )
      (|zip_without_checking_1077$unknown:25| |$V-reftype:54| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$alpha-11:set_flag_zip_1063| Int) (|$alpha-6:xs_1031| Int) (|$alpha-10:ys_1032| Int) (|$alpha-9:s_zip_ys_1059| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$knormal:4| Bool) (|$alpha-14:xs'_1033| Int) (|$alpha-15:ys'_1034| Int) )
    (=>
      ( and (= |$knormal:4| (<= |$alpha-10:ys_1032| 0)) (= |$knormal:3| (<= |$alpha-6:xs_1031| 0)) (= |$alpha-15:ys'_1034| (- |$alpha-10:ys_1032| 1)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_zip_1063| 1) (not |$knormal:4|) (not |$knormal:3|) (|zip_without_checking_1077$unknown:24| |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|) true true true true true true true (= |$cond-alpha-rename:7| |$alpha-10:ys_1032|) (= |$cond-alpha-rename:8| |$alpha-6:xs_1031|) (= |$cond-alpha-rename:9| |$alpha-11:set_flag_zip_1063|) (= |$cond-alpha-rename:10| |$alpha-10:ys_1032|) (= |$cond-alpha-rename:11| |$alpha-6:xs_1031|) (= |$cond-alpha-rename:12| |$alpha-11:set_flag_zip_1063|) )
      (|zip_without_checking_1077$unknown:24| |$alpha-15:ys'_1034| |$cond-alpha-rename:7| |$cond-alpha-rename:8| |$cond-alpha-rename:9| |$alpha-14:xs'_1033| |$cond-alpha-rename:10| |$cond-alpha-rename:11| |$cond-alpha-rename:12|)
    )
  )
)
(check-sat)

(get-model)

