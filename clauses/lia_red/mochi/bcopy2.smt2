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

(declare-fun |bcopy_aux$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:68| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:63| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:64| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:68| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:62| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:62| |$alpha-9:m|) (not (>= |$cond-alpha-rename:62| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:62| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:62| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:62| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:75| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:71| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:75| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:69| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:69| |$alpha-9:m|) (not (>= |$cond-alpha-rename:69| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:69| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:69| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:69| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:82| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:77| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:78| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:82| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:76| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:76| |$alpha-9:m|) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-11:des| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:89| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:84| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:85| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:89| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:83| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:83| |$alpha-9:m|) (not (>= |$cond-alpha-rename:83| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:83| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:83| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:83| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:96| Int) (|$knormal:13| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:92| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:96| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:90| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$knormal:13| (+ |$cond-alpha-rename:90| 1) |$alpha-9:m|) (not (>= |$cond-alpha-rename:90| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:90| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:90| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:90| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:7| |$knormal:13| |$cond-alpha-rename:90| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:44| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:44| |$cond-alpha-rename:43| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:43| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:43| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:43| |$alpha-9:m|) (not (>= |$cond-alpha-rename:43| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:43| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:4| |$cond-alpha-rename:43| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:98| Int) (|$cond-alpha-rename:99| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:98| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:99| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:103| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:97| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:97| |$alpha-9:m|) (not (>= |$cond-alpha-rename:97| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:97| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:97| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:97| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:6| (+ |$cond-alpha-rename:97| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (>= |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| 1 |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:9| Int) (|$knormal:35| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$cond-alpha-rename:9|) (< |$knormal:35| |$alpha-14:n|) (<= 0 |$knormal:35|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:13| Int) (|$knormal:35| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) (|bcopy_aux$unknown:4| |$knormal:35| |$cond-alpha-rename:13|) (> |$cond-alpha-rename:13| 0) (<= |$cond-alpha-rename:13| |$alpha-14:n|) (< |$knormal:35| |$alpha-14:n|) (<= 0 |$knormal:35|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:17| Int) (|$knormal:34| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:34| |$alpha-15:m|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) (> |$alpha-15:m| 0) (<= |$alpha-15:m| |$cond-alpha-rename:17|) (< |$knormal:34| |$alpha-15:m|) (<= 0 |$knormal:34|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:21| Int) (|$knormal:34| Int) )
    (=>
      ( and (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) (|bcopy_aux$unknown:4| |$knormal:34| |$cond-alpha-rename:21|) (> |$cond-alpha-rename:21| 0) (<= |$cond-alpha-rename:21| |$alpha-15:m|) (< |$knormal:34| |$alpha-15:m|) (<= 0 |$knormal:34|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:25| Int) )
    ( and (|bcopy_aux$unknown:2| |$alpha-2:i| |$alpha-1:n|) (> |$alpha-1:n| 0) (<= |$alpha-1:n| |$cond-alpha-rename:25|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:29| Int) )
    ( and (|bcopy_aux$unknown:4| |$alpha-2:i| |$cond-alpha-rename:29|) (> |$cond-alpha-rename:29| 0) (<= |$cond-alpha-rename:29| |$alpha-1:n|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:6| 0 |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

