(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec bs_aux key vec l u =
    if u < l
    then -1
    else
      let m = l + (u-l) / 2 in
      let x = sub vec m in
        if x < key then bs_aux key vec (m+1) u
        else if x > key then bs_aux key vec l (m-1)
               else m
  
  let bsearch key vec = bs_aux key vec 0 (arraysize vec - 1)
  
  let main n m =
    let v1 = make_array n in
    let v2 = make_array m in
    if 0<=n && n=m then (bsearch v1 v2; ()) else ()
")

(set-logic HORN)

(declare-fun |update$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:6|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:36| Int) (|$knormal:31| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:9| Bool) (|$alpha-16:vec| Int) (|$alpha-15:key| Int) (|$cond-alpha-rename:10| Bool) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:13| Bool) (|$cond-alpha-rename:14| Bool) (|$cond-alpha-rename:4| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (= |$knormal:31| |$alpha-16:vec|) (= |$cond-alpha-rename:9| (= |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:8| (<= 0 |$cond-alpha-rename:6|)) (= |$cond-alpha-rename:4| |$cond-alpha-rename:11|) (= |$cond-alpha-rename:15| (and |$cond-alpha-rename:13| |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:14| (= |$cond-alpha-rename:11| |$cond-alpha-rename:12|)) (= |$cond-alpha-rename:13| (<= 0 |$cond-alpha-rename:11|)) (= |$cond-alpha-rename:10| (and |$cond-alpha-rename:8| |$cond-alpha-rename:9|)) (= |$alpha-16:vec| |$cond-alpha-rename:7|) (= |$alpha-16:vec| |$cond-alpha-rename:12|) (= |$alpha-15:key| |$cond-alpha-rename:6|) |$cond-alpha-rename:15| |$cond-alpha-rename:10| )
      (|bs_aux$unknown:6| |$knormal:39| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$cond-alpha-rename:58| Int) (|$knormal:8| Bool) (|$cond-alpha-rename:59| Bool) (|$cond-alpha-rename:62| Bool) (|$knormal:15| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:54| Int) (|$alpha-9:key| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-10:vec| Int) (|$cond-alpha-rename:55| Int) (|$knormal:17| Int) (|$knormal:9| Bool) (|$knormal:7| Bool) (|$V-reftype:59| Int) (|$alpha-13:m| Int) (|$knormal:30| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:60| Bool) (|$cond-alpha-rename:61| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:28| 0) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$cond-alpha-rename:62| (and |$cond-alpha-rename:60| |$cond-alpha-rename:61|)) (= |$cond-alpha-rename:61| (< |$alpha-13:m| |$alpha-10:vec|)) (= |$cond-alpha-rename:60| (<= 0 |$alpha-13:m|)) (= |$cond-alpha-rename:59| (< |$cond-alpha-rename:55| |$cond-alpha-rename:54|)) (= |$cond-alpha-rename:58| (div |$cond-alpha-rename:57| 2)) (= |$cond-alpha-rename:57| (- |$cond-alpha-rename:55| |$cond-alpha-rename:54|)) (= |$alpha-13:m| (+ |$cond-alpha-rename:54| |$cond-alpha-rename:58|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:59| |$knormal:17|) (not |$knormal:8|) (not |$knormal:7|) (not |$cond-alpha-rename:59|) |$knormal:9| |$cond-alpha-rename:62| (|bs_aux$unknown:7| |$knormal:17| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:55| |$cond-alpha-rename:54| |$alpha-10:vec| |$cond-alpha-rename:56|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:7| |$V-reftype:59| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:69| Bool) (|$cond-alpha-rename:66| Int) (|$knormal:30| Int) (|$alpha-13:m| Int) (|$V-reftype:56| Int) (|$cond-alpha-rename:68| Bool) (|$cond-alpha-rename:71| Bool) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:63| Int) (|$alpha-9:key| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-10:vec| Int) (|$cond-alpha-rename:64| Int) (|$knormal:25| Int) (|$knormal:21| Int) (|$knormal:8| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:67| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:28| 0) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$cond-alpha-rename:71| (and |$cond-alpha-rename:69| |$cond-alpha-rename:70|)) (= |$cond-alpha-rename:70| (< |$alpha-13:m| |$alpha-10:vec|)) (= |$cond-alpha-rename:69| (<= 0 |$alpha-13:m|)) (= |$cond-alpha-rename:68| (< |$cond-alpha-rename:64| |$cond-alpha-rename:63|)) (= |$cond-alpha-rename:67| (div |$cond-alpha-rename:66| 2)) (= |$cond-alpha-rename:66| (- |$cond-alpha-rename:64| |$cond-alpha-rename:63|)) (= |$alpha-13:m| (+ |$cond-alpha-rename:63| |$cond-alpha-rename:67|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:56| |$knormal:25|) (not |$knormal:7|) (not |$cond-alpha-rename:68|) |$knormal:8| |$cond-alpha-rename:71| (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:64| |$cond-alpha-rename:63| |$alpha-10:vec| |$cond-alpha-rename:65|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:7| |$V-reftype:56| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$cond-alpha-rename:76| Int) (|$knormal:7| Bool) (|$knormal:8| Bool) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:72| Int) (|$alpha-9:key| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-10:vec| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:77| Bool) (|$alpha-13:m| Int) (|$knormal:30| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:79| Bool) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:28| 0) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$cond-alpha-rename:80| (and |$cond-alpha-rename:78| |$cond-alpha-rename:79|)) (= |$cond-alpha-rename:79| (< |$alpha-13:m| |$alpha-10:vec|)) (= |$cond-alpha-rename:78| (<= 0 |$alpha-13:m|)) (= |$cond-alpha-rename:77| (< |$cond-alpha-rename:73| |$cond-alpha-rename:72|)) (= |$cond-alpha-rename:76| (div |$cond-alpha-rename:75| 2)) (= |$cond-alpha-rename:75| (- |$cond-alpha-rename:73| |$cond-alpha-rename:72|)) (= |$alpha-13:m| (+ |$cond-alpha-rename:72| |$cond-alpha-rename:76|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not |$knormal:7|) (not |$cond-alpha-rename:77|) |$knormal:8| |$cond-alpha-rename:80| (|bs_aux$unknown:6| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$alpha-10:vec| |$cond-alpha-rename:74|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:6| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:15| Int) (|$cond-alpha-rename:88| Bool) (|$cond-alpha-rename:87| Bool) (|$cond-alpha-rename:84| Int) (|$knormal:30| Int) (|$alpha-13:m| Int) (|$knormal:7| Bool) (|$knormal:9| Bool) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:81| Int) (|$alpha-9:key| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-10:vec| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:89| Bool) (|$cond-alpha-rename:86| Bool) (|$knormal:8| Bool) (|$cond-alpha-rename:85| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:28| 0) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$cond-alpha-rename:89| (and |$cond-alpha-rename:87| |$cond-alpha-rename:88|)) (= |$cond-alpha-rename:88| (< |$alpha-13:m| |$alpha-10:vec|)) (= |$cond-alpha-rename:87| (<= 0 |$alpha-13:m|)) (= |$cond-alpha-rename:86| (< |$cond-alpha-rename:82| |$cond-alpha-rename:81|)) (= |$cond-alpha-rename:85| (div |$cond-alpha-rename:84| 2)) (= |$cond-alpha-rename:84| (- |$cond-alpha-rename:82| |$cond-alpha-rename:81|)) (= |$alpha-13:m| (+ |$cond-alpha-rename:81| |$cond-alpha-rename:85|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not |$knormal:8|) (not |$knormal:7|) (not |$cond-alpha-rename:86|) |$knormal:9| |$cond-alpha-rename:89| (|bs_aux$unknown:6| |$cond-alpha-rename:82| |$cond-alpha-rename:81| |$alpha-10:vec| |$cond-alpha-rename:83|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:6| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$cond-alpha-rename:94| Int) (|$alpha-13:m| Int) (|$knormal:9| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:98| Bool) (|$cond-alpha-rename:91| Int) (|$alpha-10:vec| Int) (|$alpha-12:u| Int) (|$alpha-11:l| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:95| Bool) (|$knormal:8| Bool) (|$V-reftype:60| Int) (|$knormal:30| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:97| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:28| 0) (= |$cond-alpha-rename:98| (and |$cond-alpha-rename:96| |$cond-alpha-rename:97|)) (= |$cond-alpha-rename:97| (< |$alpha-13:m| |$alpha-10:vec|)) (= |$cond-alpha-rename:96| (<= 0 |$alpha-13:m|)) (= |$cond-alpha-rename:95| (< |$cond-alpha-rename:91| |$cond-alpha-rename:90|)) (= |$cond-alpha-rename:94| (div |$cond-alpha-rename:93| 2)) (= |$cond-alpha-rename:93| (- |$cond-alpha-rename:91| |$cond-alpha-rename:90|)) (= |$alpha-13:m| (+ |$cond-alpha-rename:90| |$cond-alpha-rename:94|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:60| |$alpha-13:m|) (not |$knormal:9|) (not |$knormal:8|) (not |$knormal:7|) (not |$cond-alpha-rename:95|) |$cond-alpha-rename:98| (|bs_aux$unknown:6| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$alpha-10:vec| |$cond-alpha-rename:92|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:7| |$V-reftype:60| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-9:key| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-10:vec| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$V-reftype:50| (- 1)) |$knormal:7| (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:7| |$V-reftype:50| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:46| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:47| Bool) (|$alpha-6:src| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:44| Int) (|$knormal:6| Bool) (|$cond-alpha-rename:45| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:47| (< |$cond-alpha-rename:43| |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:46| (div |$cond-alpha-rename:45| 2)) (= |$cond-alpha-rename:45| (- |$cond-alpha-rename:43| |$cond-alpha-rename:42|)) (= |$alpha-7:i| (+ |$cond-alpha-rename:42| |$cond-alpha-rename:46|)) (not |$knormal:6|) (not |$cond-alpha-rename:47|) (|bs_aux$unknown:6| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$alpha-6:src| |$cond-alpha-rename:44|) )
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-3:des| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (not |$knormal:3|) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

