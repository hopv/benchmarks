(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1086 = 0
     let rec c0_COEFFICIENT_1085 = 0
     let succ_1030 set_flag_f_1181 s_f_n_1178 n_1031 = n_1031 + 1
  
     let g_1032 x_DO_NOT_CARE_1215 x_DO_NOT_CARE_1216 r_EXPARAM_1088 x_DO_NOT_CARE_1213 x_DO_NOT_CARE_1214 r_1033 set_flag_f_1181 s_f_n_1178 a_1034 =
       r_1033 set_flag_f_1181 s_f_n_1178
         (r_1033 set_flag_f_1181 s_f_n_1178 a_1034)
  
     let rec f_1035 f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036 =
       let u = if prev_set_flag_f_1180 then
                if (0 * 1) + (1 * s_prev_f_n_1179) > (0 * 1) + (1 * n_1036) &&
                   (0 * 1) + (1 * n_1036) >= 0 then
                  ()
                else
                  let u_15618 = fail ()
                  in
                    bot()
       else ()
         in
              f_without_checking_1189 prev_set_flag_f_1180 s_prev_f_n_1179 n_1036
  
     let rec f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1036 =
       let set_flag_f_1181 = true
       in
       let s_f_n_1178 = n_1036
       in
         if n_1036 = 0 then
           succ_1030
         else
           g_1032 set_flag_f_1181 s_f_n_1178
             ((c0_COEFFICIENT_1085 * n_1036) + c1_COEFFICIENT_1086)
             set_flag_f_1181 s_f_n_1178
             (f_1035 f_without_checking_1189 set_flag_f_1181 s_f_n_1178 (n_1036 - 1))
  
     let main n_1038 x_1039 =
       let x_DO_NOT_CARE_1211 = false in
       let x_DO_NOT_CARE_1212 = 0 in
       let set_flag_f_1181 = false in
       let s_f_n_1178 = 0 in
       if n_1038 >= 0 && x_1039 >= 0 then
         f_without_checking_1189 set_flag_f_1181 s_f_n_1178 n_1038
           set_flag_f_1181 s_f_n_1178 x_1039
       else
         0
")

(set-logic HORN)

(declare-fun |succ_1030$unknown:42|
  ( Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:38|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:23|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |g_1032$unknown:34|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1189$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |fail$unknown:24|
  ( Int ) Bool
)

(declare-fun |f_1035$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:16|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |f_1035$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1035$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:85| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:85| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:2| |$V-reftype:85| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) (|f_1035$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true (|bot$unknown:2| |$knormal:32| |$knormal:31|) )
      (|f_1035$unknown:5| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|f_1035$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$V-reftype:15| Int) (|$V-reftype:16| Int) (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) (|f_1035$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      (|f_1035$unknown:16| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) true true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) true true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) true (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= |$knormal:31| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|fail$unknown:25| |$knormal:34| |$knormal:33|) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (= |$alpha-20:u| 1) (not (= 0 |$knormal:30|)) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      (|f_1035$unknown:5| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| 1) (= (not (= 0 |$knormal:30|)) (and (not (= 0 |$knormal:25|)) (not (= 0 |$knormal:29|)))) (= (not (= 0 |$knormal:29|)) (>= |$knormal:28| 0)) (= |$knormal:28| (+ |$knormal:26| |$knormal:27|)) (= |$knormal:27| |$alpha-18:n_1036|) (= |$knormal:26| 0) (= (not (= 0 |$knormal:25|)) (> |$knormal:21| |$knormal:24|)) (= |$knormal:24| (+ |$knormal:22| |$knormal:23|)) (= |$knormal:23| |$alpha-18:n_1036|) (= |$knormal:22| 0) (= |$knormal:21| (+ |$knormal:19| |$knormal:20|)) (= |$knormal:20| |$alpha-17:s_prev_f_n_1179|) (= |$knormal:19| 0) (not (not (= 0 |$knormal:30|))) (not (= 0 |$alpha-16:prev_set_flag_f_1180|)) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      (|fail$unknown:24| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:prev_set_flag_f_1180| Int) (|$alpha-17:s_prev_f_n_1179| Int) (|$alpha-18:n_1036| Int) (|$alpha-20:u| Int) )
    (=>
      ( and (= |$alpha-20:u| 1) (not (not (= 0 |$alpha-16:prev_set_flag_f_1180|))) (|f_1035$unknown:12| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|) true true )
      (|f_1035$unknown:5| |$alpha-18:n_1036| |$alpha-17:s_prev_f_n_1179| |$alpha-16:prev_set_flag_f_1180|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$V-reftype:29| Int) (|$V-reftype:30| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:44| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true (|f_1035$unknown:16| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$knormal:44| |$knormal:42| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181|) )
      (|g_1032$unknown:34| |$V-reftype:30| |$V-reftype:29| |$V-reftype:27| |$knormal:44| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181| |$knormal:48| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true (|f_1035$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true true (|f_1035$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true true true (|f_1035$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:36| Int) (|$V-reftype:38| Int) (|$V-reftype:40| Int) (|$V-reftype:42| Int) (|$V-reftype:43| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:23| |$V-reftype:43| |$V-reftype:42| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true true true (|f_1035$unknown:5| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|) true true )
      (|f_1035$unknown:9| |$V-reftype:43| |$V-reftype:42| |$V-reftype:40| |$V-reftype:38| |$V-reftype:36| |$V-reftype:34| |f_without_checking_1189|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$V-reftype:8| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) (|f_without_checking_1189| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true (|f_1035$unknown:5| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1189|) true true )
      (|f_without_checking_1189$unknown:19| |$V-reftype:8| |$V-reftype:34| |f_without_checking_1189|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:35|)) true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$V-reftype:68| Int) (|$V-reftype:70| Int) (|$V-reftype:71| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|g_1032$unknown:38| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181| |$knormal:48| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181|) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      (|f_without_checking_1189$unknown:23| |$V-reftype:71| |$V-reftype:70| |$V-reftype:68| |$V-reftype:66| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:35|)) true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:35|)) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$V-reftype:80| Int) (|$V-reftype:82| Int) (|$V-reftype:83| Int) (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (= 0 |$knormal:35|)) (|succ_1030$unknown:42| |$V-reftype:83| |$V-reftype:82| |$V-reftype:80| |$V-reftype:78|) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      (|f_without_checking_1189$unknown:23| |$V-reftype:83| |$V-reftype:82| |$V-reftype:80| |$V-reftype:78| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) true true (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:42| Int) (|$knormal:48| Int) )
    (=>
      ( and (= |$knormal:48| (+ |$knormal:36| |$alpha-24:c1_COEFFICIENT_1086|)) (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= |$knormal:36| (* |$alpha-25:c0_COEFFICIENT_1085| |$alpha-23:n_1036|)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-21:set_flag_f_1181| Int) (|$alpha-22:s_f_n_1178| Int) (|$alpha-23:n_1036| Int) (|$alpha-24:c1_COEFFICIENT_1086| Int) (|$alpha-25:c0_COEFFICIENT_1085| Int) (|$alpha-26:set_flag_f_1181| Int) (|$knormal:35| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:42| (- |$alpha-23:n_1036| 1)) (= (not (= 0 |$knormal:35|)) (= |$alpha-23:n_1036| 0)) (= |$alpha-26:set_flag_f_1181| 1) (= |$alpha-25:c0_COEFFICIENT_1085| 0) (= |$alpha-24:c1_COEFFICIENT_1086| 0) (not (not (= 0 |$knormal:35|))) (|f_without_checking_1189$unknown:19| |$alpha-23:n_1036| |$alpha-22:s_f_n_1178| |$alpha-21:set_flag_f_1181|) true true )
      (|f_1035$unknown:12| |$knormal:42| |$alpha-23:n_1036| |$alpha-26:set_flag_f_1181|)
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
  (forall ( (|$V-reftype:88| Int) (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:13| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:88| |$knormal:13|) true true true (|g_1032$unknown:34| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) (|g_1032$unknown:34| |$knormal:13| |$knormal:7| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      (|g_1032$unknown:38| |$V-reftype:88| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:34| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:34| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x_DO_NOT_CARE_1214| Int) (|$alpha-12:set_flag_f_1181| Int) (|$alpha-13:s_f_n_1178| Int) (|$alpha-14:a_1034| Int) (|$alpha-6:x_DO_NOT_CARE_1215| Int) (|$alpha-7:x_DO_NOT_CARE_1216| Int) (|$alpha-8:r_EXPARAM_1088| Int) (|$alpha-9:x_DO_NOT_CARE_1213| Int) (|$knormal:7| Int) )
    (=>
      ( and true true true (|g_1032$unknown:34| |$knormal:7| |$alpha-14:a_1034| |$alpha-13:s_f_n_1178| |$alpha-12:set_flag_f_1181| |$alpha-10:x_DO_NOT_CARE_1214| |$alpha-9:x_DO_NOT_CARE_1213| |$alpha-8:r_EXPARAM_1088| |$alpha-7:x_DO_NOT_CARE_1216| |$alpha-6:x_DO_NOT_CARE_1215|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:87| Int) (|$alpha-3:set_flag_f_1181| Int) (|$alpha-4:s_f_n_1178| Int) (|$alpha-5:n_1031| Int) )
    (=>
      ( and (= |$V-reftype:87| (+ |$alpha-5:n_1031| 1)) true true true )
      (|succ_1030$unknown:42| |$V-reftype:87| |$alpha-5:n_1031| |$alpha-4:s_f_n_1178| |$alpha-3:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      (|f_without_checking_1189$unknown:19| |$alpha-28:n_1038| |$alpha-33:s_f_n_1178| |$alpha-32:set_flag_f_1181|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-28:n_1038| Int) (|$alpha-29:x_1039| Int) (|$alpha-30:x_DO_NOT_CARE_1211| Int) (|$alpha-31:x_DO_NOT_CARE_1212| Int) (|$alpha-32:set_flag_f_1181| Int) (|$alpha-33:s_f_n_1178| Int) (|$knormal:58| Int) (|$knormal:59| Int) (|$knormal:60| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:60|)) (and (not (= 0 |$knormal:58|)) (not (= 0 |$knormal:59|)))) (= (not (= 0 |$knormal:59|)) (>= |$alpha-29:x_1039| 0)) (= (not (= 0 |$knormal:58|)) (>= |$alpha-28:n_1038| 0)) (= |$alpha-33:s_f_n_1178| 0) (= |$alpha-32:set_flag_f_1181| 0) (= |$alpha-31:x_DO_NOT_CARE_1212| 0) (= |$alpha-30:x_DO_NOT_CARE_1211| 0) (not (= 0 |$knormal:60|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

