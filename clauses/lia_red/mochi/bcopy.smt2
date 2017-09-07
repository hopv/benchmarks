(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec bcopy_aux src des i m =
    if i >= m
    then ()
    else
      begin
        update des i (sub src i);
        bcopy_aux src des (i+1) m
      end
  
  let bcopy src des = bcopy_aux src des 0 (arraysize src)
  
  let main n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if n<=m then bcopy array1 array2 else ()
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:9|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:29| Int) (|$knormal:25| Int) (|$cond-alpha-rename:4| Int) (|$alpha-15:des| Int) (|$alpha-14:src| Int) (|$cond-alpha-rename:14| Bool) (|$cond-alpha-rename:17| Bool) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:16| Int) )
    (=>
      ( and (= |$knormal:29| 0) (= |$knormal:25| |$alpha-14:src|) (= |$cond-alpha-rename:4| |$cond-alpha-rename:16|) (= |$cond-alpha-rename:17| (<= |$cond-alpha-rename:15| |$cond-alpha-rename:16|)) (= |$cond-alpha-rename:14| (<= |$cond-alpha-rename:12| |$cond-alpha-rename:13|)) (= |$alpha-15:des| |$cond-alpha-rename:13|) (= |$alpha-14:src| |$cond-alpha-rename:15|) (= |$alpha-14:src| |$cond-alpha-rename:12|) |$cond-alpha-rename:17| |$cond-alpha-rename:14| )
      (|bcopy_aux$unknown:9| |$knormal:25| |$knormal:29| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:100| Bool) (|$V-reftype:52| Int) (|$cond-alpha-rename:98| Bool) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:44| Bool) (|$cond-alpha-rename:91| Int) (|$alpha-11:i| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:15| Int) (|$alpha-12:m| Int) (|$alpha-10:des| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:101| Bool) (|$cond-alpha-rename:97| Bool) (|$cond-alpha-rename:94| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:99| Bool) (|$cond-alpha-rename:42| Bool) (|$cond-alpha-rename:43| Bool) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:24| 1) (= |$knormal:18| 0) (= |$knormal:11| (+ |$alpha-11:i| 1)) (= |$cond-alpha-rename:99| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:98| (>= |$alpha-11:i| |$cond-alpha-rename:90|)) (= |$cond-alpha-rename:97| (and |$cond-alpha-rename:95| |$cond-alpha-rename:96|)) (= |$cond-alpha-rename:96| (< |$alpha-11:i| |$cond-alpha-rename:91|)) (= |$cond-alpha-rename:95| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:94| (>= |$alpha-11:i| |$cond-alpha-rename:93|)) (= |$cond-alpha-rename:44| (and |$cond-alpha-rename:42| |$cond-alpha-rename:43|)) (= |$cond-alpha-rename:43| (< |$alpha-11:i| |$alpha-9:src|)) (= |$cond-alpha-rename:42| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:41| (>= |$alpha-11:i| |$cond-alpha-rename:40|)) (= |$cond-alpha-rename:101| (and |$cond-alpha-rename:100| |$cond-alpha-rename:99|)) (= |$cond-alpha-rename:100| (< |$alpha-11:i| |$alpha-10:des|)) (= |$V-reftype:52| |$knormal:15|) (not |$knormal:7|) (not |$cond-alpha-rename:98|) (not |$cond-alpha-rename:94|) (not |$cond-alpha-rename:41|) |$cond-alpha-rename:97| |$cond-alpha-rename:44| |$cond-alpha-rename:101| (|bcopy_aux$unknown:9| |$cond-alpha-rename:93| |$alpha-11:i| |$cond-alpha-rename:92| |$cond-alpha-rename:91|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:90| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:91|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:40| |$alpha-11:i| |$cond-alpha-rename:39| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|) )
      (|bcopy_aux$unknown:10| |$V-reftype:52| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:11| Int) (|$cond-alpha-rename:49| Bool) (|$cond-alpha-rename:48| Bool) (|$cond-alpha-rename:108| Bool) (|$cond-alpha-rename:107| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:110| Bool) (|$cond-alpha-rename:50| Bool) (|$cond-alpha-rename:109| Bool) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:102| Int) (|$alpha-10:des| Int) (|$alpha-12:m| Int) (|$alpha-11:i| Int) (|$alpha-9:src| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:113| Bool) (|$cond-alpha-rename:106| Bool) (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:111| Bool) (|$cond-alpha-rename:112| Bool) (|$knormal:24| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:24| 1) (= |$knormal:18| 0) (= |$knormal:11| (+ |$alpha-11:i| 1)) (= |$cond-alpha-rename:50| (and |$cond-alpha-rename:48| |$cond-alpha-rename:49|)) (= |$cond-alpha-rename:49| (< |$alpha-11:i| |$alpha-9:src|)) (= |$cond-alpha-rename:48| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:47| (>= |$alpha-11:i| |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:113| (and |$cond-alpha-rename:111| |$cond-alpha-rename:112|)) (= |$cond-alpha-rename:112| (< |$alpha-11:i| |$alpha-10:des|)) (= |$cond-alpha-rename:111| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:110| (>= |$alpha-11:i| |$cond-alpha-rename:102|)) (= |$cond-alpha-rename:109| (and |$cond-alpha-rename:107| |$cond-alpha-rename:108|)) (= |$cond-alpha-rename:108| (< |$alpha-11:i| |$cond-alpha-rename:103|)) (= |$cond-alpha-rename:107| (<= 0 |$alpha-11:i|)) (= |$cond-alpha-rename:106| (>= |$alpha-11:i| |$cond-alpha-rename:105|)) (not |$knormal:7|) (not |$cond-alpha-rename:47|) (not |$cond-alpha-rename:110|) (not |$cond-alpha-rename:106|) |$cond-alpha-rename:50| |$cond-alpha-rename:113| |$cond-alpha-rename:109| (|bcopy_aux$unknown:9| |$cond-alpha-rename:46| |$alpha-11:i| |$cond-alpha-rename:45| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:105| |$alpha-11:i| |$cond-alpha-rename:104| |$cond-alpha-rename:103|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:102| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:103|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) )
      (|bcopy_aux$unknown:9| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-9:src| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-10:des| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$V-reftype:50| 1) |$knormal:7| (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      (|bcopy_aux$unknown:10| |$V-reftype:50| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:35| Bool) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$alpha-7:i| Int) (|$alpha-6:src| Int) (|$knormal:6| Bool) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$cond-alpha-rename:35| (>= |$alpha-7:i| |$cond-alpha-rename:34|)) (not |$knormal:6|) (not |$cond-alpha-rename:35|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:34| |$alpha-7:i| |$cond-alpha-rename:33| |$alpha-6:src|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:77| Bool) (|$alpha-5:x| Int) (|$cond-alpha-rename:80| Bool) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$alpha-3:des| Int) (|$cond-alpha-rename:72| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:76| Bool) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$cond-alpha-rename:80| (>= |$alpha-4:i| |$cond-alpha-rename:72|)) (= |$cond-alpha-rename:79| (and |$cond-alpha-rename:77| |$cond-alpha-rename:78|)) (= |$cond-alpha-rename:78| (< |$alpha-4:i| |$cond-alpha-rename:73|)) (= |$cond-alpha-rename:77| (<= 0 |$alpha-4:i|)) (= |$cond-alpha-rename:76| (>= |$alpha-4:i| |$cond-alpha-rename:75|)) (= |$alpha-5:x| 0) (not |$knormal:3|) (not |$cond-alpha-rename:80|) (not |$cond-alpha-rename:76|) |$cond-alpha-rename:79| (|bcopy_aux$unknown:9| |$cond-alpha-rename:75| |$alpha-4:i| |$cond-alpha-rename:74| |$cond-alpha-rename:73|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:72| |$alpha-4:i| |$alpha-3:des| |$cond-alpha-rename:73|) )
    )
  )
)
(check-sat)

(get-model)

