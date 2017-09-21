(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c1_COEFFICIENT_1085 = 0
     let rec c0_COEFFICIENT_1084 = 0
     let id_1030 set_flag_f_1191 s_f_x_1188 x_1031 = x_1031
  
     let app_1032 x_DO_NOT_CARE_1222 x_DO_NOT_CARE_1223 h_EXPARAM_1087 x_DO_NOT_CARE_1220 x_DO_NOT_CARE_1221 h_1033 x_DO_NOT_CARE_1218 x_DO_NOT_CARE_1219 v_1034 set_flag_f_1191 s_f_x_1188 u_1035 =
       h_1033 set_flag_f_1191 s_f_x_1188 v_1034 set_flag_f_1191 s_f_x_1188 u_1035
  
     let rec f_1036 f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037 =
       let u =if prev_set_flag_f_1190 then
                let u_11994 = fail ()
                in
                  bot()
              else () in
              f_without_checking_1199 prev_set_flag_f_1190 s_prev_f_x_1189 x_1037
  
     let rec f_without_checking_1199 set_flag_f_1191 s_f_x_1188 x_1037 =
       let set_flag_f_1191 = true
       in
       let s_f_x_1188 = x_1037
       in
         if x_1037 > 0 then
           app_1032 set_flag_f_1191 s_f_x_1188
             ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
             set_flag_f_1191 s_f_x_1188 (f_1036 f_without_checking_1199) set_flag_f_1191 s_f_x_1188
             (x_1037 - 1)
         else
           id_1030
  
     let main_1038 r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_without_checking_1199 set_flag_f_1191 s_f_x_1188 r
         set_flag_f_1191 s_f_x_1188 ()
")

(set-logic HORN)

(declare-fun |main_1038$unknown:49|
  ( Int ) Bool
)

(declare-fun |f_1036$unknown:27|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:44|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:42|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:41|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |f_1036$unknown:35|
  ( Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:281| Int) )
    (=>
      ( and (> |$cond-alpha-rename:281| 0) (= (- |$cond-alpha-rename:281| 1) (- |$cond-alpha-rename:281| 1)) (= (- |$cond-alpha-rename:281| 1) (- |$cond-alpha-rename:281| 1)) (= 1 1) (= 1 1) (= 0 (+ (* 0 |$cond-alpha-rename:281|) 0)) (= 0 0) (> |$cond-alpha-rename:281| 0) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:278| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:281| |$cond-alpha-rename:280| |$cond-alpha-rename:279|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:281| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:281| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:281| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_1036$unknown:35| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:225| |$cond-alpha-rename:224| (- |$cond-alpha-rename:281| 1) |$cond-alpha-rename:225| |$cond-alpha-rename:224|) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:225| |$cond-alpha-rename:224| |$cond-alpha-rename:281| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:2| 1) )
      (|bot$unknown:21| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:384| Int) (|$cond-alpha-rename:385| Int) (|$cond-alpha-rename:511| Int) (|$cond-alpha-rename:512| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:533| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| 1) (|f_1036$unknown:27| |$V-reftype:52| |$cond-alpha-rename:533| |$cond-alpha-rename:532| (- |$cond-alpha-rename:385| 1) |$cond-alpha-rename:533| |$cond-alpha-rename:532|) (|f_without_checking_1199$unknown:41| |$V-reftype:52| |$cond-alpha-rename:533| |$cond-alpha-rename:532| |$cond-alpha-rename:524| |$cond-alpha-rename:512| |$cond-alpha-rename:511|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:382| |$cond-alpha-rename:533| |$cond-alpha-rename:532| |$cond-alpha-rename:385| |$cond-alpha-rename:384| |$cond-alpha-rename:383|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:521| |$cond-alpha-rename:533| |$cond-alpha-rename:532| |$cond-alpha-rename:524| |$cond-alpha-rename:523| |$cond-alpha-rename:522|) (|f_without_checking_1199$unknown:42| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:533| |$cond-alpha-rename:532| (- |$cond-alpha-rename:385| 1) |$cond-alpha-rename:533| |$cond-alpha-rename:532|) (|fail$unknown:44| |$knormal:22| 1) (not (= 0 |$cond-alpha-rename:532|)) (> |$cond-alpha-rename:524| 0) (> |$cond-alpha-rename:524| 0) (> |$cond-alpha-rename:524| 0) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:524|) 0) (+ (* 0 |$cond-alpha-rename:524|) 0)) (= (+ (* 0 |$cond-alpha-rename:524|) 0) (+ (* 0 |$cond-alpha-rename:524|) 0)) (= 0 0) (= 1 1) (= (- |$cond-alpha-rename:385| 1) (- |$cond-alpha-rename:524| 1)) (= (- |$cond-alpha-rename:385| 1) (- |$cond-alpha-rename:524| 1)) (> |$cond-alpha-rename:356| 0) (> |$cond-alpha-rename:385| 0) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:533| |$cond-alpha-rename:532| (- |$cond-alpha-rename:385| 1) |$cond-alpha-rename:533| |$cond-alpha-rename:532|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$cond-alpha-rename:401| Int) (|$cond-alpha-rename:402| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:542| Int) (|$cond-alpha-rename:543| Int) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:554| Int) (|$cond-alpha-rename:555| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:564| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|bot$unknown:21| |$knormal:20| 1) (|f_without_checking_1199$unknown:41| |$V-reftype:65| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:555| |$cond-alpha-rename:543| |$cond-alpha-rename:542|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:401| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:404| |$cond-alpha-rename:403| |$cond-alpha-rename:402|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:552| |$cond-alpha-rename:564| |$cond-alpha-rename:563| |$cond-alpha-rename:555| |$cond-alpha-rename:554| |$cond-alpha-rename:553|) (|fail$unknown:44| |$knormal:22| 1) (not (= 0 |$cond-alpha-rename:563|)) (> |$cond-alpha-rename:555| 0) (> |$cond-alpha-rename:555| 0) (> |$cond-alpha-rename:555| 0) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:555|) 0) (+ (* 0 |$cond-alpha-rename:555|) 0)) (= (+ (* 0 |$cond-alpha-rename:555|) 0) (+ (* 0 |$cond-alpha-rename:555|) 0)) (= 0 0) (= 1 1) (= (- |$cond-alpha-rename:404| 1) (- |$cond-alpha-rename:555| 1)) (= (- |$cond-alpha-rename:404| 1) (- |$cond-alpha-rename:555| 1)) (> |$cond-alpha-rename:404| 0) )
      (|f_1036$unknown:27| |$V-reftype:65| |$cond-alpha-rename:564| |$cond-alpha-rename:563| (- |$cond-alpha-rename:404| 1) |$cond-alpha-rename:564| |$cond-alpha-rename:563|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:71| Int) (|$V-reftype:73| Int) (|$V-reftype:75| Int) (|$V-reftype:77| Int) (|$alpha-26:x_1037| Int) (|f_without_checking_1199| Int) )
    (=>
      ( and (> |$alpha-26:x_1037| 0) (|f_1036$unknown:27| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$V-reftype:77| |$V-reftype:75| |$V-reftype:73| |$V-reftype:71| |f_without_checking_1199|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$V-reftype:53| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:423| Int) (|$cond-alpha-rename:573| Int) (|$cond-alpha-rename:574| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:585| Int) (|$cond-alpha-rename:586| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:595| Int) )
    (=>
      ( and (|f_1036$unknown:27| |$V-reftype:52| |$cond-alpha-rename:595| |$cond-alpha-rename:594| (- |$cond-alpha-rename:423| 1) |$cond-alpha-rename:595| |$cond-alpha-rename:594|) (|f_without_checking_1199$unknown:41| |$V-reftype:52| |$cond-alpha-rename:595| |$cond-alpha-rename:594| |$cond-alpha-rename:586| |$cond-alpha-rename:574| |$cond-alpha-rename:573|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:420| |$cond-alpha-rename:595| |$cond-alpha-rename:594| |$cond-alpha-rename:423| |$cond-alpha-rename:422| |$cond-alpha-rename:421|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:583| |$cond-alpha-rename:595| |$cond-alpha-rename:594| |$cond-alpha-rename:586| |$cond-alpha-rename:585| |$cond-alpha-rename:584|) (|f_without_checking_1199$unknown:42| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:595| |$cond-alpha-rename:594| (- |$cond-alpha-rename:423| 1) |$cond-alpha-rename:595| |$cond-alpha-rename:594|) (> |$cond-alpha-rename:586| 0) (> |$cond-alpha-rename:586| 0) (> |$cond-alpha-rename:586| 0) (not (not (= 0 |$cond-alpha-rename:594|))) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:586|) 0) (+ (* 0 |$cond-alpha-rename:586|) 0)) (= (+ (* 0 |$cond-alpha-rename:586|) 0) (+ (* 0 |$cond-alpha-rename:586|) 0)) (= 0 0) (= 1 1) (= (- |$cond-alpha-rename:423| 1) (- |$cond-alpha-rename:586| 1)) (= (- |$cond-alpha-rename:423| 1) (- |$cond-alpha-rename:586| 1)) (> |$cond-alpha-rename:359| 0) (> |$cond-alpha-rename:423| 0) )
      (|f_1036$unknown:35| |$V-reftype:53| |$V-reftype:52| |$cond-alpha-rename:595| |$cond-alpha-rename:594| (- |$cond-alpha-rename:423| 1) |$cond-alpha-rename:595| |$cond-alpha-rename:594|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:440| Int) (|$cond-alpha-rename:441| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:605| Int) (|$cond-alpha-rename:614| Int) (|$cond-alpha-rename:615| Int) (|$cond-alpha-rename:616| Int) (|$cond-alpha-rename:617| Int) (|$cond-alpha-rename:625| Int) (|$cond-alpha-rename:626| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:65| |$cond-alpha-rename:626| |$cond-alpha-rename:625| |$cond-alpha-rename:617| |$cond-alpha-rename:605| |$cond-alpha-rename:604|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:439| |$cond-alpha-rename:626| |$cond-alpha-rename:625| |$cond-alpha-rename:442| |$cond-alpha-rename:441| |$cond-alpha-rename:440|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:614| |$cond-alpha-rename:626| |$cond-alpha-rename:625| |$cond-alpha-rename:617| |$cond-alpha-rename:616| |$cond-alpha-rename:615|) (> |$cond-alpha-rename:617| 0) (> |$cond-alpha-rename:617| 0) (> |$cond-alpha-rename:617| 0) (not (not (= 0 |$cond-alpha-rename:625|))) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:617|) 0) (+ (* 0 |$cond-alpha-rename:617|) 0)) (= (+ (* 0 |$cond-alpha-rename:617|) 0) (+ (* 0 |$cond-alpha-rename:617|) 0)) (= 0 0) (= 1 1) (= (- |$cond-alpha-rename:442| 1) (- |$cond-alpha-rename:617| 1)) (= (- |$cond-alpha-rename:442| 1) (- |$cond-alpha-rename:617| 1)) (> |$cond-alpha-rename:442| 0) )
      (|f_1036$unknown:27| |$V-reftype:65| |$cond-alpha-rename:626| |$cond-alpha-rename:625| (- |$cond-alpha-rename:442| 1) |$cond-alpha-rename:626| |$cond-alpha-rename:625|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (not (> |$alpha-26:x_1037| 0)) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:89| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:660| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:670| Int) (|$cond-alpha-rename:671| Int) )
    ( and (= (+ (* 0 |$cond-alpha-rename:671|) 0) (+ (* 0 |$cond-alpha-rename:671|) 0)) (= 1 1) (> |$cond-alpha-rename:671| 0) (> |$cond-alpha-rename:671| 0) (not (= 0 |$cond-alpha-rename:659|)) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:668| |$cond-alpha-rename:660| |$cond-alpha-rename:659| |$cond-alpha-rename:671| |$cond-alpha-rename:670| |$cond-alpha-rename:669|) )
    )
  )
)
(assert
  (forall ( (|$alpha-31:r| Int) )
    (=>
      ( and (|main_1038$unknown:49| |$alpha-31:r|) )
      (|f_without_checking_1199$unknown:41| 1 0 0 |$alpha-31:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

