(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-cppr
  USED: PEPM2013 as a-cppr
  *)
  
  let make_array n i = assert (0 <= i && i < n); 0
  let update (i:int) (n:int) des x : int -> int =
    des i;
    let a j = if i=j then x else des j in a
  let print_int (n:int) = ()
  let f (m:int) src des =
    let rec bcopy (m:int) src des i =
      if i >= m then
        des
      else
        let des = update i m des (src i) in
        bcopy m src des (i+1)
    in
    let rec print_array m (array:int->int) i =
      if i >= m then
        ()
      else
        (print_int (array i);
         print_array m array (i + 1))
    in
    let array : int -> int = bcopy m src des 0 in
      print_array m array 0
  let main n =
    let array1 = make_array n in
    let array2 = make_array n in
      if n > 0 then f n array1 array2
")

(set-logic HORN)

(declare-fun |$innerFunc:3-print_array$unknown:31|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:30|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:29|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:35|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:48|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:45|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:16|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:115| Int) (|$cond-alpha-rename:39| Bool) (|$cond-alpha-rename:174| Bool) (|$cond-alpha-rename:139| Bool) (|$cond-alpha-rename:133| Bool) (|$knormal:89| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:38| Int) (|$alpha-36:$$tmp::2| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:131| Int) (|$alpha-33:n| Int) (|$alpha-35:x| Int) (|$alpha-32:i| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:175| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:130| Bool) (|$cond-alpha-rename:136| Bool) (|$cond-alpha-rename:172| Bool) (|$cond-alpha-rename:176| Bool) (|$knormal:88| Bool) )
    (=>
      ( and (= |$knormal:88| (= |$alpha-32:i| |$alpha-37:j|)) (= |$cond-alpha-rename:39| (= |$alpha-32:i| |$alpha-37:j|)) (= |$cond-alpha-rename:176| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:174| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:172| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:139| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:136| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:133| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:130| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$V-reftype:115| |$knormal:89|) (not |$knormal:88|) (not |$cond-alpha-rename:39|) (not |$cond-alpha-rename:176|) (not |$cond-alpha-rename:174|) (not |$cond-alpha-rename:172|) (not |$cond-alpha-rename:139|) (not |$cond-alpha-rename:136|) (not |$cond-alpha-rename:133|) (not |$cond-alpha-rename:130|) (|update$unknown:48| |$alpha-37:j| |$cond-alpha-rename:37| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:48| |$alpha-37:j| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:45| |$alpha-37:j| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:45| |$alpha-32:i| |$alpha-33:n| |$alpha-32:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:175|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:173|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:171|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:138|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:135|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:132|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:129|) (|$innerFunc:2-bcopy$unknown:18| |$knormal:89| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:138|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:40| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:135|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:38| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:132|) (|$innerFunc:2-bcopy$unknown:18| |$alpha-36:$$tmp::2| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:129|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:37| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:175|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:36| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:173|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:140| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:138|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:137| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:135|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:134| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:132|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:131| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:129|) (|$innerFunc:2-bcopy$unknown:16| |$alpha-35:x| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:171|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:115| |$alpha-37:j| |$alpha-36:$$tmp::2| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:114| Int) (|$cond-alpha-rename:142| Bool) (|$alpha-36:$$tmp::2| Int) (|$cond-alpha-rename:143| Int) (|$alpha-33:n| Int) (|$alpha-35:x| Int) (|$alpha-32:i| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:141| Int) (|$alpha-37:j| Int) (|$knormal:88| Bool) (|$cond-alpha-rename:178| Bool) )
    (=>
      ( and (= |$knormal:88| (= |$alpha-32:i| |$alpha-37:j|)) (= |$cond-alpha-rename:178| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$cond-alpha-rename:142| (>= |$alpha-32:i| |$alpha-33:n|)) (= |$V-reftype:114| |$alpha-35:x|) (not |$cond-alpha-rename:178|) (not |$cond-alpha-rename:142|) |$knormal:88| (|update$unknown:48| |$alpha-37:j| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:45| |$alpha-32:i| |$alpha-33:n| |$alpha-32:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:177|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:141|) (|$innerFunc:2-bcopy$unknown:18| |$alpha-36:$$tmp::2| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:141|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:143| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:141|) (|$innerFunc:2-bcopy$unknown:16| |$alpha-35:x| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:177|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:114| |$alpha-37:j| |$alpha-36:$$tmp::2| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:29| Bool) (|$cond-alpha-rename:180| Bool) (|$cond-alpha-rename:145| Bool) (|$V-reftype:5| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:179| Int) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$knormal:13| Int) (|$cond-alpha-rename:148| Bool) (|$cond-alpha-rename:182| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:29| (= |$alpha-4:i| |$V-reftype:5|)) (= |$cond-alpha-rename:182| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:180| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:148| (>= |$alpha-4:i| |$alpha-5:n|)) (= |$cond-alpha-rename:145| (>= |$alpha-4:i| |$alpha-5:n|)) (not |$cond-alpha-rename:29|) (not |$cond-alpha-rename:182|) (not |$cond-alpha-rename:180|) (not |$cond-alpha-rename:148|) (not |$cond-alpha-rename:145|) (|update$unknown:48| |$V-reftype:5| |$cond-alpha-rename:27| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:45| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:181|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:179|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:147|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:144|) (|$innerFunc:2-bcopy$unknown:18| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:147|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:28| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:144|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:27| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:181|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:149| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:147|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:146| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:144|) (|$innerFunc:2-bcopy$unknown:16| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:179|) )
      (|update$unknown:45| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:41| Bool) (|$V-reftype:18| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (= |$cond-alpha-rename:41| (> |$alpha-10:m| 0)) |$cond-alpha-rename:41| (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:18| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:64| Bool) (|$alpha-24:m| Int) (|$alpha-30:i| Int) (|$alpha-27:m| Int) (|$V-reftype:18| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:18| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:66| Bool) (|$cond-alpha-rename:65| Bool) (|$cond-alpha-rename:67| Bool) (|$cond-alpha-rename:42| Bool) (|$alpha-11:src| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:59| Bool) (|$V-reftype:64| Int) )
    (=>
      ( and (= |$cond-alpha-rename:67| (and |$cond-alpha-rename:65| |$cond-alpha-rename:66|)) (= |$cond-alpha-rename:66| (< |$alpha-11:src| |$alpha-10:m|)) (= |$cond-alpha-rename:65| (<= 0 |$alpha-11:src|)) (= |$cond-alpha-rename:59| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:42| (> |$alpha-10:m| 0)) (= |$V-reftype:64| 0) |$cond-alpha-rename:67| |$cond-alpha-rename:59| |$cond-alpha-rename:42| (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:10| |$alpha-11:src| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:64| |$alpha-11:src| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:64| Bool) (|$alpha-30:i| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-28:src| Int) (|$V-reftype:30| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m| |$alpha-24:m|) true (|$innerFunc:2-bcopy$unknown:10| |$alpha-28:src| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:43| Bool) (|$V-reftype:22| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (= |$cond-alpha-rename:43| (> |$alpha-10:m| 0)) |$cond-alpha-rename:43| (|$innerFunc:2-bcopy$unknown:12| |$V-reftype:22| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:22| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:79| Int) (|$V-reftype:22| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) (|$knormal:64| Bool) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true (|$innerFunc:2-bcopy$unknown:12| |$V-reftype:22| |$alpha-27:m|) )
      (|update$unknown:48| |$V-reftype:22| |$knormal:79| |$alpha-27:m| |$alpha-30:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:69| Bool) (|$cond-alpha-rename:68| Bool) (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:44| Bool) (|$alpha-12:des| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:62| Bool) (|$V-reftype:68| Int) )
    (=>
      ( and (= |$cond-alpha-rename:70| (and |$cond-alpha-rename:68| |$cond-alpha-rename:69|)) (= |$cond-alpha-rename:69| (< |$alpha-12:des| |$alpha-10:m|)) (= |$cond-alpha-rename:68| (<= 0 |$alpha-12:des|)) (= |$cond-alpha-rename:62| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:44| (> |$alpha-10:m| 0)) (= |$V-reftype:68| 0) |$cond-alpha-rename:70| |$cond-alpha-rename:62| |$cond-alpha-rename:44| (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-12:des| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:68| |$alpha-12:des| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:64| Bool) (|$cond-alpha-rename:198| Bool) (|$cond-alpha-rename:199| Int) (|$alpha-27:m| Int) (|$cond-alpha-rename:202| Int) (|$V-reftype:94| Int) (|$knormal:87| Int) (|$knormal:79| Int) (|$alpha-30:i| Int) (|$cond-alpha-rename:197| Int) (|$alpha-24:m| Int) (|$cond-alpha-rename:200| Int) (|$cond-alpha-rename:201| Bool) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (= |$cond-alpha-rename:201| (>= |$alpha-30:i| |$alpha-27:m|)) (= |$cond-alpha-rename:198| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) (not |$cond-alpha-rename:201|) (not |$cond-alpha-rename:198|) (|update$unknown:48| |$knormal:87| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) (|update$unknown:45| |$alpha-30:i| |$alpha-27:m| |$alpha-30:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:200|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:197|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:202| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:197|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:200|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:199| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:197|) (|$innerFunc:2-bcopy$unknown:12| |$knormal:87| |$alpha-27:m|) (|$innerFunc:1-a$unknown:8| |$V-reftype:94| |$knormal:87| |$cond-alpha-rename:202| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) )
      (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:94| |$knormal:87| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:64| Bool) (|$alpha-24:m| Int) (|$alpha-30:i| Int) (|$V-reftype:28| Int) (|$alpha-27:m| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-27:m| |$alpha-27:m|) true )
      (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:79| Int) (|$V-reftype:30| Int) (|$alpha-27:m| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-28:src| Int) (|$alpha-24:m| Int) (|$alpha-30:i| Int) (|$knormal:64| Bool) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:15| |$alpha-28:src| |$alpha-27:m| |$alpha-27:m|) true (= |$cond-alpha-rename:1| |$alpha-27:m|) (= |$cond-alpha-rename:2| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$cond-alpha-rename:1| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) (|$alpha-27:m| Int) (|$V-reftype:32| Int) (|$knormal:64| Bool) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:32| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true )
      (|update$unknown:48| |$V-reftype:32| |$knormal:79| |$alpha-27:m| |$alpha-30:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:207| Bool) (|$cond-alpha-rename:205| Int) (|$alpha-27:m| Int) (|$cond-alpha-rename:208| Int) (|$V-reftype:94| Int) (|$knormal:87| Int) (|$knormal:79| Int) (|$alpha-30:i| Int) (|$cond-alpha-rename:203| Int) (|$alpha-24:m| Int) (|$cond-alpha-rename:206| Int) (|$cond-alpha-rename:204| Bool) (|$knormal:64| Bool) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (= |$cond-alpha-rename:4| |$alpha-27:m|) (= |$cond-alpha-rename:3| |$alpha-27:m|) (= |$cond-alpha-rename:207| (>= |$alpha-30:i| |$alpha-27:m|)) (= |$cond-alpha-rename:204| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) (not |$cond-alpha-rename:207|) (not |$cond-alpha-rename:204|) (|update$unknown:48| |$knormal:87| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) (|update$unknown:45| |$alpha-30:i| |$alpha-27:m| |$alpha-30:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:206|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:203|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:208| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:203|) (|$innerFunc:2-bcopy$unknown:17| |$knormal:87| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:206|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:205| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:203|) (|$innerFunc:1-a$unknown:8| |$V-reftype:94| |$knormal:87| |$cond-alpha-rename:208| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) )
      (|$innerFunc:2-bcopy$unknown:18| |$V-reftype:94| |$knormal:87| |$cond-alpha-rename:3| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:79| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) (|$V-reftype:38| Int) (|$knormal:64| Bool) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true (= |$cond-alpha-rename:5| |$alpha-27:m|) (= |$cond-alpha-rename:6| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| |$knormal:76| |$cond-alpha-rename:5| |$cond-alpha-rename:6|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Bool) (|$alpha-27:m| Int) (|$knormal:79| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) (|$V-reftype:39| Int) (|$V-reftype:40| Int) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$V-reftype:39| |$knormal:76| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:39| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true )
      (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$V-reftype:39| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Bool) (|$alpha-27:m| Int) (|$knormal:79| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) (|$V-reftype:86| Int) )
    (=>
      ( and (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) (|update$unknown:45| |$V-reftype:86| |$alpha-27:m| |$alpha-30:i|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true )
      (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:86| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:64| Bool) (|$alpha-24:m| Int) (|$alpha-30:i| Int) (|$alpha-27:m| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:76| (+ |$alpha-30:i| 1)) (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true (= |$cond-alpha-rename:7| |$alpha-27:m|) (= |$cond-alpha-rename:8| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:19| |$knormal:76| |$cond-alpha-rename:7| |$cond-alpha-rename:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Bool) (|$alpha-24:m| Int) (|$V-reftype:33| Int) (|$V-reftype:34| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) )
    (=>
      ( and (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) |$knormal:64| true (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:33| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:18| |$V-reftype:34| |$V-reftype:33| |$alpha-27:m| |$alpha-24:m|) true )
      (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:34| |$V-reftype:33| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Bool) (|$V-reftype:38| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) )
    (=>
      ( and (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) |$knormal:64| true (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true )
      (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:38| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Bool) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$alpha-24:m| Int) )
    (=>
      ( and (= |$knormal:64| (>= |$alpha-30:i| |$alpha-27:m|)) (not |$knormal:64|) true (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) true )
      (|$innerFunc:2-bcopy$unknown:15| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:45| Bool) (|$alpha-10:m| Int) (|$V-reftype:28| Int) )
    (=>
      ( and (= |$cond-alpha-rename:45| (> |$alpha-10:m| 0)) |$cond-alpha-rename:45| (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-10:m| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:28| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$cond-alpha-rename:60| Bool) (|$alpha-11:src| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:46| Bool) (|$cond-alpha-rename:73| Bool) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:71| Bool) (|$cond-alpha-rename:72| Bool) (|$cond-alpha-rename:9| Int) )
    (=>
      ( and (= |$cond-alpha-rename:9| |$alpha-10:m|) (= |$cond-alpha-rename:73| (and |$cond-alpha-rename:71| |$cond-alpha-rename:72|)) (= |$cond-alpha-rename:72| (< |$alpha-11:src| |$alpha-10:m|)) (= |$cond-alpha-rename:71| (<= 0 |$alpha-11:src|)) (= |$cond-alpha-rename:60| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:46| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:10| |$alpha-10:m|) (= |$V-reftype:64| 0) |$cond-alpha-rename:73| |$cond-alpha-rename:60| |$cond-alpha-rename:46| (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:15| |$alpha-11:src| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:64| |$alpha-11:src| |$cond-alpha-rename:9| |$cond-alpha-rename:10|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:47| Bool) (|$alpha-10:m| Int) (|$V-reftype:32| Int) )
    (=>
      ( and (= |$cond-alpha-rename:47| (> |$alpha-10:m| 0)) |$cond-alpha-rename:47| (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:32| |$alpha-10:m| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:32| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$cond-alpha-rename:63| Bool) (|$alpha-12:des| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:48| Bool) (|$cond-alpha-rename:76| Bool) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:74| Bool) (|$cond-alpha-rename:75| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:76| (and |$cond-alpha-rename:74| |$cond-alpha-rename:75|)) (= |$cond-alpha-rename:75| (< |$alpha-12:des| |$alpha-10:m|)) (= |$cond-alpha-rename:74| (<= 0 |$alpha-12:des|)) (= |$cond-alpha-rename:63| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:48| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:12| |$alpha-10:m|) (= |$cond-alpha-rename:11| |$alpha-10:m|) (= |$V-reftype:68| 0) |$cond-alpha-rename:76| |$cond-alpha-rename:63| |$cond-alpha-rename:48| (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:17| |$alpha-12:des| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:18| |$V-reftype:68| |$alpha-12:des| |$cond-alpha-rename:11| |$cond-alpha-rename:12|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:14| Int) (|$cond-alpha-rename:13| Int) (|$alpha-10:m| Int) (|$knormal:39| Int) (|$V-reftype:40| Int) (|$knormal:37| Int) (|$cond-alpha-rename:49| Bool) )
    (=>
      ( and (= |$knormal:37| 0) (= |$cond-alpha-rename:49| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:14| |$alpha-10:m|) (= |$cond-alpha-rename:13| |$alpha-10:m|) |$cond-alpha-rename:49| (|$innerFunc:3-print_array$unknown:28| |$knormal:39| |$alpha-10:m| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$knormal:39| |$knormal:37| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:29| |$V-reftype:40| |$knormal:39| |$cond-alpha-rename:13| |$cond-alpha-rename:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:58| Int) (|$cond-alpha-rename:100| Bool) (|$cond-alpha-rename:98| Int) (|$knormal:61| Int) (|$V-reftype:43| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$cond-alpha-rename:99| Int) (|$cond-alpha-rename:97| Int) (|$knormal:48| Bool) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:100| (>= |$cond-alpha-rename:99| |$cond-alpha-rename:98|)) (not |$knormal:48|) (not |$cond-alpha-rename:100|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:99| |$cond-alpha-rename:98| |$cond-alpha-rename:97|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Bool) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:103| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$V-reftype:45| Int) (|$alpha-18:src| Int) (|$alpha-20:m| Int) (|$knormal:61| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:104| Bool) (|$knormal:58| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:104| (>= |$cond-alpha-rename:103| |$cond-alpha-rename:102|)) (not |$knormal:48|) (not |$cond-alpha-rename:104|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:103| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:24| |$V-reftype:45| |$alpha-18:src| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:23| |$alpha-18:src| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:24| |$V-reftype:45| |$alpha-18:src| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:58| Int) (|$cond-alpha-rename:108| Bool) (|$cond-alpha-rename:106| Int) (|$knormal:61| Int) (|$V-reftype:47| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:105| Int) (|$knormal:48| Bool) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:108| (>= |$cond-alpha-rename:107| |$cond-alpha-rename:106|)) (not |$knormal:48|) (not |$cond-alpha-rename:108|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:107| |$cond-alpha-rename:106| |$cond-alpha-rename:105|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Bool) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:111| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$V-reftype:49| Int) (|$alpha-19:des| Int) (|$alpha-20:m| Int) (|$knormal:61| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:112| Bool) (|$knormal:58| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:112| (>= |$cond-alpha-rename:111| |$cond-alpha-rename:110|)) (not |$knormal:48|) (not |$cond-alpha-rename:112|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:111| |$cond-alpha-rename:110| |$cond-alpha-rename:109|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:26| |$V-reftype:49| |$alpha-19:des| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:25| |$alpha-19:des| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:26| |$V-reftype:49| |$alpha-19:des| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Bool) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:115| Int) (|$alpha-17:m| Int) (|$alpha-22:i| Int) (|$V-reftype:53| Int) (|$alpha-20:m| Int) (|$knormal:61| Int) (|$cond-alpha-rename:114| Int) (|$cond-alpha-rename:116| Bool) (|$knormal:58| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:116| (>= |$cond-alpha-rename:115| |$cond-alpha-rename:114|)) (not |$knormal:48|) (not |$cond-alpha-rename:116|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:115| |$cond-alpha-rename:114| |$cond-alpha-rename:113|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-20:m| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:58| Int) (|$cond-alpha-rename:120| Bool) (|$cond-alpha-rename:118| Int) (|$knormal:61| Int) (|$V-reftype:55| Int) (|$alpha-20:m| Int) (|$alpha-21:array| Int) (|$alpha-17:m| Int) (|$alpha-22:i| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:117| Int) (|$knormal:48| Bool) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:16| |$alpha-20:m|) (= |$cond-alpha-rename:15| |$alpha-20:m|) (= |$cond-alpha-rename:120| (>= |$cond-alpha-rename:119| |$cond-alpha-rename:118|)) (not |$knormal:48|) (not |$cond-alpha-rename:120|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$V-reftype:55| |$alpha-21:array| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:28| |$alpha-21:array| |$alpha-20:m| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:29| |$V-reftype:55| |$alpha-21:array| |$cond-alpha-rename:15| |$cond-alpha-rename:16|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$V-reftype:110| Int) (|$cond-alpha-rename:124| Bool) (|$knormal:60| Int) (|$cond-alpha-rename:122| Int) (|$alpha-20:m| Int) (|$knormal:61| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:121| Int) (|$knormal:58| Int) (|$knormal:48| Bool) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:124| (>= |$cond-alpha-rename:123| |$cond-alpha-rename:122|)) (= |$V-reftype:110| |$knormal:60|) (not |$knormal:48|) (not |$cond-alpha-rename:124|) (|$innerFunc:3-print_array$unknown:31| |$knormal:60| |$knormal:58| |$alpha-20:m| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) )
      (|$innerFunc:3-print_array$unknown:31| |$V-reftype:110| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:17| Int) (|$knormal:48| Bool) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:127| Int) (|$alpha-17:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) (|$alpha-20:m| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:128| Bool) (|$knormal:58| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| 1) (= |$knormal:58| (+ |$alpha-22:i| 1)) (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$cond-alpha-rename:18| |$alpha-20:m|) (= |$cond-alpha-rename:17| |$alpha-20:m|) (= |$cond-alpha-rename:128| (>= |$cond-alpha-rename:127| |$cond-alpha-rename:126|)) (not |$knormal:48|) (not |$cond-alpha-rename:128|) (|$innerFunc:3-print_array$unknown:30| |$cond-alpha-rename:127| |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$cond-alpha-rename:127| |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) )
      (|$innerFunc:3-print_array$unknown:30| |$knormal:58| |$cond-alpha-rename:17| |$cond-alpha-rename:18|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Bool) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) (|$V-reftype:108| Int) )
    (=>
      ( and (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (= |$V-reftype:108| 1) |$knormal:48| (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) true true )
      (|$innerFunc:3-print_array$unknown:31| |$V-reftype:108| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Bool) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$alpha-17:m| Int) )
    (=>
      ( and (= |$knormal:48| (>= |$alpha-22:i| |$alpha-20:m|)) (not |$knormal:48|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) true true )
      (|$innerFunc:3-print_array$unknown:28| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:50| Bool) (|$V-reftype:43| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (= |$cond-alpha-rename:50| (> |$alpha-10:m| 0)) |$cond-alpha-rename:50| (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:43| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:77| Bool) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:51| Bool) (|$alpha-11:src| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:61| Bool) (|$V-reftype:64| Int) )
    (=>
      ( and (= |$cond-alpha-rename:79| (and |$cond-alpha-rename:77| |$cond-alpha-rename:78|)) (= |$cond-alpha-rename:78| (< |$alpha-11:src| |$alpha-10:m|)) (= |$cond-alpha-rename:77| (<= 0 |$alpha-11:src|)) (= |$cond-alpha-rename:61| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:51| (> |$alpha-10:m| 0)) (= |$V-reftype:64| 0) |$cond-alpha-rename:79| |$cond-alpha-rename:61| |$cond-alpha-rename:51| (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:3-print_array$unknown:23| |$alpha-11:src| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:24| |$V-reftype:64| |$alpha-11:src| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:52| Bool) (|$V-reftype:47| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (= |$cond-alpha-rename:52| (> |$alpha-10:m| 0)) |$cond-alpha-rename:52| (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:47| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:81| Bool) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:82| Bool) (|$cond-alpha-rename:53| Bool) (|$alpha-12:des| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:64| Bool) (|$V-reftype:68| Int) )
    (=>
      ( and (= |$cond-alpha-rename:82| (and |$cond-alpha-rename:80| |$cond-alpha-rename:81|)) (= |$cond-alpha-rename:81| (< |$alpha-12:des| |$alpha-10:m|)) (= |$cond-alpha-rename:80| (<= 0 |$alpha-12:des|)) (= |$cond-alpha-rename:64| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:53| (> |$alpha-10:m| 0)) (= |$V-reftype:68| 0) |$cond-alpha-rename:82| |$cond-alpha-rename:64| |$cond-alpha-rename:53| (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:3-print_array$unknown:25| |$alpha-12:des| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:26| |$V-reftype:68| |$alpha-12:des| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:19| Int) (|$V-reftype:53| Int) (|$alpha-10:m| Int) (|$cond-alpha-rename:54| Bool) )
    (=>
      ( and (= |$knormal:37| 0) (= |$cond-alpha-rename:54| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:20| |$alpha-10:m|) (= |$cond-alpha-rename:19| |$alpha-10:m|) |$cond-alpha-rename:54| (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:53| |$knormal:37| |$cond-alpha-rename:19| |$cond-alpha-rename:20|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$cond-alpha-rename:56| Bool) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:22| Int) (|$knormal:23| Int) )
    (=>
      ( and (= |$knormal:23| 0) (= |$cond-alpha-rename:56| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:22| |$alpha-10:m|) (= |$cond-alpha-rename:21| |$alpha-10:m|) |$cond-alpha-rename:56| )
      (|$innerFunc:3-print_array$unknown:30| |$knormal:23| |$cond-alpha-rename:21| |$cond-alpha-rename:22|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$cond-alpha-rename:57| Bool) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$knormal:37| Int) )
    (=>
      ( and (= |$knormal:37| 0) (= |$cond-alpha-rename:57| (> |$alpha-10:m| 0)) (= |$cond-alpha-rename:24| |$alpha-10:m|) (= |$cond-alpha-rename:23| |$alpha-10:m|) |$cond-alpha-rename:57| )
      (|$innerFunc:2-bcopy$unknown:19| |$knormal:37| |$cond-alpha-rename:23| |$cond-alpha-rename:24|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Bool) (|$V-reftype:62| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (= |$knormal:40| (> |$alpha-14:n| 0)) |$knormal:40| (|f$unknown:33| |$V-reftype:62| |$alpha-14:n|) )
      (|make_array$unknown:39| |$V-reftype:62| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Bool) (|$V-reftype:66| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (= |$knormal:40| (> |$alpha-14:n| 0)) |$knormal:40| (|f$unknown:35| |$V-reftype:66| |$alpha-14:n|) )
      (|make_array$unknown:39| |$V-reftype:66| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:39| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:186| Bool) (|$cond-alpha-rename:185| Int) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (= |$cond-alpha-rename:26| |$alpha-4:i|) (= |$cond-alpha-rename:25| |$alpha-4:i|) (= |$cond-alpha-rename:186| (>= |$alpha-4:i| |$alpha-5:n|)) (not |$cond-alpha-rename:186|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:185|) (|$innerFunc:2-bcopy$unknown:16| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:185|) )
      (|update$unknown:45| |$cond-alpha-rename:25| |$alpha-5:n| |$cond-alpha-rename:26|)
    )
  )
)
(check-sat)

(get-model)

