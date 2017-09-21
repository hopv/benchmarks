(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec append_1030 append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075 x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058 s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032 =
       let u = if prev_set_flag_append_1058 then
                if ((0 * 1) + (1 * s_prev_append_xs_1056)) +
                   (0 * s_prev_append_ys_1057) >
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                   ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
                  ()
                else
                  let u_3245 = fail ()
                  in
                    bot()
               else () in
              append_without_checking_1072 x_DO_NOT_CARE_1074 x_DO_NOT_CARE_1075
                x_DO_NOT_CARE_1076 xs_1031 prev_set_flag_append_1058
                s_prev_append_xs_1056 s_prev_append_ys_1057 ys_1032
  
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
             append_1030 append_without_checking_1072 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
               xs'_1033 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055
               ys_1032
  
     let main_1034 set_flag_append_1059 s_append_xs_1054 s_append_ys_1055 u_1035  l1_1036 l2_1037 =
         append_without_checking_1072 set_flag_append_1059 s_append_xs_1054
           s_append_ys_1055 l1_1036 set_flag_append_1059 s_append_xs_1054
           s_append_ys_1055 l2_1037
  
  let main =
       main_1034 false 0 0 ()
")

(set-logic HORN)

(declare-fun |append_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |append_without_checking_1072$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:622| Int) (|$cond-alpha-rename:623| Int) (|$cond-alpha-rename:624| Int) (|$cond-alpha-rename:625| Int) (|$cond-alpha-rename:626| Int) (|$cond-alpha-rename:627| Int) (|$cond-alpha-rename:628| Int) (|$cond-alpha-rename:629| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:653| Int) )
    (=>
      ( and (not (<= |$alpha-17:xs_1031| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:625|) 0) (+ (+ 0 (- |$cond-alpha-rename:625| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:625| 1)) 0) 0))) (not (<= |$cond-alpha-rename:625| 0)) (not (= 0 1)) (|fail$unknown:31| |$cond-alpha-rename:653| 1) (|bot$unknown:29| |$cond-alpha-rename:651| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:629| |$cond-alpha-rename:628| |$cond-alpha-rename:627| |$cond-alpha-rename:626| |$cond-alpha-rename:625| |$cond-alpha-rename:624| |$cond-alpha-rename:623| |$cond-alpha-rename:622|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:629| |$cond-alpha-rename:629| |$cond-alpha-rename:625| 1 (- |$cond-alpha-rename:625| 1) |$cond-alpha-rename:629| |$cond-alpha-rename:625| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:658| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:660| Int) (|$cond-alpha-rename:661| Int) )
    (=>
      ( and (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$cond-alpha-rename:657| 0)) (> (+ (+ 0 |$cond-alpha-rename:657|) 0) (+ (+ 0 (- |$cond-alpha-rename:657| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:657| 1)) 0) 0) (not (= 0 1)) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:661| |$cond-alpha-rename:660| |$cond-alpha-rename:659| |$cond-alpha-rename:658| |$cond-alpha-rename:657| |$cond-alpha-rename:656| |$cond-alpha-rename:655| |$cond-alpha-rename:654|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:661| |$cond-alpha-rename:661| |$cond-alpha-rename:657| 1 (- |$cond-alpha-rename:657| 1) |$cond-alpha-rename:661| |$cond-alpha-rename:657| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1078| Int) (|$alpha-15:x_DO_NOT_CARE_1079| Int) (|$alpha-16:x_DO_NOT_CARE_1080| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_append_1059| Int) (|$alpha-19:s_append_xs_1054| Int) (|$alpha-20:s_append_ys_1055| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) (|$cond-alpha-rename:689| Int) )
    (=>
      ( and (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$cond-alpha-rename:685| 0)) (not (not (= 0 1))) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:689| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682|) (|append_without_checking_1072$unknown:26| |$alpha-21:ys_1032| |$alpha-20:s_append_ys_1055| |$alpha-19:s_append_xs_1054| |$alpha-18:set_flag_append_1059| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1080| |$alpha-15:x_DO_NOT_CARE_1079| |$alpha-14:x_DO_NOT_CARE_1078|) )
      (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:689| |$cond-alpha-rename:689| |$cond-alpha-rename:685| 1 (- |$cond-alpha-rename:685| 1) |$cond-alpha-rename:689| |$cond-alpha-rename:685| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:692| Int) (|$cond-alpha-rename:693| Int) (|$cond-alpha-rename:694| Int) (|$cond-alpha-rename:695| Int) (|$cond-alpha-rename:696| Int) (|$cond-alpha-rename:697| Int) (|$cond-alpha-rename:698| Int) (|$cond-alpha-rename:699| Int) (|$cond-alpha-rename:721| Int) (|$cond-alpha-rename:723| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:695| 1) (- |$cond-alpha-rename:695| 1)) (= 1 1) (not (and (>= (- |$cond-alpha-rename:695| 1) 0) (> |$cond-alpha-rename:695| (- |$cond-alpha-rename:695| 1)))) (not (<= (- |$cond-alpha-rename:695| 1) 0)) (not (<= |$cond-alpha-rename:219| 0)) (not (<= |$cond-alpha-rename:695| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:695|) 0) (+ (+ 0 (- |$cond-alpha-rename:695| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:695| 1)) 0) 0))) (not (<= |$cond-alpha-rename:695| 0)) (|fail$unknown:31| |$knormal:39| 1) (|fail$unknown:31| |$cond-alpha-rename:723| 1) (|bot$unknown:29| |$knormal:37| 1) (|bot$unknown:29| |$cond-alpha-rename:721| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:699| |$cond-alpha-rename:698| |$cond-alpha-rename:697| |$cond-alpha-rename:696| |$cond-alpha-rename:695| |$cond-alpha-rename:694| |$cond-alpha-rename:693| |$cond-alpha-rename:692|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:699| |$cond-alpha-rename:699| |$cond-alpha-rename:695| 1 (- |$cond-alpha-rename:695| 1) |$cond-alpha-rename:699| |$cond-alpha-rename:695| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:699| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:695| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|append_1030$unknown:18| |$cond-alpha-rename:524| |$cond-alpha-rename:699| |$cond-alpha-rename:699| (- |$cond-alpha-rename:695| 1) 1 (- (- |$cond-alpha-rename:695| 1) 1) |$cond-alpha-rename:699| (- |$cond-alpha-rename:695| 1) 1) )
      (|append_1030$unknown:18| (+ 1 |$cond-alpha-rename:524|) |$cond-alpha-rename:699| |$cond-alpha-rename:699| |$cond-alpha-rename:695| 1 (- |$cond-alpha-rename:695| 1) |$cond-alpha-rename:699| |$cond-alpha-rename:695| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:724| Int) (|$cond-alpha-rename:725| Int) (|$cond-alpha-rename:726| Int) (|$cond-alpha-rename:727| Int) (|$cond-alpha-rename:728| Int) (|$cond-alpha-rename:729| Int) (|$cond-alpha-rename:730| Int) (|$cond-alpha-rename:731| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (= (- |$cond-alpha-rename:727| 1) (- |$cond-alpha-rename:727| 1)) (= 1 1) (not (and (>= (- |$cond-alpha-rename:727| 1) 0) (> |$cond-alpha-rename:727| (- |$cond-alpha-rename:727| 1)))) (not (<= (- |$cond-alpha-rename:727| 1) 0)) (not (<= |$cond-alpha-rename:219| 0)) (not (<= |$cond-alpha-rename:727| 0)) (not (<= |$cond-alpha-rename:727| 0)) (> (+ (+ 0 |$cond-alpha-rename:727|) 0) (+ (+ 0 (- |$cond-alpha-rename:727| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:727| 1)) 0) 0) (|fail$unknown:31| |$knormal:39| 1) (|bot$unknown:29| |$knormal:37| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:731| |$cond-alpha-rename:730| |$cond-alpha-rename:729| |$cond-alpha-rename:728| |$cond-alpha-rename:727| |$cond-alpha-rename:726| |$cond-alpha-rename:725| |$cond-alpha-rename:724|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:731| |$cond-alpha-rename:731| |$cond-alpha-rename:727| 1 (- |$cond-alpha-rename:727| 1) |$cond-alpha-rename:731| |$cond-alpha-rename:727| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:731| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:727| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) (|append_1030$unknown:18| |$cond-alpha-rename:524| |$cond-alpha-rename:731| |$cond-alpha-rename:731| (- |$cond-alpha-rename:727| 1) 1 (- (- |$cond-alpha-rename:727| 1) 1) |$cond-alpha-rename:731| (- |$cond-alpha-rename:727| 1) 1) )
      (|append_1030$unknown:18| (+ 1 |$cond-alpha-rename:524|) |$cond-alpha-rename:731| |$cond-alpha-rename:731| |$cond-alpha-rename:727| 1 (- |$cond-alpha-rename:727| 1) |$cond-alpha-rename:731| |$cond-alpha-rename:727| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:762| Int) (|$cond-alpha-rename:763| Int) (|$cond-alpha-rename:764| Int) (|$cond-alpha-rename:765| Int) (|$cond-alpha-rename:766| Int) (|$cond-alpha-rename:767| Int) (|$cond-alpha-rename:768| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:793| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (<= (- |$cond-alpha-rename:765| 1) 0) (= (- |$cond-alpha-rename:765| 1) (- |$cond-alpha-rename:765| 1)) (= 1 1) (not (and (>= (- |$cond-alpha-rename:765| 1) 0) (> |$cond-alpha-rename:765| (- |$cond-alpha-rename:765| 1)))) (not (<= |$cond-alpha-rename:219| 0)) (not (<= |$cond-alpha-rename:765| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:765|) 0) (+ (+ 0 (- |$cond-alpha-rename:765| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:765| 1)) 0) 0))) (not (<= |$cond-alpha-rename:765| 0)) (|fail$unknown:31| |$knormal:39| 1) (|fail$unknown:31| |$cond-alpha-rename:793| 1) (|bot$unknown:29| |$knormal:37| 1) (|bot$unknown:29| |$cond-alpha-rename:791| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:769| |$cond-alpha-rename:768| |$cond-alpha-rename:767| |$cond-alpha-rename:766| |$cond-alpha-rename:765| |$cond-alpha-rename:764| |$cond-alpha-rename:763| |$cond-alpha-rename:762|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:769| |$cond-alpha-rename:769| |$cond-alpha-rename:765| 1 (- |$cond-alpha-rename:765| 1) |$cond-alpha-rename:769| |$cond-alpha-rename:765| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:769| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:765| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) )
      (|append_1030$unknown:18| |$cond-alpha-rename:769| |$cond-alpha-rename:769| |$cond-alpha-rename:769| |$cond-alpha-rename:765| 1 (- |$cond-alpha-rename:765| 1) |$cond-alpha-rename:769| |$cond-alpha-rename:765| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:794| Int) (|$cond-alpha-rename:795| Int) (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:797| Int) (|$cond-alpha-rename:798| Int) (|$cond-alpha-rename:799| Int) (|$cond-alpha-rename:800| Int) (|$cond-alpha-rename:801| Int) (|$knormal:37| Int) (|$knormal:39| Int) )
    (=>
      ( and (<= (- |$cond-alpha-rename:797| 1) 0) (= (- |$cond-alpha-rename:797| 1) (- |$cond-alpha-rename:797| 1)) (= 1 1) (not (and (>= (- |$cond-alpha-rename:797| 1) 0) (> |$cond-alpha-rename:797| (- |$cond-alpha-rename:797| 1)))) (not (<= |$cond-alpha-rename:219| 0)) (not (<= |$cond-alpha-rename:797| 0)) (not (<= |$cond-alpha-rename:797| 0)) (> (+ (+ 0 |$cond-alpha-rename:797|) 0) (+ (+ 0 (- |$cond-alpha-rename:797| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:797| 1)) 0) 0) (|fail$unknown:31| |$knormal:39| 1) (|bot$unknown:29| |$knormal:37| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:801| |$cond-alpha-rename:800| |$cond-alpha-rename:799| |$cond-alpha-rename:798| |$cond-alpha-rename:797| |$cond-alpha-rename:796| |$cond-alpha-rename:795| |$cond-alpha-rename:794|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:223| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:801| |$cond-alpha-rename:801| |$cond-alpha-rename:797| 1 (- |$cond-alpha-rename:797| 1) |$cond-alpha-rename:801| |$cond-alpha-rename:797| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:801| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$cond-alpha-rename:797| |$cond-alpha-rename:16| |$cond-alpha-rename:15| |$cond-alpha-rename:14|) )
      (|append_1030$unknown:18| |$cond-alpha-rename:801| |$cond-alpha-rename:801| |$cond-alpha-rename:801| |$cond-alpha-rename:797| 1 (- |$cond-alpha-rename:797| 1) |$cond-alpha-rename:801| |$cond-alpha-rename:797| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:832| Int) (|$cond-alpha-rename:833| Int) (|$cond-alpha-rename:834| Int) (|$cond-alpha-rename:835| Int) (|$cond-alpha-rename:836| Int) (|$cond-alpha-rename:837| Int) (|$cond-alpha-rename:838| Int) (|$cond-alpha-rename:839| Int) (|$cond-alpha-rename:861| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (> |$cond-alpha-rename:835| (- |$cond-alpha-rename:835| 1)) (>= (- |$cond-alpha-rename:835| 1) 0) (= (- |$cond-alpha-rename:835| 1) (- |$cond-alpha-rename:835| 1)) (= 1 1) (not (<= (- |$cond-alpha-rename:835| 1) 0)) (not (<= |$cond-alpha-rename:835| 0)) (not (<= |$cond-alpha-rename:229| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:835|) 0) (+ (+ 0 (- |$cond-alpha-rename:835| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:835| 1)) 0) 0))) (not (<= |$cond-alpha-rename:835| 0)) (|fail$unknown:31| |$cond-alpha-rename:863| 1) (|bot$unknown:29| |$cond-alpha-rename:861| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:839| |$cond-alpha-rename:838| |$cond-alpha-rename:837| |$cond-alpha-rename:836| |$cond-alpha-rename:835| |$cond-alpha-rename:834| |$cond-alpha-rename:833| |$cond-alpha-rename:832|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:839| |$cond-alpha-rename:839| |$cond-alpha-rename:835| 1 (- |$cond-alpha-rename:835| 1) |$cond-alpha-rename:839| |$cond-alpha-rename:835| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:839| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:835| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:229| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) (|append_1030$unknown:18| |$cond-alpha-rename:529| |$cond-alpha-rename:839| |$cond-alpha-rename:839| (- |$cond-alpha-rename:835| 1) 1 (- (- |$cond-alpha-rename:835| 1) 1) |$cond-alpha-rename:839| (- |$cond-alpha-rename:835| 1) 1) )
      (|append_1030$unknown:18| (+ 1 |$cond-alpha-rename:529|) |$cond-alpha-rename:839| |$cond-alpha-rename:839| |$cond-alpha-rename:835| 1 (- |$cond-alpha-rename:835| 1) |$cond-alpha-rename:839| |$cond-alpha-rename:835| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:864| Int) (|$cond-alpha-rename:865| Int) (|$cond-alpha-rename:866| Int) (|$cond-alpha-rename:867| Int) (|$cond-alpha-rename:868| Int) (|$cond-alpha-rename:869| Int) (|$cond-alpha-rename:870| Int) (|$cond-alpha-rename:871| Int) )
    (=>
      ( and (> |$cond-alpha-rename:867| (- |$cond-alpha-rename:867| 1)) (>= (- |$cond-alpha-rename:867| 1) 0) (= (- |$cond-alpha-rename:867| 1) (- |$cond-alpha-rename:867| 1)) (= 1 1) (not (<= (- |$cond-alpha-rename:867| 1) 0)) (not (<= |$cond-alpha-rename:867| 0)) (not (<= |$cond-alpha-rename:229| 0)) (not (<= |$cond-alpha-rename:867| 0)) (> (+ (+ 0 |$cond-alpha-rename:867|) 0) (+ (+ 0 (- |$cond-alpha-rename:867| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:867| 1)) 0) 0) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:871| |$cond-alpha-rename:870| |$cond-alpha-rename:869| |$cond-alpha-rename:868| |$cond-alpha-rename:867| |$cond-alpha-rename:866| |$cond-alpha-rename:865| |$cond-alpha-rename:864|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:871| |$cond-alpha-rename:871| |$cond-alpha-rename:867| 1 (- |$cond-alpha-rename:867| 1) |$cond-alpha-rename:871| |$cond-alpha-rename:867| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:871| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:867| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:229| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) (|append_1030$unknown:18| |$cond-alpha-rename:529| |$cond-alpha-rename:871| |$cond-alpha-rename:871| (- |$cond-alpha-rename:867| 1) 1 (- (- |$cond-alpha-rename:867| 1) 1) |$cond-alpha-rename:871| (- |$cond-alpha-rename:867| 1) 1) )
      (|append_1030$unknown:18| (+ 1 |$cond-alpha-rename:529|) |$cond-alpha-rename:871| |$cond-alpha-rename:871| |$cond-alpha-rename:867| 1 (- |$cond-alpha-rename:867| 1) |$cond-alpha-rename:871| |$cond-alpha-rename:867| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:902| Int) (|$cond-alpha-rename:903| Int) (|$cond-alpha-rename:904| Int) (|$cond-alpha-rename:905| Int) (|$cond-alpha-rename:906| Int) (|$cond-alpha-rename:907| Int) (|$cond-alpha-rename:908| Int) (|$cond-alpha-rename:909| Int) (|$cond-alpha-rename:931| Int) (|$cond-alpha-rename:933| Int) )
    (=>
      ( and (> |$cond-alpha-rename:905| (- |$cond-alpha-rename:905| 1)) (>= (- |$cond-alpha-rename:905| 1) 0) (<= (- |$cond-alpha-rename:905| 1) 0) (= (- |$cond-alpha-rename:905| 1) (- |$cond-alpha-rename:905| 1)) (= 1 1) (not (<= |$cond-alpha-rename:905| 0)) (not (<= |$cond-alpha-rename:229| 0)) (not (and (> (+ (+ 0 |$cond-alpha-rename:905|) 0) (+ (+ 0 (- |$cond-alpha-rename:905| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:905| 1)) 0) 0))) (not (<= |$cond-alpha-rename:905| 0)) (|fail$unknown:31| |$cond-alpha-rename:933| 1) (|bot$unknown:29| |$cond-alpha-rename:931| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:909| |$cond-alpha-rename:908| |$cond-alpha-rename:907| |$cond-alpha-rename:906| |$cond-alpha-rename:905| |$cond-alpha-rename:904| |$cond-alpha-rename:903| |$cond-alpha-rename:902|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:909| |$cond-alpha-rename:909| |$cond-alpha-rename:905| 1 (- |$cond-alpha-rename:905| 1) |$cond-alpha-rename:909| |$cond-alpha-rename:905| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:909| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:905| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:229| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) )
      (|append_1030$unknown:18| |$cond-alpha-rename:909| |$cond-alpha-rename:909| |$cond-alpha-rename:909| |$cond-alpha-rename:905| 1 (- |$cond-alpha-rename:905| 1) |$cond-alpha-rename:909| |$cond-alpha-rename:905| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:934| Int) (|$cond-alpha-rename:935| Int) (|$cond-alpha-rename:936| Int) (|$cond-alpha-rename:937| Int) (|$cond-alpha-rename:938| Int) (|$cond-alpha-rename:939| Int) (|$cond-alpha-rename:940| Int) (|$cond-alpha-rename:941| Int) )
    (=>
      ( and (> |$cond-alpha-rename:937| (- |$cond-alpha-rename:937| 1)) (>= (- |$cond-alpha-rename:937| 1) 0) (<= (- |$cond-alpha-rename:937| 1) 0) (= (- |$cond-alpha-rename:937| 1) (- |$cond-alpha-rename:937| 1)) (= 1 1) (not (<= |$cond-alpha-rename:937| 0)) (not (<= |$cond-alpha-rename:229| 0)) (not (<= |$cond-alpha-rename:937| 0)) (> (+ (+ 0 |$cond-alpha-rename:937|) 0) (+ (+ 0 (- |$cond-alpha-rename:937| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:937| 1)) 0) 0) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:941| |$cond-alpha-rename:940| |$cond-alpha-rename:939| |$cond-alpha-rename:938| |$cond-alpha-rename:937| |$cond-alpha-rename:936| |$cond-alpha-rename:935| |$cond-alpha-rename:934|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:941| |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1 (- |$cond-alpha-rename:937| 1) |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:941| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$cond-alpha-rename:28| |$cond-alpha-rename:937| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24|) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230| |$cond-alpha-rename:229| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) )
      (|append_1030$unknown:18| |$cond-alpha-rename:941| |$cond-alpha-rename:941| |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1 (- |$cond-alpha-rename:937| 1) |$cond-alpha-rename:941| |$cond-alpha-rename:937| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:29| |$knormal:2| 1) )
      (|bot$unknown:29| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:345| Int) )
    ( and (not (and (> (+ (+ 0 |$cond-alpha-rename:341|) 0) (+ (+ 0 (- |$cond-alpha-rename:341| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:341| 1)) 0) 0))) (not (<= |$cond-alpha-rename:341| 0)) (not (= 0 1)) (|append_without_checking_1072$unknown:26| |$cond-alpha-rename:345| |$cond-alpha-rename:344| |$cond-alpha-rename:343| |$cond-alpha-rename:342| |$cond-alpha-rename:341| |$cond-alpha-rename:340| |$cond-alpha-rename:339| |$cond-alpha-rename:338|) )
    )
  )
)
(assert
  (forall ( (|$alpha-30:l1_1036| Int) (|$alpha-31:l2_1037| Int) )
    (=>
      ( and true )
      (|append_without_checking_1072$unknown:26| |$alpha-31:l2_1037| 0 0 0 |$alpha-30:l1_1036| 0 0 0)
    )
  )
)
(check-sat)

(get-model)

