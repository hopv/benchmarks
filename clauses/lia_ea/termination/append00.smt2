(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec append_without_checking_1072 x_DO_NOT_CARE_1078 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 xs_1031 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 ys_1032 =
       let set_flag_append_1059 = true
       in
       let s_append_ys_1055 = ys_1032
       in
       let s_append_xs_1054 = xs_1031
       in
         if xs_1031 <= 0 then
           ys_1032
         else
           let xs'_1033 = xs_1031 - 1
           in
             1 +
             append_without_checking_1072 set_flag_append_1059 s_append_xs_1054
               s_append_ys_1055 xs'_1033 set_flag_append_1059 s_append_xs_1054
               s_append_ys_1055 ys_1032
  
     let rec append_1030 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075 x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058 s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032 =
       let u = if prev_set_flag_append_1058 then
                let u_1161 = fail ()
                in
                  bot()
               else () in
              append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075
                x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058
                s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032
  
     let main_1034 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 u_1035  l1_1036 l2_1037 =
         append_1030 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
           l1_1036 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 l2_1037
  
  let main =
       main_1034 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1034$unknown:29|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1034$unknown:28|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:21|
  ( Int ) Bool
)

(declare-fun |append_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |append_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:71| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (= |$V-reftype:71| |$knormal:34|) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_without_checking_1072$unknown:18| |$knormal:34| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      (|append_1030$unknown:9| |$V-reftype:71| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (= |$V-reftype:73| |$knormal:34|) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_without_checking_1072$unknown:18| |$knormal:34| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      (|append_1030$unknown:9| |$V-reftype:73| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|bot$unknown:20| |$knormal:36| |$knormal:35|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:35| Int) (|$knormal:37| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:37| 1) (= |$knormal:35| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|fail$unknown:22| |$knormal:38| |$knormal:37|) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 1) (not (= 0 |$alpha-19:prev_set_flag_append_1058|)) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      (|fail$unknown:21| |$knormal:37|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:x_DO_NOT_CARE_1074| Int) (|$alpha-16:x_DO_NOT_CARE_1075| Int) (|$alpha-17:x_DO_NOT_CARE_1076| Int) (|$alpha-18:xs_1031| Int) (|$alpha-19:prev_set_flag_append_1058| Int) (|$alpha-20:s_prev_append_xs_1056| Int) (|$alpha-21:s_prev_append_ys_1057| Int) (|$alpha-22:ys_1032| Int) (|$alpha-24:u| Int) )
    (=>
      ( and (= |$alpha-24:u| 1) (not (not (= 0 |$alpha-19:prev_set_flag_append_1058|))) (|append_1030$unknown:8| |$alpha-22:ys_1032| |$alpha-21:s_prev_append_ys_1057| |$alpha-20:s_prev_append_xs_1056| |$alpha-19:prev_set_flag_append_1058| |$alpha-18:xs_1031| |$alpha-17:x_DO_NOT_CARE_1076| |$alpha-16:x_DO_NOT_CARE_1075| |$alpha-15:x_DO_NOT_CARE_1074|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:74| Int) (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) (|$knormal:53| Int) )
    (=>
      ( and (= |$V-reftype:74| |$knormal:53|) (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true (|append_1030$unknown:9| |$knormal:53| |$alpha-30:l2_1037| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059| |$alpha-29:l1_1036| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) )
      (|main_1034$unknown:29| |$V-reftype:74| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$alpha-10:ys_1032| Int) (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-3:x_DO_NOT_CARE_1078| Int) (|$alpha-4:x_DO_NOT_CARE_1079| Int) (|$alpha-5:x_DO_NOT_CARE_1080| Int) (|$alpha-6:xs_1031| Int) (|$alpha-7:set_flag_append_1059| Int) (|$alpha-8:s_append_xs_1054| Int) (|$alpha-9:s_append_ys_1055| Int) (|$knormal:18| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (= |$V-reftype:68| (+ 1 |$knormal:18|)) (not (not (= 0 |$knormal:3|))) (|append_without_checking_1072$unknown:18| |$knormal:18| |$alpha-10:ys_1032| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_append_1059| |$alpha-14:xs'_1033| |$alpha-10:ys_1032| |$alpha-6:xs_1031| |$alpha-11:set_flag_append_1059|) true true true true true true true true )
      (|append_without_checking_1072$unknown:18| |$V-reftype:68| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-10:ys_1032| Int) (|$alpha-11:set_flag_append_1059| Int) (|$alpha-3:x_DO_NOT_CARE_1078| Int) (|$alpha-4:x_DO_NOT_CARE_1079| Int) (|$alpha-5:x_DO_NOT_CARE_1080| Int) (|$alpha-6:xs_1031| Int) (|$alpha-7:set_flag_append_1059| Int) (|$alpha-8:s_append_xs_1054| Int) (|$alpha-9:s_append_ys_1055| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-11:set_flag_append_1059| 1) (= |$V-reftype:66| |$alpha-10:ys_1032|) (not (= 0 |$knormal:3|)) true true true true true true true true )
      (|append_without_checking_1072$unknown:18| |$V-reftype:66| |$alpha-10:ys_1032| |$alpha-9:s_append_ys_1055| |$alpha-8:s_append_xs_1054| |$alpha-7:set_flag_append_1059| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1080| |$alpha-4:x_DO_NOT_CARE_1079| |$alpha-3:x_DO_NOT_CARE_1078|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:set_flag_append_1059| Int) (|$alpha-14:xs'_1033| Int) (|$alpha-6:xs_1031| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (<= |$alpha-6:xs_1031| 0)) (= |$alpha-14:xs'_1033| (- |$alpha-6:xs_1031| 1)) (= |$alpha-11:set_flag_append_1059| 1) (not (not (= 0 |$knormal:3|))) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:62| |$knormal:2|) (|bot$unknown:20| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:20| |$V-reftype:62| |$alpha-1:$$tmp::1|)
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
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:21| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_append_1059| Int) (|$alpha-26:s_append_xs_1054| Int) (|$alpha-27:s_append_ys_1055| Int) (|$alpha-28:u_1035| Int) (|$alpha-29:l1_1036| Int) (|$alpha-30:l2_1037| Int) )
    (=>
      ( and (|main_1034$unknown:28| |$alpha-30:l2_1037| |$alpha-29:l1_1036| |$alpha-28:u_1035| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|) true true true true true )
      (|append_1030$unknown:8| |$alpha-30:l2_1037| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059| |$alpha-29:l1_1036| |$alpha-27:s_append_ys_1055| |$alpha-26:s_append_xs_1054| |$alpha-25:set_flag_append_1059|)
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$V-reftype:57| Int) (|$knormal:54| Int) (|$knormal:56| Int) (|$knormal:59| Int) (|$knormal:62| Int) )
    (=>
      ( and (= |$knormal:62| 1) (= |$knormal:59| 0) (= |$knormal:56| 0) (= |$knormal:54| 0) )
      (|main_1034$unknown:28| |$V-reftype:45| |$V-reftype:57| |$knormal:62| |$knormal:59| |$knormal:56| |$knormal:54|)
    )
  )
)
(check-sat)

(get-model)

(exit)

