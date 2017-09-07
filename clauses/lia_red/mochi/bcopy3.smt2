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
  (forall ( (|$knormal:12| Int) (|$knormal:15| Int) (|$V-reftype:3| Int) (|$alpha-8:m| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-11:i| Int) (|$V-reftype:5| Int) (|$alpha-9:src| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|) (|bcopy_aux$unknown:2| |$alpha-9:src| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-9:src| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) (|$alpha-11:i| Int) (|$V-reftype:7| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-8:m| Int) (|$knormal:15| Int) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$V-reftype:9| Int) (|$knormal:12| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:4| |$alpha-10:des| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-10:des| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:12| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) (|$alpha-11:i| Int) (|$knormal:14| Int) (|$V-reftype:46| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (= |$V-reftype:46| |$knormal:14|) (not |$knormal:6|) (|bcopy_aux$unknown:7| |$knormal:14| |$knormal:12| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:46| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:27| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:26| Int) (|$V-reftype:24| Int) (|$knormal:15| Int) (|$alpha-8:m| Int) (|$cond-alpha-rename:28| Bool) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$cond-alpha-rename:47| (>= |$V-reftype:24| |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:28| (= |$V-reftype:24| |$cond-alpha-rename:27|)) (not |$knormal:6|) (not |$cond-alpha-rename:47|) (not |$cond-alpha-rename:28|) (|update$unknown:15| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$V-reftype:24|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$V-reftype:24| |$cond-alpha-rename:46|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:26| |$V-reftype:24| |$cond-alpha-rename:46|) )
      (|bcopy_aux$unknown:4| |$V-reftype:24| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$alpha-8:m| Int) (|$knormal:15| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$knormal:12| (+ |$alpha-11:i| 1)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:6| |$knormal:12| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-8:m| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$V-reftype:44| 1) |$knormal:6| (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:44| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:m| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (not |$knormal:6|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) true )
      (|bcopy_aux$unknown:2| |$alpha-11:i| |$alpha-8:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:2| Bool) (|$cond-alpha-rename:1| Bool) (|$knormal:22| Bool) (|$cond-alpha-rename:3| Bool) (|$knormal:32| Int) (|$alpha-13:n| Int) (|$cond-alpha-rename:8| Bool) (|$V-reftype:23| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:8| (<= |$alpha-13:n| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:3| (and |$cond-alpha-rename:1| |$cond-alpha-rename:2|)) (= |$cond-alpha-rename:2| (< |$knormal:32| |$alpha-13:n|)) (= |$cond-alpha-rename:1| (<= 0 |$knormal:32|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:8| |$cond-alpha-rename:3| (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:1| Bool) (|$knormal:22| Bool) (|$cond-alpha-rename:10| Bool) (|$knormal:32| Int) (|$alpha-13:n| Int) (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:3| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:2| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:3| (and |$cond-alpha-rename:1| |$cond-alpha-rename:2|)) (= |$cond-alpha-rename:2| (< |$knormal:32| |$alpha-13:n|)) (= |$cond-alpha-rename:10| (<= |$cond-alpha-rename:9| |$alpha-13:n|)) (= |$cond-alpha-rename:1| (<= 0 |$knormal:32|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:3| |$cond-alpha-rename:10| (|bcopy_aux$unknown:4| |$knormal:32| |$cond-alpha-rename:9|) (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:11| Int) (|$knormal:22| Bool) (|$cond-alpha-rename:12| Bool) (|$knormal:31| Int) (|$alpha-14:m| Int) (|$alpha-13:n| Int) (|$cond-alpha-rename:6| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:5| Bool) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:6| (and |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| (< |$knormal:31| |$alpha-14:m|)) (= |$cond-alpha-rename:4| (<= 0 |$knormal:31|)) (= |$cond-alpha-rename:12| (<= |$alpha-14:m| |$cond-alpha-rename:11|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:6| |$cond-alpha-rename:12| (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) (|bcopy_aux$unknown:2| |$knormal:31| |$alpha-14:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:31| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:m| Int) (|$knormal:22| Bool) (|$cond-alpha-rename:14| Bool) (|$knormal:31| Int) (|$alpha-13:n| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:6| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:5| Bool) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:6| (and |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| (< |$knormal:31| |$alpha-14:m|)) (= |$cond-alpha-rename:4| (<= 0 |$knormal:31|)) (= |$cond-alpha-rename:14| (<= |$cond-alpha-rename:13| |$alpha-14:m|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:6| |$cond-alpha-rename:14| (|bcopy_aux$unknown:4| |$knormal:31| |$cond-alpha-rename:13|) (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:31| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:16| (<= |$alpha-1:n| |$cond-alpha-rename:15|)) (not |$knormal:3|) |$cond-alpha-rename:16| (|bcopy_aux$unknown:2| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$cond-alpha-rename:18| Bool) (|$alpha-2:i| Int) (|$cond-alpha-rename:17| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:18| (<= |$cond-alpha-rename:17| |$alpha-1:n|)) (not |$knormal:3|) |$cond-alpha-rename:18| (|bcopy_aux$unknown:4| |$alpha-2:i| |$cond-alpha-rename:17|) )
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-13:n| Int) (|$knormal:22| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) |$knormal:22| )
      (|bcopy_aux$unknown:6| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

