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
  
  let main l1_1037 l2_1038 =
    let set_flag_zip_1063 = false in
    let s_zip_xs_1058 = 0 in
    let s_zip_ys_1059 = 0 in
      zip_1030 set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l1_1037
        set_flag_zip_1063 s_zip_xs_1058 s_zip_ys_1059 l2_1038
")

(set-logic HORN)

(declare-fun |zip_without_checking_1077$unknown:22|
  ( Int Int Int Int Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-10:ys_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-6:xs_1031| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-9:s_zip_ys_1059| Int) (|$knormal:19| Int) )
    (=>
      ( and (not (<= |$alpha-10:ys_1032| 0)) (not (<= |$alpha-6:xs_1031| 0)) (|zip_without_checking_1077$unknown:22| |$knormal:19| (- |$alpha-10:ys_1032| 1) |$alpha-10:ys_1032| |$alpha-6:xs_1031| 1 (- |$alpha-6:xs_1031| 1) |$alpha-10:ys_1032| |$alpha-6:xs_1031| 1) )
      (|zip_without_checking_1077$unknown:22| (+ 1 |$knormal:19|) |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:ys_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-6:xs_1031| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-9:s_zip_ys_1059| Int) )
    (=>
      ( and (<= |$alpha-6:xs_1031| 0) )
      (|zip_without_checking_1077$unknown:22| 0 |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:ys_1032| Int) (|$alpha-3:x_DO_NOT_CARE_1083| Int) (|$alpha-4:x_DO_NOT_CARE_1084| Int) (|$alpha-5:x_DO_NOT_CARE_1085| Int) (|$alpha-6:xs_1031| Int) (|$alpha-7:set_flag_zip_1063| Int) (|$alpha-8:s_zip_xs_1058| Int) (|$alpha-9:s_zip_ys_1059| Int) )
    (=>
      ( and (not (<= |$alpha-6:xs_1031| 0)) (<= |$alpha-10:ys_1032| 0) )
      (|zip_without_checking_1077$unknown:22| 0 |$alpha-10:ys_1032| |$alpha-9:s_zip_ys_1059| |$alpha-8:s_zip_xs_1058| |$alpha-7:set_flag_zip_1063| |$alpha-6:xs_1031| |$alpha-5:x_DO_NOT_CARE_1085| |$alpha-4:x_DO_NOT_CARE_1084| |$alpha-3:x_DO_NOT_CARE_1083|)
    )
  )
)
(check-sat)

(get-model)

(exit)

