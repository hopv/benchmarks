(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
  let rec zip_1030 zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080 x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062 s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032 =
    let u =if prev_set_flag_zip_1062 then
             if ((0 * 1) + (1 * s_prev_zip_xs_1060)) +
                (0 * s_prev_zip_ys_1061) >
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) &&
                ((0 * 1) + (1 * xs_1031)) + (0 * ys_1032) >= 0 then
               ()
             else
               let u_3427 = fail ()
               in
                 bot()
           else () in
           zip_without_checking_1077 x_DO_NOT_CARE_1079 x_DO_NOT_CARE_1080
             x_DO_NOT_CARE_1081 xs_1031 prev_set_flag_zip_1062
             s_prev_zip_xs_1060 s_prev_zip_ys_1061 ys_1032
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
              zip_1030 zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 xs'_1033
                set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 ys'_1034
  
  let main_1035 l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_without_checking_1077 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059
        l1_1037 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |fail$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |main_1035$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |zip_without_checking_1077$unknown:33|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:648| Int) (|$cond-alpha-rename:649| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:655| Int) )
    ( and (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:655| |$cond-alpha-rename:654| |$cond-alpha-rename:653| |$cond-alpha-rename:652| |$cond-alpha-rename:651| |$cond-alpha-rename:650| |$cond-alpha-rename:649| |$cond-alpha-rename:648|) (not (= 0 1)) (not (and (> (+ (+ 0 |$cond-alpha-rename:651|) 0) (+ (+ 0 (- |$cond-alpha-rename:651| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:651| 1)) 0) 0))) (not (<= |$cond-alpha-rename:651| 0)) (not (<= |$cond-alpha-rename:655| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-27:l1_1037| Int) (|$alpha-28:l2_1038| Int) )
    (=>
      ( and (|main_1035$unknown:6| |$alpha-28:l2_1038| |$alpha-27:l1_1037|) )
      (|zip_without_checking_1077$unknown:33| |$alpha-28:l2_1038| 0 0 0 |$alpha-27:l1_1037| 0 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:660| Int) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:663| Int) (|$cond-alpha-rename:664| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:666| Int) )
    (=>
      ( and (|bot$unknown:2| |$cond-alpha-rename:58| 1) (|fail$unknown:4| |$cond-alpha-rename:60| 1) (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:666| |$cond-alpha-rename:665| |$cond-alpha-rename:664| |$cond-alpha-rename:663| |$cond-alpha-rename:662| |$cond-alpha-rename:661| |$cond-alpha-rename:660| |$cond-alpha-rename:659|) (not (= 0 1)) (not (and (> (+ (+ 0 |$cond-alpha-rename:662|) 0) (+ (+ 0 (- |$cond-alpha-rename:662| 1)) 0)) (>= (+ (+ 0 (- |$cond-alpha-rename:662| 1)) 0) 0))) (not (<= |$cond-alpha-rename:662| 0)) (not (<= |$cond-alpha-rename:666| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:666| 1) |$cond-alpha-rename:666| |$cond-alpha-rename:662| 1 (- |$cond-alpha-rename:662| 1) |$cond-alpha-rename:666| |$cond-alpha-rename:662| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:674| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:674| |$cond-alpha-rename:673| |$cond-alpha-rename:672| |$cond-alpha-rename:671| |$cond-alpha-rename:670|) (not (= 0 1)) (>= (+ (+ 0 (- |$cond-alpha-rename:673| 1)) 0) 0) (> (+ (+ 0 |$cond-alpha-rename:673|) 0) (+ (+ 0 (- |$cond-alpha-rename:673| 1)) 0)) (not (<= |$cond-alpha-rename:673| 0)) (not (<= |$cond-alpha-rename:677| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:677| 1) |$cond-alpha-rename:677| |$cond-alpha-rename:673| 1 (- |$cond-alpha-rename:673| 1) |$cond-alpha-rename:677| |$cond-alpha-rename:673| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1083| Int) (|$alpha-15:x_DO_NOT_CARE_1084| Int) (|$alpha-16:x_DO_NOT_CARE_1085| Int) (|$alpha-17:xs_1031| Int) (|$alpha-18:set_flag_zip_1063| Int) (|$alpha-19:s_zip_xs_1058| Int) (|$alpha-20:s_zip_ys_1059| Int) (|$alpha-21:ys_1032| Int) (|$cond-alpha-rename:681| Int) (|$cond-alpha-rename:682| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:684| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:686| Int) (|$cond-alpha-rename:687| Int) (|$cond-alpha-rename:688| Int) )
    (=>
      ( and (|zip_without_checking_1077$unknown:33| |$alpha-21:ys_1032| |$alpha-20:s_zip_ys_1059| |$alpha-19:s_zip_xs_1058| |$alpha-18:set_flag_zip_1063| |$alpha-17:xs_1031| |$alpha-16:x_DO_NOT_CARE_1085| |$alpha-15:x_DO_NOT_CARE_1084| |$alpha-14:x_DO_NOT_CARE_1083|) (|zip_without_checking_1077$unknown:33| |$cond-alpha-rename:688| |$cond-alpha-rename:687| |$cond-alpha-rename:686| |$cond-alpha-rename:685| |$cond-alpha-rename:684| |$cond-alpha-rename:683| |$cond-alpha-rename:682| |$cond-alpha-rename:681|) (not (not (= 0 1))) (not (<= |$cond-alpha-rename:684| 0)) (not (<= |$cond-alpha-rename:688| 0)) (not (<= |$alpha-17:xs_1031| 0)) (not (<= |$alpha-21:ys_1032| 0)) )
      (|zip_without_checking_1077$unknown:33| (- |$cond-alpha-rename:688| 1) |$cond-alpha-rename:688| |$cond-alpha-rename:684| 1 (- |$cond-alpha-rename:684| 1) |$cond-alpha-rename:688| |$cond-alpha-rename:684| 1)
    )
  )
)
(check-sat)

(get-model)

