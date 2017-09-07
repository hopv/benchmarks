(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec dotprod_aux n v1 v2 i sum =
    if i = n
    then sum
    else dotprod_aux n v1 v2 (i+1) (sum + (sub v1 i) * (sub v2 i))
  
  let dotprod v1 v2 = dotprod_aux (arraysize v1) v1 v2 0 0
  
  let main n m =
    let v1 = make_array n in
    let v2 = make_array m in
    if 0<=n && n=m then (dotprod v1 v2; ()) else ()
")

(set-logic HORN)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |sub$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:35| Int) (|$knormal:28| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:24| Bool) (|$cond-alpha-rename:23| Bool) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:18| Bool) (|$alpha-15:v2| Int) (|$alpha-14:v1| Int) (|$cond-alpha-rename:20| Bool) (|$cond-alpha-rename:25| Bool) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:17| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 0) (= |$knormal:35| 0) (= |$knormal:28| |$alpha-14:v1|) (= |$cond-alpha-rename:4| |$cond-alpha-rename:22|) (= |$cond-alpha-rename:25| (and |$cond-alpha-rename:23| |$cond-alpha-rename:24|)) (= |$cond-alpha-rename:24| (= |$cond-alpha-rename:21| |$cond-alpha-rename:22|)) (= |$cond-alpha-rename:23| (<= 0 |$cond-alpha-rename:21|)) (= |$cond-alpha-rename:20| (and |$cond-alpha-rename:18| |$cond-alpha-rename:19|)) (= |$cond-alpha-rename:19| (= |$cond-alpha-rename:16| |$cond-alpha-rename:17|)) (= |$cond-alpha-rename:18| (<= 0 |$cond-alpha-rename:16|)) (= |$alpha-15:v2| |$cond-alpha-rename:17|) (= |$alpha-14:v1| |$cond-alpha-rename:21|) (= |$alpha-14:v1| |$cond-alpha-rename:16|) |$cond-alpha-rename:25| |$cond-alpha-rename:20| )
      (|dotprod_aux$unknown:10| |$knormal:38| |$knormal:35| |$alpha-15:v2| |$alpha-14:v1| |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:10| Int) (|$cond-alpha-rename:94| Bool) (|$cond-alpha-rename:93| Bool) (|$V-reftype:56| Int) (|$cond-alpha-rename:92| Bool) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:91| Int) (|$knormal:25| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:73| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:88| Int) (|$knormal:27| Int) (|$knormal:22| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:77| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:79| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:95| (and |$cond-alpha-rename:93| |$cond-alpha-rename:94|)) (= |$cond-alpha-rename:94| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:93| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:92| (= |$alpha-12:i| |$cond-alpha-rename:90|)) (= |$cond-alpha-rename:80| (and |$cond-alpha-rename:78| |$cond-alpha-rename:79|)) (= |$cond-alpha-rename:79| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:78| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:77| (= |$alpha-12:i| |$cond-alpha-rename:75|)) (= |$V-reftype:56| |$knormal:27|) (not |$knormal:7|) (not |$cond-alpha-rename:92|) (not |$cond-alpha-rename:77|) |$cond-alpha-rename:95| |$cond-alpha-rename:80| (|sub$unknown:16| |$cond-alpha-rename:91| |$alpha-12:i| |$cond-alpha-rename:88|) (|sub$unknown:16| |$cond-alpha-rename:76| |$alpha-12:i| |$cond-alpha-rename:73|) (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:89| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:88| |$cond-alpha-rename:90|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:74| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:73| |$cond-alpha-rename:75|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:10| Int) (|$cond-alpha-rename:101| Bool) (|$cond-alpha-rename:100| Bool) (|$V-reftype:56| Int) (|$cond-alpha-rename:99| Bool) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:76| Int) (|$knormal:22| Int) (|$knormal:27| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:74| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:98| Int) (|$knormal:25| Int) (|$cond-alpha-rename:102| Bool) (|$cond-alpha-rename:77| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:79| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:99| (= |$alpha-12:i| |$cond-alpha-rename:98|)) (= |$cond-alpha-rename:80| (and |$cond-alpha-rename:78| |$cond-alpha-rename:79|)) (= |$cond-alpha-rename:79| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:78| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:77| (= |$alpha-12:i| |$cond-alpha-rename:75|)) (= |$cond-alpha-rename:102| (and |$cond-alpha-rename:100| |$cond-alpha-rename:101|)) (= |$cond-alpha-rename:101| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:100| (<= 0 |$alpha-12:i|)) (= |$V-reftype:56| |$knormal:27|) (not |$knormal:7|) (not |$cond-alpha-rename:99|) (not |$cond-alpha-rename:77|) |$cond-alpha-rename:80| |$cond-alpha-rename:102| (|sub$unknown:16| |$cond-alpha-rename:76| |$alpha-12:i| |$cond-alpha-rename:73|) (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:97| |$alpha-12:i| |$cond-alpha-rename:96| |$alpha-11:v2| |$cond-alpha-rename:98|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:74| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:73| |$cond-alpha-rename:75|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:10| Int) (|$cond-alpha-rename:86| Bool) (|$cond-alpha-rename:85| Bool) (|$V-reftype:56| Int) (|$cond-alpha-rename:84| Bool) (|$cond-alpha-rename:87| Bool) (|$cond-alpha-rename:106| Int) (|$knormal:22| Int) (|$knormal:27| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:104| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:83| Int) (|$knormal:25| Int) (|$cond-alpha-rename:110| Bool) (|$cond-alpha-rename:107| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:108| Bool) (|$cond-alpha-rename:109| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:87| (and |$cond-alpha-rename:85| |$cond-alpha-rename:86|)) (= |$cond-alpha-rename:86| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:85| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:84| (= |$alpha-12:i| |$cond-alpha-rename:83|)) (= |$cond-alpha-rename:110| (and |$cond-alpha-rename:108| |$cond-alpha-rename:109|)) (= |$cond-alpha-rename:109| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:108| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:107| (= |$alpha-12:i| |$cond-alpha-rename:105|)) (= |$V-reftype:56| |$knormal:27|) (not |$knormal:7|) (not |$cond-alpha-rename:84|) (not |$cond-alpha-rename:107|) |$cond-alpha-rename:87| |$cond-alpha-rename:110| (|sub$unknown:16| |$cond-alpha-rename:106| |$alpha-12:i| |$cond-alpha-rename:103|) (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:82| |$alpha-12:i| |$cond-alpha-rename:81| |$alpha-10:v1| |$cond-alpha-rename:83|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:104| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:103| |$cond-alpha-rename:105|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$knormal:10| Int) (|$cond-alpha-rename:86| Bool) (|$cond-alpha-rename:85| Bool) (|$V-reftype:56| Int) (|$cond-alpha-rename:84| Bool) (|$cond-alpha-rename:87| Bool) (|$knormal:25| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:113| Int) (|$knormal:27| Int) (|$knormal:22| Int) (|$cond-alpha-rename:117| Bool) (|$cond-alpha-rename:114| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:115| Bool) (|$cond-alpha-rename:116| Bool) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:87| (and |$cond-alpha-rename:85| |$cond-alpha-rename:86|)) (= |$cond-alpha-rename:86| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:85| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:84| (= |$alpha-12:i| |$cond-alpha-rename:83|)) (= |$cond-alpha-rename:117| (and |$cond-alpha-rename:115| |$cond-alpha-rename:116|)) (= |$cond-alpha-rename:116| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:115| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:114| (= |$alpha-12:i| |$cond-alpha-rename:113|)) (= |$V-reftype:56| |$knormal:27|) (not |$knormal:7|) (not |$cond-alpha-rename:84|) (not |$cond-alpha-rename:114|) |$cond-alpha-rename:87| |$cond-alpha-rename:117| (|dotprod_aux$unknown:11| |$knormal:27| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:82| |$alpha-12:i| |$cond-alpha-rename:81| |$alpha-10:v1| |$cond-alpha-rename:83|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:112| |$alpha-12:i| |$cond-alpha-rename:111| |$alpha-11:v2| |$cond-alpha-rename:113|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:56| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:14| Int) (|$cond-alpha-rename:124| Bool) (|$cond-alpha-rename:123| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:122| Bool) (|$cond-alpha-rename:125| Bool) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:119| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:140| Bool) (|$cond-alpha-rename:137| Bool) (|$cond-alpha-rename:138| Bool) (|$cond-alpha-rename:139| Bool) (|$knormal:10| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:140| (and |$cond-alpha-rename:138| |$cond-alpha-rename:139|)) (= |$cond-alpha-rename:139| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:138| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:137| (= |$alpha-12:i| |$cond-alpha-rename:135|)) (= |$cond-alpha-rename:125| (and |$cond-alpha-rename:123| |$cond-alpha-rename:124|)) (= |$cond-alpha-rename:124| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:123| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:122| (= |$alpha-12:i| |$cond-alpha-rename:120|)) (not |$knormal:7|) (not |$cond-alpha-rename:137|) (not |$cond-alpha-rename:122|) |$cond-alpha-rename:140| |$cond-alpha-rename:125| (|sub$unknown:16| |$cond-alpha-rename:136| |$alpha-12:i| |$cond-alpha-rename:133|) (|sub$unknown:16| |$cond-alpha-rename:121| |$alpha-12:i| |$cond-alpha-rename:118|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:134| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:133| |$cond-alpha-rename:135|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:119| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:118| |$cond-alpha-rename:120|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:14| Int) (|$cond-alpha-rename:124| Bool) (|$cond-alpha-rename:123| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:122| Bool) (|$cond-alpha-rename:125| Bool) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:118| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:147| Bool) (|$cond-alpha-rename:144| Bool) (|$cond-alpha-rename:145| Bool) (|$cond-alpha-rename:146| Bool) (|$knormal:10| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:147| (and |$cond-alpha-rename:145| |$cond-alpha-rename:146|)) (= |$cond-alpha-rename:146| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:145| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:144| (= |$alpha-12:i| |$cond-alpha-rename:143|)) (= |$cond-alpha-rename:125| (and |$cond-alpha-rename:123| |$cond-alpha-rename:124|)) (= |$cond-alpha-rename:124| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:123| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:122| (= |$alpha-12:i| |$cond-alpha-rename:120|)) (not |$knormal:7|) (not |$cond-alpha-rename:144|) (not |$cond-alpha-rename:122|) |$cond-alpha-rename:147| |$cond-alpha-rename:125| (|sub$unknown:16| |$cond-alpha-rename:121| |$alpha-12:i| |$cond-alpha-rename:118|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:142| |$alpha-12:i| |$cond-alpha-rename:141| |$alpha-11:v2| |$cond-alpha-rename:143|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:119| |$alpha-12:i| |$alpha-10:v1| |$cond-alpha-rename:118| |$cond-alpha-rename:120|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:14| Int) (|$cond-alpha-rename:131| Bool) (|$cond-alpha-rename:130| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:129| Bool) (|$cond-alpha-rename:132| Bool) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:149| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:155| Bool) (|$cond-alpha-rename:152| Bool) (|$cond-alpha-rename:153| Bool) (|$cond-alpha-rename:154| Bool) (|$knormal:10| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:155| (and |$cond-alpha-rename:153| |$cond-alpha-rename:154|)) (= |$cond-alpha-rename:154| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:153| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:152| (= |$alpha-12:i| |$cond-alpha-rename:150|)) (= |$cond-alpha-rename:132| (and |$cond-alpha-rename:130| |$cond-alpha-rename:131|)) (= |$cond-alpha-rename:131| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:130| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:129| (= |$alpha-12:i| |$cond-alpha-rename:128|)) (not |$knormal:7|) (not |$cond-alpha-rename:152|) (not |$cond-alpha-rename:129|) |$cond-alpha-rename:155| |$cond-alpha-rename:132| (|sub$unknown:16| |$cond-alpha-rename:151| |$alpha-12:i| |$cond-alpha-rename:148|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:149| |$alpha-12:i| |$alpha-11:v2| |$cond-alpha-rename:148| |$cond-alpha-rename:150|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:127| |$alpha-12:i| |$cond-alpha-rename:126| |$alpha-10:v1| |$cond-alpha-rename:128|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$knormal:22| Int) (|$knormal:14| Int) (|$cond-alpha-rename:131| Bool) (|$cond-alpha-rename:130| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:129| Bool) (|$cond-alpha-rename:132| Bool) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$alpha-10:v1| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-11:v2| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:162| Bool) (|$cond-alpha-rename:159| Bool) (|$cond-alpha-rename:160| Bool) (|$cond-alpha-rename:161| Bool) (|$knormal:10| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$knormal:25| (+ |$alpha-13:sum| |$knormal:16|)) (= |$knormal:22| (+ |$alpha-12:i| 1)) (= |$knormal:16| (* |$knormal:10| |$knormal:14|)) (= |$knormal:14| 0) (= |$knormal:10| 0) (= |$cond-alpha-rename:162| (and |$cond-alpha-rename:160| |$cond-alpha-rename:161|)) (= |$cond-alpha-rename:161| (< |$alpha-12:i| |$alpha-11:v2|)) (= |$cond-alpha-rename:160| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:159| (= |$alpha-12:i| |$cond-alpha-rename:158|)) (= |$cond-alpha-rename:132| (and |$cond-alpha-rename:130| |$cond-alpha-rename:131|)) (= |$cond-alpha-rename:131| (< |$alpha-12:i| |$alpha-10:v1|)) (= |$cond-alpha-rename:130| (<= 0 |$alpha-12:i|)) (= |$cond-alpha-rename:129| (= |$alpha-12:i| |$cond-alpha-rename:128|)) (not |$knormal:7|) (not |$cond-alpha-rename:159|) (not |$cond-alpha-rename:129|) |$cond-alpha-rename:162| |$cond-alpha-rename:132| (|dotprod_aux$unknown:10| |$cond-alpha-rename:157| |$alpha-12:i| |$cond-alpha-rename:156| |$alpha-11:v2| |$cond-alpha-rename:158|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:127| |$alpha-12:i| |$cond-alpha-rename:126| |$alpha-10:v1| |$cond-alpha-rename:128|) (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:10| |$knormal:25| |$knormal:22| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-9:n| Int) (|$alpha-11:v2| Int) (|$alpha-13:sum| Int) (|$alpha-12:i| Int) (|$alpha-10:v1| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-12:i| |$alpha-9:n|)) (= |$V-reftype:52| |$alpha-13:sum|) |$knormal:7| true true true true (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$V-reftype:52| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:170| Bool) (|$cond-alpha-rename:57| Int) (|$alpha-6:src| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:163| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:167| Bool) (|$knormal:6| Bool) (|$cond-alpha-rename:168| Bool) (|$cond-alpha-rename:169| Bool) (|$cond-alpha-rename:58| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:59| (= |$alpha-7:i| |$cond-alpha-rename:57|)) (= |$cond-alpha-rename:58| 0) (= |$cond-alpha-rename:170| (and |$cond-alpha-rename:168| |$cond-alpha-rename:169|)) (= |$cond-alpha-rename:169| (< |$alpha-7:i| |$cond-alpha-rename:55|)) (= |$cond-alpha-rename:168| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:167| (= |$alpha-7:i| |$cond-alpha-rename:165|)) (not |$knormal:6|) (not |$cond-alpha-rename:59|) (not |$cond-alpha-rename:167|) |$cond-alpha-rename:170| (|sub$unknown:16| |$cond-alpha-rename:166| |$alpha-7:i| |$cond-alpha-rename:163|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:56| |$alpha-7:i| |$alpha-6:src| |$cond-alpha-rename:55| |$cond-alpha-rename:57|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:164| |$alpha-7:i| |$cond-alpha-rename:55| |$cond-alpha-rename:163| |$cond-alpha-rename:165|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:177| Bool) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:56| Int) (|$alpha-6:src| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:174| Bool) (|$knormal:6| Bool) (|$cond-alpha-rename:175| Bool) (|$cond-alpha-rename:176| Bool) (|$cond-alpha-rename:58| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:59| (= |$alpha-7:i| |$cond-alpha-rename:57|)) (= |$cond-alpha-rename:58| 0) (= |$cond-alpha-rename:177| (and |$cond-alpha-rename:175| |$cond-alpha-rename:176|)) (= |$cond-alpha-rename:176| (< |$alpha-7:i| |$cond-alpha-rename:55|)) (= |$cond-alpha-rename:175| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:174| (= |$alpha-7:i| |$cond-alpha-rename:173|)) (not |$knormal:6|) (not |$cond-alpha-rename:59|) (not |$cond-alpha-rename:174|) |$cond-alpha-rename:177| (|dotprod_aux$unknown:10| |$cond-alpha-rename:56| |$alpha-7:i| |$alpha-6:src| |$cond-alpha-rename:55| |$cond-alpha-rename:57|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:172| |$alpha-7:i| |$cond-alpha-rename:171| |$cond-alpha-rename:55| |$cond-alpha-rename:173|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:63| Bool) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:62| Int) (|$knormal:6| Bool) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:63| (= |$alpha-7:i| |$cond-alpha-rename:62|)) (not |$knormal:6|) (not |$cond-alpha-rename:63|) (|dotprod_aux$unknown:10| |$cond-alpha-rename:61| |$alpha-7:i| |$cond-alpha-rename:60| |$alpha-6:src| |$cond-alpha-rename:62|) )
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-3:des| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (not |$knormal:3|) (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

