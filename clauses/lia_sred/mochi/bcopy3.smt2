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

(declare-fun |update$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |make_array$unknown:9|
  ( Int Int ) Bool
)

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

(declare-fun |bcopy_aux$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$alpha-9:src| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|) (|bcopy_aux$unknown:2| |$alpha-9:src| |$alpha-8:m|) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:7| |$knormal:14| (+ |$alpha-11:i| 1) |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:7| |$knormal:14| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|update$unknown:15| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$V-reftype:24|) (not (= |$V-reftype:24| |$cond-alpha-rename:18|)) (not (>= |$alpha-11:i| |$alpha-8:m|)) )
      (|bcopy_aux$unknown:4| |$V-reftype:24| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:6| (+ |$alpha-11:i| 1) |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) )
    (=>
      ( and (>= |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:7| 1 |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-8:m| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-8:m|)) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) )
      (|bcopy_aux$unknown:2| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-13:n| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$knormal:32| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (<= 0 |$knormal:32|) (< |$knormal:32| |$alpha-13:n|) (|make_array$unknown:9| |$knormal:32| |$alpha-13:n|) (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) )
      (|bcopy_aux$unknown:3| 0 |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-13:n| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-13:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-14:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$knormal:31| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (<= 0 |$knormal:31|) (< |$knormal:31| |$alpha-14:m|) (|make_array$unknown:9| |$knormal:31| |$alpha-14:m|) (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) )
      (|bcopy_aux$unknown:5| 0 |$knormal:31| |$alpha-13:n|)
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
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:37| Int) (|$knormal:5| Int) )
    (=>
      ( and (not (= |$alpha-5:i| |$alpha-7:j|)) (not (>= |$cond-alpha-rename:32| |$cond-alpha-rename:33|)) (not (= |$alpha-5:i| |$cond-alpha-rename:35|)) (|update$unknown:15| |$cond-alpha-rename:35| |$cond-alpha-rename:34| |$alpha-5:i|) (|update$unknown:15| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) (|bcopy_aux$unknown:5| |$knormal:5| |$alpha-5:i| |$cond-alpha-rename:33|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:37| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) )
      (|update$unknown:16| |$knormal:5| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:j| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-7:j| |$alpha-6:x| |$alpha-7:j|) )
      (|update$unknown:16| |$alpha-6:x| |$alpha-7:j| |$alpha-6:x| |$alpha-7:j|)
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

