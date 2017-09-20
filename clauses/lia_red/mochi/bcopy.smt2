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
  (forall ( (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:5| Int) )
    (=>
      ( and (<= |$cond-alpha-rename:4| |$cond-alpha-rename:5|) )
      (|bcopy_aux$unknown:9| |$cond-alpha-rename:4| 0 |$cond-alpha-rename:5| |$cond-alpha-rename:4|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| (+ |$alpha-11:i| 1) |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:20| |$alpha-11:i| |$cond-alpha-rename:19| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:70| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:71|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:73| |$alpha-11:i| |$cond-alpha-rename:72| |$cond-alpha-rename:71|) (< |$alpha-11:i| |$alpha-9:src|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$cond-alpha-rename:71|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$alpha-10:des|) (<= 0 |$alpha-11:i|) (not (>= |$alpha-11:i| |$cond-alpha-rename:20|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:73|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:70|)) (not (>= |$alpha-11:i| |$alpha-12:m|)) )
      (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:82| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) )
    (=>
      ( and (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:26| |$alpha-11:i| |$cond-alpha-rename:25| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:82| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:83|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:85| |$alpha-11:i| |$cond-alpha-rename:84| |$cond-alpha-rename:83|) (< |$alpha-11:i| |$alpha-9:src|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$cond-alpha-rename:83|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$alpha-10:des|) (<= 0 |$alpha-11:i|) (not (>= |$alpha-11:i| |$cond-alpha-rename:26|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:85|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:82|)) (not (>= |$alpha-11:i| |$alpha-12:m|)) )
      (|bcopy_aux$unknown:9| |$alpha-12:m| (+ |$alpha-11:i| 1) |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) )
    (=>
      ( and (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (>= |$alpha-11:i| |$alpha-12:m|) )
      (|bcopy_aux$unknown:10| 1 |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) )
    ( and (|bcopy_aux$unknown:9| |$cond-alpha-rename:14| |$alpha-7:i| |$cond-alpha-rename:13| |$alpha-6:src|) (not (>= |$alpha-7:i| |$cond-alpha-rename:14|)) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:55| Int) )
    ( and (|bcopy_aux$unknown:9| |$cond-alpha-rename:52| |$alpha-4:i| |$alpha-3:des| |$cond-alpha-rename:53|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:55| |$alpha-4:i| |$cond-alpha-rename:54| |$cond-alpha-rename:53|) (< |$alpha-4:i| |$cond-alpha-rename:53|) (<= 0 |$alpha-4:i|) (not (>= |$alpha-4:i| |$cond-alpha-rename:55|)) (not (>= |$alpha-4:i| |$cond-alpha-rename:52|)) (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) )
    )
  )
)
(check-sat)

(get-model)

