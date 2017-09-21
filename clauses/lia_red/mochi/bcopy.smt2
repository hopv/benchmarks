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
  (forall ( (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:14| Int) )
    (=>
      ( and (<= |$cond-alpha-rename:13| |$cond-alpha-rename:14|) )
      (|bcopy_aux$unknown:9| |$cond-alpha-rename:13| 0 |$cond-alpha-rename:14| |$cond-alpha-rename:13|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:61| Int) (|$knormal:15| Int) )
    (=>
      ( and (< |$alpha-11:i| |$alpha-9:src|) (<= 0 |$alpha-11:i|) (= 0 0) (not (>= |$alpha-11:i| |$cond-alpha-rename:61|)) (not (>= |$alpha-11:i| |$alpha-12:m|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:125|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:128|)) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$alpha-10:des|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$cond-alpha-rename:126|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:61| |$alpha-11:i| |$cond-alpha-rename:60| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:128| |$alpha-11:i| |$cond-alpha-rename:127| |$cond-alpha-rename:126|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:125| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:126|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| (+ |$alpha-11:i| 1) |$alpha-10:des| |$alpha-9:src|) )
      (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) )
    (=>
      ( and (< |$alpha-11:i| |$alpha-9:src|) (<= 0 |$alpha-11:i|) (= 0 0) (not (>= |$alpha-11:i| |$cond-alpha-rename:67|)) (not (>= |$alpha-11:i| |$alpha-12:m|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:137|)) (not (>= |$alpha-11:i| |$cond-alpha-rename:140|)) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$alpha-10:des|) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$cond-alpha-rename:138|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:67| |$alpha-11:i| |$cond-alpha-rename:66| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:140| |$alpha-11:i| |$cond-alpha-rename:139| |$cond-alpha-rename:138|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:137| |$alpha-11:i| |$alpha-10:des| |$cond-alpha-rename:138|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) )
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
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) )
    ( and (|bcopy_aux$unknown:9| |$cond-alpha-rename:48| |$alpha-7:i| |$cond-alpha-rename:47| |$alpha-6:src|) (not (>= |$alpha-7:i| |$cond-alpha-rename:48|)) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:103| Int) )
    ( and (|bcopy_aux$unknown:9| |$cond-alpha-rename:100| |$alpha-4:i| |$alpha-3:des| |$cond-alpha-rename:101|) (|bcopy_aux$unknown:9| |$cond-alpha-rename:103| |$alpha-4:i| |$cond-alpha-rename:102| |$cond-alpha-rename:101|) (< |$alpha-4:i| |$cond-alpha-rename:101|) (<= 0 |$alpha-4:i|) (not (>= |$alpha-4:i| |$cond-alpha-rename:103|)) (not (>= |$alpha-4:i| |$cond-alpha-rename:100|)) (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) )
    )
  )
)
(check-sat)

(get-model)

