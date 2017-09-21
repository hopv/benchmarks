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

(declare-fun |make_array$unknown:9|
  ( Int Int ) Bool
)

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
  (forall ( (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:64| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:64| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:60| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:71| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:71| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:67| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:78| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:72| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:72| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:72| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:72| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$cond-alpha-rename:72| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:72| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:78| |$cond-alpha-rename:72| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:72| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:74| |$cond-alpha-rename:72| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-11:des| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:85| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:79| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:79| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:79| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:79| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$cond-alpha-rename:79| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:79| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:85| |$cond-alpha-rename:79| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:79| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:81| |$cond-alpha-rename:79| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:80| |$cond-alpha-rename:79| |$alpha-9:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:92| Int) (|$knormal:13| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (|bcopy_aux$unknown:7| |$knormal:13| (+ |$cond-alpha-rename:86| 1) |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:86| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:86| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:92| |$cond-alpha-rename:86| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:86| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:88| |$cond-alpha-rename:86| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| |$knormal:13| |$cond-alpha-rename:86| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:20| |$cond-alpha-rename:19| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:19| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:19| |$alpha-9:m|) (not (>= |$cond-alpha-rename:19| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:19| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:4| |$cond-alpha-rename:19| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:99| Int) (|$knormal:14| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:93| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:93| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:93| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:93| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$cond-alpha-rename:93| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:93| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:99| |$cond-alpha-rename:93| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:93| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:95| |$cond-alpha-rename:93| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:94| |$cond-alpha-rename:93| |$alpha-9:m|) )
      (|bcopy_aux$unknown:6| (+ |$cond-alpha-rename:93| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (>= |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| 1 |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (> |$alpha-14:n| 0) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:35| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (> |$alpha-14:n| 0) (<= 0 |$knormal:35|) (< |$knormal:35| |$alpha-14:n|) (|make_array$unknown:9| |$knormal:35| |$alpha-14:n|) (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (> |$alpha-14:n| 0) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:34| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (> |$alpha-14:n| 0) (<= 0 |$knormal:34|) (< |$knormal:34| |$alpha-15:m|) (|make_array$unknown:9| |$knormal:34| |$alpha-15:m|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (> |$alpha-14:n| 0) )
      (|bcopy_aux$unknown:6| 0 |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

