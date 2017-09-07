(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec lambda_without_checking_1078 set_flag_lambda_1063 s_lambda_x_1060 x_1033 =
       let set_flag_lambda_1063 = true
       in
       let s_lambda_x_1060 = x_1033
       in
         x_1033 + 1
  
     let rec lambda_1031 prev_set_flag_lambda_1062 s_prev_lambda_x_1061 x_1033 =
       let u = if prev_set_flag_lambda_1062 then
                let u_1175 = fail ()
                in
                  bot()
               else () in
              lambda_without_checking_1078 prev_set_flag_lambda_1062
                s_prev_lambda_x_1061 x_1033
  
     let rec f_1030 set_flag_lambda_1063 s_lambda_x_1060 x_1032 =
       if x_1032 > 0 then
         f_1030 set_flag_lambda_1063 s_lambda_x_1060 (x_1032 - 1)
       else
         lambda_1031
  
     let g_1034 = f_1030 false 0 1
  
     let main_1035 set_flag_lambda_1063 s_lambda_x_1060 u_1036 =
       g_1034 set_flag_lambda_1063 s_lambda_x_1060 2
  
     let main =
       main_1035 false 0 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f_1030$unknown:9|
  ( Int Int Int Int Int Int Int ) Bool
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

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:45| Int) (|$knormal:2| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:45| |$knormal:2|) (|bot$unknown:2| |$knormal:2| |$knormal:1|) (|bot$unknown:1| |$alpha-1:$$tmp::1|) )
      (|bot$unknown:2| |$V-reftype:45| |$alpha-1:$$tmp::1|)
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
  (forall ( (|$knormal:12| Bool) (|$V-reftype:10| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:6| |$V-reftype:10| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:6| |$V-reftype:10| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:12| Int) (|$V-reftype:11| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:7| |$V-reftype:12| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Bool) (|$V-reftype:14| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:8| |$V-reftype:14| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:16| Int) (|$V-reftype:15| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$V-reftype:11| Int) (|$V-reftype:13| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:8| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:9| |$V-reftype:16| |$V-reftype:15| |$V-reftype:13| |$V-reftype:11| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$cond-alpha-rename:233| Bool) (|$cond-alpha-rename:225| Bool) (|$cond-alpha-rename:143| Bool) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:149| Int) (|$V-reftype:25| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:227| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:137| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:236| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:231| Int) (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:234| Int) (|$cond-alpha-rename:139| Bool) (|$cond-alpha-rename:147| Bool) (|$cond-alpha-rename:229| Bool) (|$knormal:12| Bool) (|$cond-alpha-rename:150| Int) )
    (=>
      ( and (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$cond-alpha-rename:236| 1) (= |$cond-alpha-rename:234| 1) (= |$cond-alpha-rename:233| (> |$cond-alpha-rename:232| 0)) (= |$cond-alpha-rename:229| (> |$cond-alpha-rename:228| 0)) (= |$cond-alpha-rename:225| (> |$cond-alpha-rename:224| 0)) (= |$cond-alpha-rename:151| 1) (= |$cond-alpha-rename:150| (+ |$V-reftype:25| 1)) (= |$cond-alpha-rename:148| 1) (= |$cond-alpha-rename:147| (> |$cond-alpha-rename:146| 0)) (= |$cond-alpha-rename:143| (> |$cond-alpha-rename:142| 0)) (= |$cond-alpha-rename:139| (> |$cond-alpha-rename:138| 0)) (= |$V-reftype:26| |$cond-alpha-rename:150|) (not |$knormal:12|) (not |$cond-alpha-rename:233|) (not |$cond-alpha-rename:229|) (not |$cond-alpha-rename:225|) (not |$cond-alpha-rename:147|) (not |$cond-alpha-rename:143|) (not |$cond-alpha-rename:139|) (not (= |$V-reftype:21| 0)) (|fail$unknown:11| |$cond-alpha-rename:235| |$cond-alpha-rename:234|) (|fail$unknown:11| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:224| |$cond-alpha-rename:223| |$cond-alpha-rename:222|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:224| |$cond-alpha-rename:223| |$cond-alpha-rename:222|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:224| |$cond-alpha-rename:223| |$cond-alpha-rename:222|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$cond-alpha-rename:232| |$cond-alpha-rename:231| |$cond-alpha-rename:230|) (|f_1030$unknown:5| |$cond-alpha-rename:228| |$cond-alpha-rename:227| |$cond-alpha-rename:226|) (|f_1030$unknown:5| |$cond-alpha-rename:224| |$cond-alpha-rename:223| |$cond-alpha-rename:222|) (|f_1030$unknown:5| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:5| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140|) (|f_1030$unknown:5| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|bot$unknown:2| |$cond-alpha-rename:237| |$cond-alpha-rename:236|) (|bot$unknown:2| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$cond-alpha-rename:249| Bool) (|$cond-alpha-rename:241| Bool) (|$cond-alpha-rename:143| Bool) (|$cond-alpha-rename:148| Int) (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:138| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:152| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:240| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:246| Int) (|$V-reftype:25| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:139| Bool) (|$cond-alpha-rename:147| Bool) (|$cond-alpha-rename:245| Bool) (|$knormal:12| Bool) (|$cond-alpha-rename:150| Int) )
    (=>
      ( and (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$cond-alpha-rename:249| (> |$cond-alpha-rename:248| 0)) (= |$cond-alpha-rename:245| (> |$cond-alpha-rename:244| 0)) (= |$cond-alpha-rename:241| (> |$cond-alpha-rename:240| 0)) (= |$cond-alpha-rename:151| 1) (= |$cond-alpha-rename:150| (+ |$V-reftype:25| 1)) (= |$cond-alpha-rename:148| 1) (= |$cond-alpha-rename:147| (> |$cond-alpha-rename:146| 0)) (= |$cond-alpha-rename:143| (> |$cond-alpha-rename:142| 0)) (= |$cond-alpha-rename:139| (> |$cond-alpha-rename:138| 0)) (= |$V-reftype:26| |$cond-alpha-rename:150|) (not |$knormal:12|) (not |$cond-alpha-rename:249|) (not |$cond-alpha-rename:245|) (not |$cond-alpha-rename:241|) (not |$cond-alpha-rename:147|) (not |$cond-alpha-rename:143|) (not |$cond-alpha-rename:139|) (= |$V-reftype:21| 0) (not (= |$V-reftype:21| 0)) (|fail$unknown:11| |$cond-alpha-rename:149| |$cond-alpha-rename:148|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:240| |$cond-alpha-rename:239| |$cond-alpha-rename:238|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:240| |$cond-alpha-rename:239| |$cond-alpha-rename:238|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:244| |$cond-alpha-rename:243| |$cond-alpha-rename:242|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:240| |$cond-alpha-rename:239| |$cond-alpha-rename:238|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$cond-alpha-rename:248| |$cond-alpha-rename:247| |$cond-alpha-rename:246|) (|f_1030$unknown:5| |$cond-alpha-rename:244| |$cond-alpha-rename:243| |$cond-alpha-rename:242|) (|f_1030$unknown:5| |$cond-alpha-rename:240| |$cond-alpha-rename:239| |$cond-alpha-rename:238|) (|f_1030$unknown:5| |$cond-alpha-rename:146| |$cond-alpha-rename:145| |$cond-alpha-rename:144|) (|f_1030$unknown:5| |$cond-alpha-rename:142| |$cond-alpha-rename:141| |$cond-alpha-rename:140|) (|f_1030$unknown:5| |$cond-alpha-rename:138| |$cond-alpha-rename:137| |$cond-alpha-rename:136|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|bot$unknown:2| |$cond-alpha-rename:152| |$cond-alpha-rename:151|) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$cond-alpha-rename:261| Bool) (|$cond-alpha-rename:253| Bool) (|$cond-alpha-rename:160| Bool) (|$cond-alpha-rename:262| Int) (|$V-reftype:23| Int) (|$V-reftype:21| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:155| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:265| Int) (|$alpha-15:x_1032| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:258| Int) (|$V-reftype:25| Int) (|$cond-alpha-rename:263| Int) (|$cond-alpha-rename:156| Bool) (|$cond-alpha-rename:164| Bool) (|$cond-alpha-rename:257| Bool) (|$knormal:12| Bool) (|$cond-alpha-rename:165| Int) )
    (=>
      ( and (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$cond-alpha-rename:264| 1) (= |$cond-alpha-rename:262| 1) (= |$cond-alpha-rename:261| (> |$cond-alpha-rename:260| 0)) (= |$cond-alpha-rename:257| (> |$cond-alpha-rename:256| 0)) (= |$cond-alpha-rename:253| (> |$cond-alpha-rename:252| 0)) (= |$cond-alpha-rename:165| (+ |$V-reftype:25| 1)) (= |$cond-alpha-rename:164| (> |$cond-alpha-rename:163| 0)) (= |$cond-alpha-rename:160| (> |$cond-alpha-rename:159| 0)) (= |$cond-alpha-rename:156| (> |$cond-alpha-rename:155| 0)) (= |$V-reftype:26| |$cond-alpha-rename:165|) (not |$knormal:12|) (not |$cond-alpha-rename:261|) (not |$cond-alpha-rename:257|) (not |$cond-alpha-rename:253|) (not |$cond-alpha-rename:164|) (not |$cond-alpha-rename:160|) (not |$cond-alpha-rename:156|) (= |$V-reftype:21| 0) (not (= |$V-reftype:21| 0)) (|fail$unknown:11| |$cond-alpha-rename:263| |$cond-alpha-rename:262|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:260| |$cond-alpha-rename:259| |$cond-alpha-rename:258|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:260| |$cond-alpha-rename:259| |$cond-alpha-rename:258|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:256| |$cond-alpha-rename:255| |$cond-alpha-rename:254|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$cond-alpha-rename:260| |$cond-alpha-rename:259| |$cond-alpha-rename:258|) (|f_1030$unknown:5| |$cond-alpha-rename:256| |$cond-alpha-rename:255| |$cond-alpha-rename:254|) (|f_1030$unknown:5| |$cond-alpha-rename:252| |$cond-alpha-rename:251| |$cond-alpha-rename:250|) (|f_1030$unknown:5| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:5| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157|) (|f_1030$unknown:5| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|bot$unknown:2| |$cond-alpha-rename:265| |$cond-alpha-rename:264|) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$cond-alpha-rename:277| Bool) (|$cond-alpha-rename:269| Bool) (|$cond-alpha-rename:160| Bool) (|$V-reftype:25| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:271| Int) (|$cond-alpha-rename:266| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:154| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:275| Int) (|$V-reftype:21| Int) (|$V-reftype:23| Int) (|$cond-alpha-rename:156| Bool) (|$cond-alpha-rename:164| Bool) (|$cond-alpha-rename:273| Bool) (|$knormal:12| Bool) (|$cond-alpha-rename:165| Int) )
    (=>
      ( and (= |$knormal:12| (> |$alpha-15:x_1032| 0)) (= |$cond-alpha-rename:277| (> |$cond-alpha-rename:276| 0)) (= |$cond-alpha-rename:273| (> |$cond-alpha-rename:272| 0)) (= |$cond-alpha-rename:269| (> |$cond-alpha-rename:268| 0)) (= |$cond-alpha-rename:165| (+ |$V-reftype:25| 1)) (= |$cond-alpha-rename:164| (> |$cond-alpha-rename:163| 0)) (= |$cond-alpha-rename:160| (> |$cond-alpha-rename:159| 0)) (= |$cond-alpha-rename:156| (> |$cond-alpha-rename:155| 0)) (= |$V-reftype:26| |$cond-alpha-rename:165|) (not |$knormal:12|) (not |$cond-alpha-rename:277|) (not |$cond-alpha-rename:273|) (not |$cond-alpha-rename:269|) (not |$cond-alpha-rename:164|) (not |$cond-alpha-rename:160|) (not |$cond-alpha-rename:156|) (= |$V-reftype:21| 0) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:268| |$cond-alpha-rename:267| |$cond-alpha-rename:266|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:8| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:276| |$cond-alpha-rename:275| |$cond-alpha-rename:274|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:268| |$cond-alpha-rename:267| |$cond-alpha-rename:266|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:7| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:276| |$cond-alpha-rename:275| |$cond-alpha-rename:274|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:272| |$cond-alpha-rename:271| |$cond-alpha-rename:270|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:268| |$cond-alpha-rename:267| |$cond-alpha-rename:266|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157|) (|f_1030$unknown:6| |$V-reftype:21| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:6| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) (|f_1030$unknown:5| |$cond-alpha-rename:276| |$cond-alpha-rename:275| |$cond-alpha-rename:274|) (|f_1030$unknown:5| |$cond-alpha-rename:272| |$cond-alpha-rename:271| |$cond-alpha-rename:270|) (|f_1030$unknown:5| |$cond-alpha-rename:268| |$cond-alpha-rename:267| |$cond-alpha-rename:266|) (|f_1030$unknown:5| |$cond-alpha-rename:163| |$cond-alpha-rename:162| |$cond-alpha-rename:161|) (|f_1030$unknown:5| |$cond-alpha-rename:159| |$cond-alpha-rename:158| |$cond-alpha-rename:157|) (|f_1030$unknown:5| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$cond-alpha-rename:153|) (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) )
      (|f_1030$unknown:9| |$V-reftype:26| |$V-reftype:25| |$V-reftype:23| |$V-reftype:21| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$alpha-13:set_flag_lambda_1063| Int) (|$alpha-15:x_1032| Int) (|$alpha-14:s_lambda_x_1060| Int) (|$knormal:12| Bool) )
    (=>
      ( and (= |$knormal:16| (- |$alpha-15:x_1032| 1)) (= |$knormal:12| (> |$alpha-15:x_1032| 0)) |$knormal:12| (|f_1030$unknown:5| |$alpha-15:x_1032| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|) true true )
      (|f_1030$unknown:5| |$knormal:16| |$alpha-14:s_lambda_x_1060| |$alpha-13:set_flag_lambda_1063|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:103| Bool) (|$cond-alpha-rename:59| Bool) )
    ( and (= |$cond-alpha-rename:59| (> |$cond-alpha-rename:58| 0)) (= |$cond-alpha-rename:15| (> |$cond-alpha-rename:14| 0)) (= |$cond-alpha-rename:103| (> |$cond-alpha-rename:102| 0)) (= |$alpha-2:$$tmp::2| 1) (not |$cond-alpha-rename:59|) (not |$cond-alpha-rename:15|) (not |$cond-alpha-rename:103|) (not (= |$cond-alpha-rename:2| 0)) (|f_1030$unknown:8| |$cond-alpha-rename:1| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_1030$unknown:7| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|f_1030$unknown:7| |$cond-alpha-rename:3| |$cond-alpha-rename:2| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |$cond-alpha-rename:12|) (|f_1030$unknown:6| |$cond-alpha-rename:2| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) (|f_1030$unknown:5| |$cond-alpha-rename:58| |$cond-alpha-rename:57| |$cond-alpha-rename:56|) (|f_1030$unknown:5| |$cond-alpha-rename:14| |$cond-alpha-rename:13| |$cond-alpha-rename:12|) (|f_1030$unknown:5| |$cond-alpha-rename:102| |$cond-alpha-rename:101| |$cond-alpha-rename:100|) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:19| Bool) (|$knormal:11| Int) (|$alpha-10:x_1033| Int) (|$alpha-9:s_prev_lambda_x_1061| Int) (|$alpha-8:prev_set_flag_lambda_1062| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:60| Int) (|$knormal:10| Int) (|$cond-alpha-rename:107| Bool) (|$cond-alpha-rename:63| Bool) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:10| 1) (= |$cond-alpha-rename:63| (> |$cond-alpha-rename:62| 0)) (= |$cond-alpha-rename:19| (> |$cond-alpha-rename:18| 0)) (= |$cond-alpha-rename:107| (> |$cond-alpha-rename:106| 0)) (not |$cond-alpha-rename:63|) (not |$cond-alpha-rename:19|) (not |$cond-alpha-rename:107|) (not (= |$alpha-8:prev_set_flag_lambda_1062| 0)) (|fail$unknown:11| |$knormal:11| |$knormal:10|) (|f_1030$unknown:8| |$alpha-10:x_1033| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:7| |$alpha-9:s_prev_lambda_x_1061| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) (|f_1030$unknown:6| |$alpha-8:prev_set_flag_lambda_1062| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) (|f_1030$unknown:5| |$cond-alpha-rename:62| |$cond-alpha-rename:61| |$cond-alpha-rename:60|) (|f_1030$unknown:5| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$cond-alpha-rename:16|) (|f_1030$unknown:5| |$cond-alpha-rename:106| |$cond-alpha-rename:105| |$cond-alpha-rename:104|) )
      (|bot$unknown:1| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-18:u_1036| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:6| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:7| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:38| Int) (|$knormal:33| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:30| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$knormal:30| 2) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:8| |$knormal:30| |$alpha-17:s_lambda_x_1060| |$alpha-16:set_flag_lambda_1063| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Int) (|$alpha-18:u_1036| Int) (|$alpha-16:set_flag_lambda_1063| Int) (|$alpha-17:s_lambda_x_1060| Int) (|$knormal:33| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:35| 0) (= |$knormal:33| 0) (= |$alpha-18:u_1036| 1) (= |$alpha-17:s_lambda_x_1060| 0) (= |$alpha-16:set_flag_lambda_1063| 0) )
      (|f_1030$unknown:5| |$knormal:38| |$knormal:35| |$knormal:33|)
    )
  )
)
(check-sat)

(get-model)

