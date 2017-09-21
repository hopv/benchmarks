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
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1778| Int) (|$cond-alpha-rename:1779| Int) (|$cond-alpha-rename:1780| Int) (|$cond-alpha-rename:1781| Int) (|$cond-alpha-rename:1795| Int) (|$cond-alpha-rename:1796| Int) (|$cond-alpha-rename:1805| Int) (|$cond-alpha-rename:1806| Int) (|$cond-alpha-rename:1807| Int) (|$cond-alpha-rename:1808| Int) (|$cond-alpha-rename:1823| Int) (|$cond-alpha-rename:1825| Int) (|$cond-alpha-rename:1826| Int) (|$cond-alpha-rename:1835| Int) (|$cond-alpha-rename:1836| Int) (|$cond-alpha-rename:1837| Int) (|$cond-alpha-rename:1838| Int) (|$cond-alpha-rename:1852| Int) (|$cond-alpha-rename:1853| Int) (|$cond-alpha-rename:1862| Int) (|$cond-alpha-rename:1863| Int) (|$cond-alpha-rename:1864| Int) (|$cond-alpha-rename:1865| Int) (|$cond-alpha-rename:1873| Int) (|$cond-alpha-rename:1874| Int) (|$cond-alpha-rename:1880| Int) (|$cond-alpha-rename:1882| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1865| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1865| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1838| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1808| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1808| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1781| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:1865|) 0) (+ (* 0 |$cond-alpha-rename:1865|) 0)) (= (+ (* 0 |$cond-alpha-rename:1865|) 0) (+ (* 0 |$cond-alpha-rename:1865|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1838|) 0) (+ (* 0 |$cond-alpha-rename:1838|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1808|) 0) (+ (* 0 |$cond-alpha-rename:1808|) 0)) (= (+ (* 0 |$cond-alpha-rename:1808|) 0) (+ (* 0 |$cond-alpha-rename:1808|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1781|) 0) (+ (* 0 |$cond-alpha-rename:1781|) 0)) (= 1 1) (not (= 0 |$cond-alpha-rename:1873|)) (> |$cond-alpha-rename:1865| 0) (> |$cond-alpha-rename:1865| 0) (> |$cond-alpha-rename:1865| 0) (> |$cond-alpha-rename:1838| 0) (> |$cond-alpha-rename:1838| 0) (> |$cond-alpha-rename:1826| 0) (> |$cond-alpha-rename:1808| 0) (> |$cond-alpha-rename:1808| 0) (> |$cond-alpha-rename:1808| 0) (> |$cond-alpha-rename:1781| 0) (> |$cond-alpha-rename:1781| 0) (|fail$unknown:44| |$cond-alpha-rename:1882| 1) (|fail$unknown:44| |$cond-alpha-rename:1825| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:1874| |$cond-alpha-rename:1873|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1862| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1865| |$cond-alpha-rename:1864| |$cond-alpha-rename:1863|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1835| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1838| |$cond-alpha-rename:1837| |$cond-alpha-rename:1836|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1805| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1808| |$cond-alpha-rename:1807| |$cond-alpha-rename:1806|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1778| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1781| |$cond-alpha-rename:1780| |$cond-alpha-rename:1779|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1865| |$cond-alpha-rename:1853| |$cond-alpha-rename:1852|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:1808| |$cond-alpha-rename:1796| |$cond-alpha-rename:1795|) (|bot$unknown:21| |$cond-alpha-rename:1880| 1) (|bot$unknown:21| |$cond-alpha-rename:1823| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1874| |$cond-alpha-rename:1873| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1889| Int) (|$cond-alpha-rename:1890| Int) (|$cond-alpha-rename:1891| Int) (|$cond-alpha-rename:1892| Int) (|$cond-alpha-rename:1906| Int) (|$cond-alpha-rename:1907| Int) (|$cond-alpha-rename:1916| Int) (|$cond-alpha-rename:1917| Int) (|$cond-alpha-rename:1918| Int) (|$cond-alpha-rename:1919| Int) (|$cond-alpha-rename:1933| Int) (|$cond-alpha-rename:1942| Int) (|$cond-alpha-rename:1943| Int) (|$cond-alpha-rename:1944| Int) (|$cond-alpha-rename:1945| Int) (|$cond-alpha-rename:1959| Int) (|$cond-alpha-rename:1960| Int) (|$cond-alpha-rename:1969| Int) (|$cond-alpha-rename:1970| Int) (|$cond-alpha-rename:1971| Int) (|$cond-alpha-rename:1972| Int) (|$cond-alpha-rename:1980| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:1987| Int) (|$cond-alpha-rename:1989| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1972| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1972| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1945| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1919| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1919| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1892| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:1972|) 0) (+ (* 0 |$cond-alpha-rename:1972|) 0)) (= (+ (* 0 |$cond-alpha-rename:1972|) 0) (+ (* 0 |$cond-alpha-rename:1972|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1945|) 0) (+ (* 0 |$cond-alpha-rename:1945|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1919|) 0) (+ (* 0 |$cond-alpha-rename:1919|) 0)) (= (+ (* 0 |$cond-alpha-rename:1919|) 0) (+ (* 0 |$cond-alpha-rename:1919|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1892|) 0) (+ (* 0 |$cond-alpha-rename:1892|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:1980|))) (not (= 0 |$cond-alpha-rename:1980|)) (> |$cond-alpha-rename:1972| 0) (> |$cond-alpha-rename:1972| 0) (> |$cond-alpha-rename:1972| 0) (> |$cond-alpha-rename:1945| 0) (> |$cond-alpha-rename:1945| 0) (> |$cond-alpha-rename:1933| 0) (> |$cond-alpha-rename:1919| 0) (> |$cond-alpha-rename:1919| 0) (> |$cond-alpha-rename:1919| 0) (> |$cond-alpha-rename:1892| 0) (> |$cond-alpha-rename:1892| 0) (|fail$unknown:44| |$cond-alpha-rename:1989| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:1981| |$cond-alpha-rename:1980|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1969| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1972| |$cond-alpha-rename:1971| |$cond-alpha-rename:1970|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1942| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1945| |$cond-alpha-rename:1944| |$cond-alpha-rename:1943|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1916| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1919| |$cond-alpha-rename:1918| |$cond-alpha-rename:1917|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1889| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1892| |$cond-alpha-rename:1891| |$cond-alpha-rename:1890|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1972| |$cond-alpha-rename:1960| |$cond-alpha-rename:1959|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:1919| |$cond-alpha-rename:1907| |$cond-alpha-rename:1906|) (|bot$unknown:21| |$cond-alpha-rename:1987| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:1981| |$cond-alpha-rename:1980| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:1996| Int) (|$cond-alpha-rename:1997| Int) (|$cond-alpha-rename:1998| Int) (|$cond-alpha-rename:1999| Int) (|$cond-alpha-rename:2013| Int) (|$cond-alpha-rename:2014| Int) (|$cond-alpha-rename:2023| Int) (|$cond-alpha-rename:2024| Int) (|$cond-alpha-rename:2025| Int) (|$cond-alpha-rename:2026| Int) (|$cond-alpha-rename:2041| Int) (|$cond-alpha-rename:2043| Int) (|$cond-alpha-rename:2044| Int) (|$cond-alpha-rename:2053| Int) (|$cond-alpha-rename:2054| Int) (|$cond-alpha-rename:2055| Int) (|$cond-alpha-rename:2056| Int) (|$cond-alpha-rename:2070| Int) (|$cond-alpha-rename:2071| Int) (|$cond-alpha-rename:2080| Int) (|$cond-alpha-rename:2081| Int) (|$cond-alpha-rename:2082| Int) (|$cond-alpha-rename:2083| Int) (|$cond-alpha-rename:2091| Int) (|$cond-alpha-rename:2092| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2083| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2083| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2056| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2026| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2026| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:1999| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:2083|) 0) (+ (* 0 |$cond-alpha-rename:2083|) 0)) (= (+ (* 0 |$cond-alpha-rename:2083|) 0) (+ (* 0 |$cond-alpha-rename:2083|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2056|) 0) (+ (* 0 |$cond-alpha-rename:2056|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2026|) 0) (+ (* 0 |$cond-alpha-rename:2026|) 0)) (= (+ (* 0 |$cond-alpha-rename:2026|) 0) (+ (* 0 |$cond-alpha-rename:2026|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1999|) 0) (+ (* 0 |$cond-alpha-rename:1999|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:2091|))) (not (= 0 |$cond-alpha-rename:2091|)) (> |$cond-alpha-rename:2083| 0) (> |$cond-alpha-rename:2083| 0) (> |$cond-alpha-rename:2083| 0) (> |$cond-alpha-rename:2056| 0) (> |$cond-alpha-rename:2056| 0) (> |$cond-alpha-rename:2044| 0) (> |$cond-alpha-rename:2026| 0) (> |$cond-alpha-rename:2026| 0) (> |$cond-alpha-rename:2026| 0) (> |$cond-alpha-rename:1999| 0) (> |$cond-alpha-rename:1999| 0) (|fail$unknown:44| |$cond-alpha-rename:2043| 1) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:2092| |$cond-alpha-rename:2091|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2080| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:2083| |$cond-alpha-rename:2082| |$cond-alpha-rename:2081|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2053| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:2056| |$cond-alpha-rename:2055| |$cond-alpha-rename:2054|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2023| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:2026| |$cond-alpha-rename:2025| |$cond-alpha-rename:2024|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1996| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:1999| |$cond-alpha-rename:1998| |$cond-alpha-rename:1997|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:2083| |$cond-alpha-rename:2071| |$cond-alpha-rename:2070|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:2026| |$cond-alpha-rename:2014| |$cond-alpha-rename:2013|) (|bot$unknown:21| |$cond-alpha-rename:2041| 1) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2092| |$cond-alpha-rename:2091| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-24:set_flag_f_1191| Int) (|$alpha-25:s_f_x_1188| Int) (|$cond-alpha-rename:2103| Int) (|$cond-alpha-rename:2104| Int) (|$cond-alpha-rename:2105| Int) (|$cond-alpha-rename:2106| Int) (|$cond-alpha-rename:2120| Int) (|$cond-alpha-rename:2121| Int) (|$cond-alpha-rename:2130| Int) (|$cond-alpha-rename:2131| Int) (|$cond-alpha-rename:2132| Int) (|$cond-alpha-rename:2133| Int) (|$cond-alpha-rename:2147| Int) (|$cond-alpha-rename:2156| Int) (|$cond-alpha-rename:2157| Int) (|$cond-alpha-rename:2158| Int) (|$cond-alpha-rename:2159| Int) (|$cond-alpha-rename:2173| Int) (|$cond-alpha-rename:2174| Int) (|$cond-alpha-rename:2183| Int) (|$cond-alpha-rename:2184| Int) (|$cond-alpha-rename:2185| Int) (|$cond-alpha-rename:2186| Int) (|$cond-alpha-rename:2194| Int) (|$cond-alpha-rename:2195| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:230| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:245| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) )
    (=>
      ( and (> |$cond-alpha-rename:309| 0) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:309| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2186| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2186| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2159| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2133| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2133| 1)) (= (- |$cond-alpha-rename:309| 1) (- |$cond-alpha-rename:2106| 1)) (= 1 1) (= 0 0) (= (+ (* 0 |$cond-alpha-rename:2186|) 0) (+ (* 0 |$cond-alpha-rename:2186|) 0)) (= (+ (* 0 |$cond-alpha-rename:2186|) 0) (+ (* 0 |$cond-alpha-rename:2186|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2159|) 0) (+ (* 0 |$cond-alpha-rename:2159|) 0)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2133|) 0) (+ (* 0 |$cond-alpha-rename:2133|) 0)) (= (+ (* 0 |$cond-alpha-rename:2133|) 0) (+ (* 0 |$cond-alpha-rename:2133|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:2106|) 0) (+ (* 0 |$cond-alpha-rename:2106|) 0)) (= 1 1) (not (not (= 0 |$cond-alpha-rename:2194|))) (> |$cond-alpha-rename:2186| 0) (> |$cond-alpha-rename:2186| 0) (> |$cond-alpha-rename:2186| 0) (> |$cond-alpha-rename:2159| 0) (> |$cond-alpha-rename:2159| 0) (> |$cond-alpha-rename:2147| 0) (> |$cond-alpha-rename:2133| 0) (> |$cond-alpha-rename:2133| 0) (> |$cond-alpha-rename:2133| 0) (> |$cond-alpha-rename:2106| 0) (> |$cond-alpha-rename:2106| 0) (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| (- |$cond-alpha-rename:309| 1) |$cond-alpha-rename:2195| |$cond-alpha-rename:2194|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:306| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:309| |$cond-alpha-rename:308| |$cond-alpha-rename:307|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2183| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2186| |$cond-alpha-rename:2185| |$cond-alpha-rename:2184|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2156| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2159| |$cond-alpha-rename:2158| |$cond-alpha-rename:2157|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2130| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2133| |$cond-alpha-rename:2132| |$cond-alpha-rename:2131|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:2103| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2106| |$cond-alpha-rename:2105| |$cond-alpha-rename:2104|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:309| |$cond-alpha-rename:238| |$cond-alpha-rename:237|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:309| |$cond-alpha-rename:230| |$cond-alpha-rename:229|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2186| |$cond-alpha-rename:2174| |$cond-alpha-rename:2173|) (|f_without_checking_1199$unknown:41| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:2133| |$cond-alpha-rename:2121| |$cond-alpha-rename:2120|) )
      (|f_without_checking_1199$unknown:42| |$cond-alpha-rename:245| |$V-reftype:36| |$cond-alpha-rename:2195| |$cond-alpha-rename:2194| |$cond-alpha-rename:309| |$alpha-25:s_f_x_1188| |$alpha-24:set_flag_f_1191|)
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
  (forall ( (|$V-reftype:51| Int) (|$alpha-26:x_1037| Int) (|$cond-alpha-rename:1117| Int) (|$cond-alpha-rename:1118| Int) (|$cond-alpha-rename:1119| Int) (|$cond-alpha-rename:1120| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1144| Int) (|$cond-alpha-rename:1145| Int) (|$cond-alpha-rename:1146| Int) (|$cond-alpha-rename:1147| Int) (|$cond-alpha-rename:1155| Int) (|$cond-alpha-rename:1156| Int) (|$cond-alpha-rename:1162| Int) (|$cond-alpha-rename:1164| Int) )
    (=>
      ( and (|bot$unknown:21| |$cond-alpha-rename:1162| 1) (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1156| |$cond-alpha-rename:1155| |$cond-alpha-rename:1147| |$cond-alpha-rename:1135| |$cond-alpha-rename:1134|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1117| |$cond-alpha-rename:1156| |$cond-alpha-rename:1155| |$cond-alpha-rename:1120| |$cond-alpha-rename:1119| |$cond-alpha-rename:1118|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1144| |$cond-alpha-rename:1156| |$cond-alpha-rename:1155| |$cond-alpha-rename:1147| |$cond-alpha-rename:1146| |$cond-alpha-rename:1145|) (|fail$unknown:44| |$cond-alpha-rename:1164| 1) (> |$cond-alpha-rename:1120| 0) (> |$cond-alpha-rename:1120| 0) (> |$cond-alpha-rename:1147| 0) (> |$cond-alpha-rename:1147| 0) (> |$cond-alpha-rename:1147| 0) (not (= 0 |$cond-alpha-rename:1155|)) (= (- |$cond-alpha-rename:1120| 1) (- |$cond-alpha-rename:1147| 1)) (= (- |$cond-alpha-rename:1120| 1) (- |$cond-alpha-rename:1147| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1120|) 0) (+ (* 0 |$cond-alpha-rename:1120|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1147|) 0) (+ (* 0 |$cond-alpha-rename:1147|) 0)) (= (+ (* 0 |$cond-alpha-rename:1147|) 0) (+ (* 0 |$cond-alpha-rename:1147|) 0)) (> |$alpha-26:x_1037| 0) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1156| |$cond-alpha-rename:1155| (- |$cond-alpha-rename:1120| 1) |$cond-alpha-rename:1156| |$cond-alpha-rename:1155|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-26:x_1037| Int) (|$cond-alpha-rename:1171| Int) (|$cond-alpha-rename:1172| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:1174| Int) (|$cond-alpha-rename:1188| Int) (|$cond-alpha-rename:1189| Int) (|$cond-alpha-rename:1198| Int) (|$cond-alpha-rename:1199| Int) (|$cond-alpha-rename:1200| Int) (|$cond-alpha-rename:1201| Int) (|$cond-alpha-rename:1209| Int) (|$cond-alpha-rename:1210| Int) )
    (=>
      ( and (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1201| |$cond-alpha-rename:1189| |$cond-alpha-rename:1188|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1171| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1174| |$cond-alpha-rename:1173| |$cond-alpha-rename:1172|) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:1198| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| |$cond-alpha-rename:1201| |$cond-alpha-rename:1200| |$cond-alpha-rename:1199|) (> |$cond-alpha-rename:1174| 0) (> |$cond-alpha-rename:1174| 0) (> |$cond-alpha-rename:1201| 0) (> |$cond-alpha-rename:1201| 0) (> |$cond-alpha-rename:1201| 0) (not (not (= 0 |$cond-alpha-rename:1209|))) (= (- |$cond-alpha-rename:1174| 1) (- |$cond-alpha-rename:1201| 1)) (= (- |$cond-alpha-rename:1174| 1) (- |$cond-alpha-rename:1201| 1)) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1174|) 0) (+ (* 0 |$cond-alpha-rename:1174|) 0)) (= 1 1) (= 1 1) (= (+ (* 0 |$cond-alpha-rename:1201|) 0) (+ (* 0 |$cond-alpha-rename:1201|) 0)) (= (+ (* 0 |$cond-alpha-rename:1201|) 0) (+ (* 0 |$cond-alpha-rename:1201|) 0)) (> |$alpha-26:x_1037| 0) )
      (|f_without_checking_1199$unknown:41| |$V-reftype:51| |$cond-alpha-rename:1210| |$cond-alpha-rename:1209| (- |$cond-alpha-rename:1174| 1) |$cond-alpha-rename:1210| |$cond-alpha-rename:1209|)
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
  (not (exists ( (|$cond-alpha-rename:904| Int) (|$cond-alpha-rename:905| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) )
    ( and (= (+ (* 0 |$cond-alpha-rename:916|) 0) (+ (* 0 |$cond-alpha-rename:916|) 0)) (= 1 1) (> |$cond-alpha-rename:916| 0) (> |$cond-alpha-rename:916| 0) (not (= 0 |$cond-alpha-rename:904|)) (|f_without_checking_1199$unknown:41| |$cond-alpha-rename:913| |$cond-alpha-rename:905| |$cond-alpha-rename:904| |$cond-alpha-rename:916| |$cond-alpha-rename:915| |$cond-alpha-rename:914|) )
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

