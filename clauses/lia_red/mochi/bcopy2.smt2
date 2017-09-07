(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update i n des x = let _ = des i in ()
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        update i m des (src i);
        bcopy_aux m src des (i+1)
      end
  
  let main n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if n<=m && n>0 then bcopy_aux n array1 array2 0 else ()
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:67| Bool) (|$cond-alpha-rename:65| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$cond-alpha-rename:63| Int) (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:66| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:67| (>= |$cond-alpha-rename:62| |$alpha-9:m|)) (= |$cond-alpha-rename:66| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:65| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:62|) (not |$knormal:5|) (not |$cond-alpha-rename:67|) (not |$cond-alpha-rename:66|) (not |$cond-alpha-rename:65|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:68| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:64| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:63| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:11| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:73| Bool) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:69| Int) (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:70| Int) (|$alpha-12:i| Int) (|$knormal:14| Int) (|$cond-alpha-rename:72| Bool) (|$cond-alpha-rename:74| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:74| (>= |$cond-alpha-rename:69| |$alpha-9:m|)) (= |$cond-alpha-rename:73| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:72| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:69|) (not |$knormal:5|) (not |$cond-alpha-rename:74|) (not |$cond-alpha-rename:73|) (not |$cond-alpha-rename:72|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:75| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:71| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:81| Bool) (|$cond-alpha-rename:79| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:78| Int) (|$V-reftype:7| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:80| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:81| (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (= |$cond-alpha-rename:80| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:79| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:76|) (not |$knormal:5|) (not |$cond-alpha-rename:81|) (not |$cond-alpha-rename:80|) (not |$cond-alpha-rename:79|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:82| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:78| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:11| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:87| Bool) (|$cond-alpha-rename:89| Int) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:85| Int) (|$alpha-11:des| Int) (|$V-reftype:9| Int) (|$cond-alpha-rename:86| Bool) (|$cond-alpha-rename:88| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:88| (>= |$cond-alpha-rename:83| |$alpha-9:m|)) (= |$cond-alpha-rename:87| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:86| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:83|) (not |$knormal:5|) (not |$cond-alpha-rename:88|) (not |$cond-alpha-rename:87|) (not |$cond-alpha-rename:86|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:89| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:85| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:84| |$cond-alpha-rename:83| |$alpha-9:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:94| Bool) (|$knormal:13| Int) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:96| Int) (|$knormal:11| Int) (|$cond-alpha-rename:93| Bool) (|$cond-alpha-rename:95| Bool) (|$V-reftype:44| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:95| (>= |$cond-alpha-rename:90| |$alpha-9:m|)) (= |$cond-alpha-rename:94| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:93| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:90|) (= |$V-reftype:44| |$knormal:13|) (not |$knormal:5|) (not |$cond-alpha-rename:95|) (not |$cond-alpha-rename:94|) (not |$cond-alpha-rename:93|) (|bcopy_aux$unknown:7| |$knormal:13| |$knormal:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:96| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:92| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| |$V-reftype:44| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:14| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$cond-alpha-rename:55| Bool) (|$V-reftype:28| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:55| (>= |$cond-alpha-rename:43| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:43|) (= |$V-reftype:28| |$cond-alpha-rename:43|) (not |$knormal:5|) (not |$cond-alpha-rename:55|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:43| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:44| |$cond-alpha-rename:43| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:28| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:102| Bool) (|$cond-alpha-rename:100| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:101| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:102| (>= |$cond-alpha-rename:97| |$alpha-9:m|)) (= |$cond-alpha-rename:101| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:100| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:97|) (not |$knormal:5|) (not |$cond-alpha-rename:102|) (not |$cond-alpha-rename:101|) (not |$cond-alpha-rename:100|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:103| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:99| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$alpha-9:m|) )
      (|bcopy_aux$unknown:6| |$knormal:11| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:42| 1) |$knormal:5| (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:42| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:3| Bool) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:10| Bool) (|$knormal:25| Bool) (|$cond-alpha-rename:12| Bool) (|$knormal:35| Int) (|$alpha-14:n| Int) (|$cond-alpha-rename:5| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:11| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:5| (and |$cond-alpha-rename:3| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:4| (< |$knormal:35| |$alpha-14:n|)) (= |$cond-alpha-rename:3| (<= 0 |$knormal:35|)) (= |$cond-alpha-rename:12| (and |$cond-alpha-rename:10| |$cond-alpha-rename:11|)) (= |$cond-alpha-rename:11| (> |$alpha-14:n| 0)) (= |$cond-alpha-rename:10| (<= |$alpha-14:n| |$cond-alpha-rename:9|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:5| |$cond-alpha-rename:12| (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:3| Bool) (|$cond-alpha-rename:14| Bool) (|$knormal:25| Bool) (|$cond-alpha-rename:16| Bool) (|$knormal:35| Int) (|$alpha-14:n| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:5| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:15| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:5| (and |$cond-alpha-rename:3| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:4| (< |$knormal:35| |$alpha-14:n|)) (= |$cond-alpha-rename:3| (<= 0 |$knormal:35|)) (= |$cond-alpha-rename:16| (and |$cond-alpha-rename:14| |$cond-alpha-rename:15|)) (= |$cond-alpha-rename:15| (> |$cond-alpha-rename:13| 0)) (= |$cond-alpha-rename:14| (<= |$cond-alpha-rename:13| |$alpha-14:n|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:5| |$cond-alpha-rename:16| (|bcopy_aux$unknown:4| |$knormal:35| |$cond-alpha-rename:13|) (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:6| Bool) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Bool) (|$knormal:25| Bool) (|$cond-alpha-rename:20| Bool) (|$knormal:34| Int) (|$alpha-15:m| Int) (|$alpha-14:n| Int) (|$cond-alpha-rename:8| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:19| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (< |$knormal:34| |$alpha-15:m|)) (= |$cond-alpha-rename:6| (<= 0 |$knormal:34|)) (= |$cond-alpha-rename:20| (and |$cond-alpha-rename:18| |$cond-alpha-rename:19|)) (= |$cond-alpha-rename:19| (> |$alpha-15:m| 0)) (= |$cond-alpha-rename:18| (<= |$alpha-15:m| |$cond-alpha-rename:17|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:8| |$cond-alpha-rename:20| (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) (|bcopy_aux$unknown:2| |$knormal:34| |$alpha-15:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:6| Bool) (|$alpha-15:m| Int) (|$cond-alpha-rename:22| Bool) (|$knormal:25| Bool) (|$cond-alpha-rename:24| Bool) (|$knormal:34| Int) (|$alpha-14:n| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:8| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:23| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (< |$knormal:34| |$alpha-15:m|)) (= |$cond-alpha-rename:6| (<= 0 |$knormal:34|)) (= |$cond-alpha-rename:24| (and |$cond-alpha-rename:22| |$cond-alpha-rename:23|)) (= |$cond-alpha-rename:23| (> |$cond-alpha-rename:21| 0)) (= |$cond-alpha-rename:22| (<= |$cond-alpha-rename:21| |$alpha-15:m|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:8| |$cond-alpha-rename:24| (|bcopy_aux$unknown:4| |$knormal:34| |$cond-alpha-rename:21|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:27| Bool) (|$knormal:3| Bool) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:28| Bool) (|$cond-alpha-rename:26| Bool) (|$cond-alpha-rename:25| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:28| (and |$cond-alpha-rename:26| |$cond-alpha-rename:27|)) (= |$cond-alpha-rename:27| (> |$alpha-1:n| 0)) (= |$cond-alpha-rename:26| (<= |$alpha-1:n| |$cond-alpha-rename:25|)) (not |$knormal:3|) |$cond-alpha-rename:28| (|bcopy_aux$unknown:2| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:31| Bool) (|$knormal:3| Bool) (|$cond-alpha-rename:29| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:32| Bool) (|$cond-alpha-rename:30| Bool) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:32| (and |$cond-alpha-rename:30| |$cond-alpha-rename:31|)) (= |$cond-alpha-rename:31| (> |$cond-alpha-rename:29| 0)) (= |$cond-alpha-rename:30| (<= |$cond-alpha-rename:29| |$alpha-1:n|)) (not |$knormal:3|) |$cond-alpha-rename:32| (|bcopy_aux$unknown:4| |$alpha-2:i| |$cond-alpha-rename:29|) )
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| )
      (|bcopy_aux$unknown:6| |$knormal:31| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

