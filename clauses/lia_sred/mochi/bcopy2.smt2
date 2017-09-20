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
  (forall ( (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:36| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:32| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:36| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:30| |$alpha-9:m|) (not (>= |$cond-alpha-rename:30| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:30| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:30| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:30| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:43| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:39| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:43| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:37| |$alpha-9:m|) (not (>= |$cond-alpha-rename:37| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:37| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:37| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:37| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:50| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:45| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:46| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:50| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:44| |$alpha-9:m|) (not (>= |$cond-alpha-rename:44| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:44| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:44| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:44| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-11:des| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:57| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:53| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:57| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:51| |$alpha-9:m|) (not (>= |$cond-alpha-rename:51| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:51| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:51| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:51| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:64| Int) (|$knormal:13| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:60| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:64| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$knormal:13| (+ |$cond-alpha-rename:58| 1) |$alpha-9:m|) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:58| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:7| |$knormal:13| |$cond-alpha-rename:58| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:12| |$cond-alpha-rename:11| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:11| |$alpha-9:m|) (not (>= |$cond-alpha-rename:11| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:11| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:4| |$cond-alpha-rename:11| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:71| Int) (|$knormal:14| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:67| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:71| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:65| |$alpha-9:m|) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:65| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:6| (+ |$cond-alpha-rename:65| 1) |$alpha-9:m|)
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
  (forall ( (|$V-reftype:3| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-14:n|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:35| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) (|make_array$unknown:9| |$knormal:35| |$alpha-14:n|) (< |$knormal:35| |$alpha-14:n|) (<= 0 |$knormal:35|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-14:n|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:34| Int) )
    (=>
      ( and (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) (|make_array$unknown:9| |$knormal:34| |$alpha-15:m|) (< |$knormal:34| |$alpha-15:m|) (<= 0 |$knormal:34|) (> |$alpha-14:n| 0) (<= |$alpha-14:n| |$alpha-15:m|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
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

