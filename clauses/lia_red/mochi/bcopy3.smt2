(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update des i x j = if i=j then x else des i
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        update des i (src i);
        bcopy_aux m src des (i+1)
      end
  
  let main n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if n<=m then bcopy_aux n array1 array2 0 else ()
")

(set-logic HORN)

(declare-fun |update$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:5|
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

(declare-fun |bcopy_aux$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$alpha-9:src| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$alpha-9:src| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:7| |$knormal:14| (+ |$alpha-11:i| 1) |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:7| |$knormal:14| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|update$unknown:15| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$V-reftype:24|) (not (= |$V-reftype:24| |$cond-alpha-rename:27|)) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:4| |$V-reftype:24| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:6| (+ |$alpha-11:i| 1) |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (>= |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:7| 1 |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:2| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:7| Int) (|$knormal:32| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) (< |$knormal:32| |$alpha-13:n|) (<= 0 |$knormal:32|) (<= |$alpha-13:n| |$cond-alpha-rename:7|) (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:9| Int) (|$knormal:32| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) (|bcopy_aux$unknown:4| |$knormal:32| |$cond-alpha-rename:9|) (<= |$cond-alpha-rename:9| |$alpha-13:n|) (< |$knormal:32| |$alpha-13:n|) (<= 0 |$knormal:32|) (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:11| Int) (|$knormal:31| Int) )
    (=>
      ( and (|bcopy_aux$unknown:2| |$knormal:31| |$alpha-14:m|) (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) (<= |$alpha-14:m| |$cond-alpha-rename:11|) (< |$knormal:31| |$alpha-14:m|) (<= 0 |$knormal:31|) (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:31| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:13| Int) (|$knormal:31| Int) )
    (=>
      ( and (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) (|bcopy_aux$unknown:4| |$knormal:31| |$cond-alpha-rename:13|) (<= |$cond-alpha-rename:13| |$alpha-14:m|) (< |$knormal:31| |$alpha-14:m|) (<= 0 |$knormal:31|) (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:31| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:15| Int) )
    ( and (|bcopy_aux$unknown:2| |$alpha-2:i| |$alpha-1:n|) (<= |$alpha-1:n| |$cond-alpha-rename:15|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:17| Int) )
    ( and (|bcopy_aux$unknown:4| |$alpha-2:i| |$cond-alpha-rename:17|) (<= |$cond-alpha-rename:17| |$alpha-1:n|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:6| 0 |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

