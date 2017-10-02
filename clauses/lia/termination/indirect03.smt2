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
  
     let main r =
       let set_flag_f_1191 = false in
       let s_f_x_1188 = 0 in
       f_without_checking_1199 set_flag_f_1191 s_f_x_1188 r
         set_flag_f_1191 s_f_x_1188 ()
")

(set-logic HORN)

(declare-fun |fail$unknown:44|
  ( Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:42|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |f_without_checking_1199$unknown:41|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:21|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1751| Int) (|$cond-alpha-rename:1752| Int) (|$cond-alpha-rename:1753| Int) (|$cond-alpha-rename:1754| Int) (|$cond-alpha-rename:1768| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:1778| Int) (|$cond-alpha-rename:1779| Int) (|$cond-alpha-rename:1780| Int) (|$cond-alpha-rename:1781| Int) (|$cond-alpha-rename:1796| Int) (|$cond-alpha-rename:1798| Int) (|$cond-alpha-rename:1799| Int) (|$cond-alpha-rename:1808| Int) (|$cond-alpha-rename:1809| Int) (|$cond-alpha-rename:1810| Int) (|$cond-alpha-rename:1811| Int) (|$cond-alpha-rename:1825| Int) (|$cond-alpha-rename:1826| Int) (|$cond-alpha-rename:1835| Int) (|$cond-alpha-rename:1836| Int) (|$cond-alpha-rename:1837| Int) (|$cond-alpha-rename:1838| Int) (|$cond-alpha-rename:1846| Int) (|$cond-alpha-rename:1847| Int) (|$cond-alpha-rename:1853| Int) (|$cond-alpha-rename:1855| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1838| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1838| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1811| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1781| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1781| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1754| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:1838|) 0) (+ (* 0 |$cond-alpha-rename:1838|) 0)) (= (+ (* 0 |$cond-alpha-rename:1838|) 0) (+ (* 0 |$cond-alpha-rename:1838|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1811|) 0) (+ (* 0 |$cond-alpha-rename:1811|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1781|) 0) (+ (* 0 |$cond-alpha-rename:1781|) 0)) (= (+ (* 0 |$cond-alpha-rename:1781|) 0) (+ (* 0 |$cond-alpha-rename:1781|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1754|) 0) (+ (* 0 |$cond-alpha-rename:1754|) 0)) (= 1 1) (not (= 0 |$cond-alpha-rename:1846|)) (> |$cond-alpha-rename:1838| 0) (> |$cond-alpha-rename:1838| 0) (> |$cond-alpha-rename:1838| 0) (> |$cond-alpha-rename:1811| 0) (> |$cond-alpha-rename:1811| 0) (> |$cond-alpha-rename:1799| 0) (> |$cond-alpha-rename:1781| 0) (> |$cond-alpha-rename:1781| 0) (> |$cond-alpha-rename:1781| 0) (> |$cond-alpha-rename:1754| 0) (> |$cond-alpha-rename:1754| 0) (|fail$unknown:44| |$cond-alpha-rename:1855| 1) (|fail$unknown:44| |$cond-alpha-rename:1798| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:1847| |$cond-alpha-rename:1846|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1835| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1838| |$cond-alpha-rename:1837| |$cond-alpha-rename:1836|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1808| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1811| |$cond-alpha-rename:1810| |$cond-alpha-rename:1809|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1778| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1781| |$cond-alpha-rename:1780| |$cond-alpha-rename:1779|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1751| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1754| |$cond-alpha-rename:1753| |$cond-alpha-rename:1752|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1838| |$cond-alpha-rename:1826| |$cond-alpha-rename:1825|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:1781| |$cond-alpha-rename:1769| |$cond-alpha-rename:1768|) (|bot$unknown:21| |$cond-alpha-rename:1853| 1) (|bot$unknown:21| |$cond-alpha-rename:1796| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1847| |$cond-alpha-rename:1846| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1862| Int) (|$cond-alpha-rename:1863| Int) (|$cond-alpha-rename:1864| Int) (|$cond-alpha-rename:1865| Int) (|$cond-alpha-rename:1879| Int) (|$cond-alpha-rename:1880| Int) (|$cond-alpha-rename:1889| Int) (|$cond-alpha-rename:1890| Int) (|$cond-alpha-rename:1891| Int) (|$cond-alpha-rename:1892| Int) (|$cond-alpha-rename:1906| Int) (|$cond-alpha-rename:1915| Int) (|$cond-alpha-rename:1916| Int) (|$cond-alpha-rename:1917| Int) (|$cond-alpha-rename:1918| Int) (|$cond-alpha-rename:1932| Int) (|$cond-alpha-rename:1933| Int) (|$cond-alpha-rename:1942| Int) (|$cond-alpha-rename:1943| Int) (|$cond-alpha-rename:1944| Int) (|$cond-alpha-rename:1945| Int) (|$cond-alpha-rename:1953| Int) (|$cond-alpha-rename:1954| Int) (|$cond-alpha-rename:1960| Int) (|$cond-alpha-rename:1962| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1945| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1945| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1918| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1892| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1892| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1865| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:1945|) 0) (+ (* 0 |$cond-alpha-rename:1945|) 0)) (= (+ (* 0 |$cond-alpha-rename:1945|) 0) (+ (* 0 |$cond-alpha-rename:1945|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1918|) 0) (+ (* 0 |$cond-alpha-rename:1918|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1892|) 0) (+ (* 0 |$cond-alpha-rename:1892|) 0)) (= (+ (* 0 |$cond-alpha-rename:1892|) 0) (+ (* 0 |$cond-alpha-rename:1892|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1865|) 0) (+ (* 0 |$cond-alpha-rename:1865|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:1953|))) (not (= 0 |$cond-alpha-rename:1953|)) (> |$cond-alpha-rename:1945| 0) (> |$cond-alpha-rename:1945| 0) (> |$cond-alpha-rename:1945| 0) (> |$cond-alpha-rename:1918| 0) (> |$cond-alpha-rename:1918| 0) (> |$cond-alpha-rename:1906| 0) (> |$cond-alpha-rename:1892| 0) (> |$cond-alpha-rename:1892| 0) (> |$cond-alpha-rename:1892| 0) (> |$cond-alpha-rename:1865| 0) (> |$cond-alpha-rename:1865| 0) (|fail$unknown:44| |$cond-alpha-rename:1962| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:1954| |$cond-alpha-rename:1953|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1942| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1945| |$cond-alpha-rename:1944| |$cond-alpha-rename:1943|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1915| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1918| |$cond-alpha-rename:1917| |$cond-alpha-rename:1916|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1889| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1892| |$cond-alpha-rename:1891| |$cond-alpha-rename:1890|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1862| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1865| |$cond-alpha-rename:1864| |$cond-alpha-rename:1863|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1945| |$cond-alpha-rename:1933| |$cond-alpha-rename:1932|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:1892| |$cond-alpha-rename:1880| |$cond-alpha-rename:1879|) (|bot$unknown:21| |$cond-alpha-rename:1960| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1954| |$cond-alpha-rename:1953| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1969| Int) (|$cond-alpha-rename:1970| Int) (|$cond-alpha-rename:1971| Int) (|$cond-alpha-rename:1972| Int) (|$cond-alpha-rename:1986| Int) (|$cond-alpha-rename:1987| Int) (|$cond-alpha-rename:1996| Int) (|$cond-alpha-rename:1997| Int) (|$cond-alpha-rename:1998| Int) (|$cond-alpha-rename:1999| Int) (|$cond-alpha-rename:2014| Int) (|$cond-alpha-rename:2016| Int) (|$cond-alpha-rename:2017| Int) (|$cond-alpha-rename:2026| Int) (|$cond-alpha-rename:2027| Int) (|$cond-alpha-rename:2028| Int) (|$cond-alpha-rename:2029| Int) (|$cond-alpha-rename:2043| Int) (|$cond-alpha-rename:2044| Int) (|$cond-alpha-rename:2053| Int) (|$cond-alpha-rename:2054| Int) (|$cond-alpha-rename:2055| Int) (|$cond-alpha-rename:2056| Int) (|$cond-alpha-rename:2064| Int) (|$cond-alpha-rename:2065| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2056| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2056| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2029| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1999| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1999| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1972| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:2056|) 0) (+ (* 0 |$cond-alpha-rename:2056|) 0)) (= (+ (* 0 |$cond-alpha-rename:2056|) 0) (+ (* 0 |$cond-alpha-rename:2056|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2029|) 0) (+ (* 0 |$cond-alpha-rename:2029|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1999|) 0) (+ (* 0 |$cond-alpha-rename:1999|) 0)) (= (+ (* 0 |$cond-alpha-rename:1999|) 0) (+ (* 0 |$cond-alpha-rename:1999|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1972|) 0) (+ (* 0 |$cond-alpha-rename:1972|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:2064|))) (not (= 0 |$cond-alpha-rename:2064|)) (> |$cond-alpha-rename:2056| 0) (> |$cond-alpha-rename:2056| 0) (> |$cond-alpha-rename:2056| 0) (> |$cond-alpha-rename:2029| 0) (> |$cond-alpha-rename:2029| 0) (> |$cond-alpha-rename:2017| 0) (> |$cond-alpha-rename:1999| 0) (> |$cond-alpha-rename:1999| 0) (> |$cond-alpha-rename:1999| 0) (> |$cond-alpha-rename:1972| 0) (> |$cond-alpha-rename:1972| 0) (|fail$unknown:44| |$cond-alpha-rename:2016| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:2065| |$cond-alpha-rename:2064|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2053| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:2056| |$cond-alpha-rename:2055| |$cond-alpha-rename:2054|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2026| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:2029| |$cond-alpha-rename:2028| |$cond-alpha-rename:2027|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1996| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:1999| |$cond-alpha-rename:1998| |$cond-alpha-rename:1997|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1969| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:1972| |$cond-alpha-rename:1971| |$cond-alpha-rename:1970|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:2056| |$cond-alpha-rename:2044| |$cond-alpha-rename:2043|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:1999| |$cond-alpha-rename:1987| |$cond-alpha-rename:1986|) (|bot$unknown:21| |$cond-alpha-rename:2014| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2065| |$cond-alpha-rename:2064| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:2076| Int) (|$cond-alpha-rename:2077| Int) (|$cond-alpha-rename:2078| Int) (|$cond-alpha-rename:2079| Int) (|$cond-alpha-rename:2093| Int) (|$cond-alpha-rename:2094| Int) (|$cond-alpha-rename:2103| Int) (|$cond-alpha-rename:2104| Int) (|$cond-alpha-rename:2105| Int) (|$cond-alpha-rename:2106| Int) (|$cond-alpha-rename:2120| Int) (|$cond-alpha-rename:2129| Int) (|$cond-alpha-rename:2130| Int) (|$cond-alpha-rename:2131| Int) (|$cond-alpha-rename:2132| Int) (|$cond-alpha-rename:2146| Int) (|$cond-alpha-rename:2147| Int) (|$cond-alpha-rename:2156| Int) (|$cond-alpha-rename:2157| Int) (|$cond-alpha-rename:2158| Int) (|$cond-alpha-rename:2159| Int) (|$cond-alpha-rename:2167| Int) (|$cond-alpha-rename:2168| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2159| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2159| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2132| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2106| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2106| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2079| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:2159|) 0) (+ (* 0 |$cond-alpha-rename:2159|) 0)) (= (+ (* 0 |$cond-alpha-rename:2159|) 0) (+ (* 0 |$cond-alpha-rename:2159|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2132|) 0) (+ (* 0 |$cond-alpha-rename:2132|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2106|) 0) (+ (* 0 |$cond-alpha-rename:2106|) 0)) (= (+ (* 0 |$cond-alpha-rename:2106|) 0) (+ (* 0 |$cond-alpha-rename:2106|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2079|) 0) (+ (* 0 |$cond-alpha-rename:2079|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:2167|))) (> |$cond-alpha-rename:2159| 0) (> |$cond-alpha-rename:2159| 0) (> |$cond-alpha-rename:2159| 0) (> |$cond-alpha-rename:2132| 0) (> |$cond-alpha-rename:2132| 0) (> |$cond-alpha-rename:2120| 0) (> |$cond-alpha-rename:2106| 0) (> |$cond-alpha-rename:2106| 0) (> |$cond-alpha-rename:2106| 0) (> |$cond-alpha-rename:2079| 0) (> |$cond-alpha-rename:2079| 0) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:2168| |$cond-alpha-rename:2167|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2156| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2159| |$cond-alpha-rename:2158| |$cond-alpha-rename:2157|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2129| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2132| |$cond-alpha-rename:2131| |$cond-alpha-rename:2130|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2103| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2106| |$cond-alpha-rename:2105| |$cond-alpha-rename:2104|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2076| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2079| |$cond-alpha-rename:2078| |$cond-alpha-rename:2077|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2159| |$cond-alpha-rename:2147| |$cond-alpha-rename:2146|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:2106| |$cond-alpha-rename:2094| |$cond-alpha-rename:2093|) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2168| |$cond-alpha-rename:2167| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
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
  (forall ( (|$V-reftype:51| Int) (|$alpha-26:x_1037| Int) (|$cond-alpha-rename:1090| Int) (|$cond-alpha-rename:1091| Int) (|$cond-alpha-rename:1092| Int) (|$cond-alpha-rename:1093| Int) (|$cond-alpha-rename:1107| Int) (|$cond-alpha-rename:1108| Int) (|$cond-alpha-rename:1117| Int) (|$cond-alpha-rename:1118| Int) (|$cond-alpha-rename:1119| Int) (|$cond-alpha-rename:1120| Int) (|$cond-alpha-rename:1128| Int) (|$cond-alpha-rename:1129| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1137| Int) )
    (=>
      ( and (|bot$unknown:21| |$cond-alpha-rename:1135| 1) (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1120| |$cond-alpha-rename:1108| |$cond-alpha-rename:1107|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1090| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1093| |$cond-alpha-rename:1092| |$cond-alpha-rename:1091|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1117| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| |$cond-alpha-rename:1120| |$cond-alpha-rename:1119| |$cond-alpha-rename:1118|) (|fail$unknown:44| |$cond-alpha-rename:1137| 1) (> |$cond-alpha-rename:1093| 0) (> |$cond-alpha-rename:1093| 0) (> |$cond-alpha-rename:1120| 0) (> |$cond-alpha-rename:1120| 0) (> |$cond-alpha-rename:1120| 0) (not (= 0 |$cond-alpha-rename:1128|)) (= (- |$cond-alpha-rename:1093| 1) (- |$cond-alpha-rename:1120| 1)) (= (- |$cond-alpha-rename:1093| 1) (- |$cond-alpha-rename:1120| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1093|) 0) (+ (* 0 |$cond-alpha-rename:1093|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1120|) 0) (+ (* 0 |$cond-alpha-rename:1120|) 0)) (= (+ (* 0 |$cond-alpha-rename:1120|) 0) (+ (* 0 |$cond-alpha-rename:1120|) 0)) (> |$alpha-26:x_1037| 0) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1129| |$cond-alpha-rename:1128| (- |$cond-alpha-rename:1093| 1) |$cond-alpha-rename:1129| |$cond-alpha-rename:1128|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-26:x_1037| Int) (|$cond-alpha-rename:1144| Int) (|$cond-alpha-rename:1145| Int) (|$cond-alpha-rename:1146| Int) (|$cond-alpha-rename:1147| Int) (|$cond-alpha-rename:1161| Int) (|$cond-alpha-rename:1162| Int) (|$cond-alpha-rename:1171| Int) (|$cond-alpha-rename:1172| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:1174| Int) (|$cond-alpha-rename:1182| Int) (|$cond-alpha-rename:1183| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1183| |$cond-alpha-rename:1182| |$cond-alpha-rename:1174| |$cond-alpha-rename:1162| |$cond-alpha-rename:1161|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1144| |$cond-alpha-rename:1183| |$cond-alpha-rename:1182| |$cond-alpha-rename:1147| |$cond-alpha-rename:1146| |$cond-alpha-rename:1145|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1171| |$cond-alpha-rename:1183| |$cond-alpha-rename:1182| |$cond-alpha-rename:1174| |$cond-alpha-rename:1173| |$cond-alpha-rename:1172|) (> |$cond-alpha-rename:1147| 0) (> |$cond-alpha-rename:1147| 0) (> |$cond-alpha-rename:1174| 0) (> |$cond-alpha-rename:1174| 0) (> |$cond-alpha-rename:1174| 0) (not (not (= 0 |$cond-alpha-rename:1182|))) (= (- |$cond-alpha-rename:1147| 1) (- |$cond-alpha-rename:1174| 1)) (= (- |$cond-alpha-rename:1147| 1) (- |$cond-alpha-rename:1174| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1147|) 0) (+ (* 0 |$cond-alpha-rename:1147|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1174|) 0) (+ (* 0 |$cond-alpha-rename:1174|) 0)) (= (+ (* 0 |$cond-alpha-rename:1174|) 0) (+ (* 0 |$cond-alpha-rename:1174|) 0)) (> |$alpha-26:x_1037| 0) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1183| |$cond-alpha-rename:1182| (- |$cond-alpha-rename:1147| 1) |$cond-alpha-rename:1183| |$cond-alpha-rename:1182|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:85| Int) (|$V-reftype:87| Int) (|$V-reftype:89| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$alpha-26:x_1037| Int) )
    (=>
      ( and (not (> |$alpha-26:x_1037| 0)) (|f_without_checking_1199$unknown:41| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) )
      (|f_without_checking_1199$unknown:42| |$V-reftype:89| |$V-reftype:89| |$V-reftype:87| |$V-reftype:85| |$alpha-26:x_1037| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:904| Int) (|$cond-alpha-rename:905| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) )
    ( and (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:913| |$cond-alpha-rename:905| |$cond-alpha-rename:904| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914|) (not (= 0 |$cond-alpha-rename:904|)) (> |$cond-alpha-rename:916| 0) (> |$cond-alpha-rename:916| 0) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:916|) 0) (+ (* 0 |$cond-alpha-rename:916|) 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-31:r| Int) )
    (=>
      ( and true )
      (|f_without_checking_1199$unknown:41| 1 0 0 |$alpha-31:r| 0 0)
    )
  )
)
(check-sat)

(get-model)

(exit)

