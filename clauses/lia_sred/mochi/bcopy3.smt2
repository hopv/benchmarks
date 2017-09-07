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
  (forall ( (|$cond-alpha-rename:24| Bool) (|$cond-alpha-rename:11| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:10| Int) (|$V-reftype:24| Int) (|$knormal:15| Int) (|$alpha-8:m| Int) (|$cond-alpha-rename:12| Bool) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:m|)) (= |$cond-alpha-rename:24| (>= |$V-reftype:24| |$cond-alpha-rename:23|)) (= |$cond-alpha-rename:12| (= |$V-reftype:24| |$cond-alpha-rename:11|)) (not |$knormal:6|) (not |$cond-alpha-rename:24|) (not |$cond-alpha-rename:12|) (|update$unknown:15| |$cond-alpha-rename:11| |$cond-alpha-rename:10| |$V-reftype:24|) (|bcopy_aux$unknown:6| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:6| |$V-reftype:24| |$cond-alpha-rename:23|) (|bcopy_aux$unknown:3| |$knormal:15| |$alpha-11:i| |$alpha-8:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:10| |$V-reftype:24| |$cond-alpha-rename:23|) )
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
  (forall ( (|$alpha-14:m| Int) (|$alpha-13:n| Int) (|$V-reftype:3| Int) (|$knormal:22| Bool) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) |$knormal:22| (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:3| Bool) (|$knormal:32| Int) (|$alpha-13:n| Int) (|$knormal:22| Bool) (|$cond-alpha-rename:1| Bool) (|$cond-alpha-rename:2| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:3| (and |$cond-alpha-rename:1| |$cond-alpha-rename:2|)) (= |$cond-alpha-rename:2| (< |$knormal:32| |$alpha-13:n|)) (= |$cond-alpha-rename:1| (<= 0 |$knormal:32|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:3| (|make_array$unknown:9| |$knormal:32| |$alpha-13:n|) (|bcopy_aux$unknown:2| |$knormal:32| |$alpha-13:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:32| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:m| Int) (|$alpha-13:n| Int) (|$V-reftype:7| Int) (|$knormal:22| Bool) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) |$knormal:22| (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-13:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-14:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$cond-alpha-rename:6| Bool) (|$knormal:31| Int) (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$knormal:22| Bool) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:5| Bool) )
    (=>
      ( and (= |$knormal:22| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$cond-alpha-rename:6| (and |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| (< |$knormal:31| |$alpha-14:m|)) (= |$cond-alpha-rename:4| (<= 0 |$knormal:31|)) (= |$V-reftype:23| 0) |$knormal:22| |$cond-alpha-rename:6| (|make_array$unknown:9| |$knormal:31| |$alpha-14:m|) (|bcopy_aux$unknown:4| |$knormal:31| |$alpha-13:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:31| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$cond-alpha-rename:28| Bool) (|$cond-alpha-rename:22| Bool) (|$cond-alpha-rename:19| Int) (|$knormal:5| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:18| Int) (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:17| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:20| Bool) (|$cond-alpha-rename:26| Bool) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-5:i| |$alpha-7:j|)) (= |$cond-alpha-rename:28| (>= |$alpha-5:i| |$cond-alpha-rename:27|)) (= |$cond-alpha-rename:26| (>= |$alpha-5:i| |$cond-alpha-rename:25|)) (= |$cond-alpha-rename:22| (>= |$cond-alpha-rename:16| |$cond-alpha-rename:17|)) (= |$cond-alpha-rename:20| (= |$alpha-5:i| |$cond-alpha-rename:19|)) (= |$V-reftype:42| |$knormal:5|) (not |$knormal:4|) (not |$cond-alpha-rename:28|) (not |$cond-alpha-rename:26|) (not |$cond-alpha-rename:22|) (not |$cond-alpha-rename:20|) (|update$unknown:15| |$cond-alpha-rename:19| |$cond-alpha-rename:18| |$alpha-5:i|) (|update$unknown:15| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|bcopy_aux$unknown:6| |$alpha-5:i| |$cond-alpha-rename:27|) (|bcopy_aux$unknown:6| |$alpha-5:i| |$cond-alpha-rename:25|) (|bcopy_aux$unknown:5| |$knormal:5| |$alpha-5:i| |$cond-alpha-rename:17|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:21| |$cond-alpha-rename:16| |$cond-alpha-rename:17|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:18| |$alpha-5:i| |$cond-alpha-rename:27|) (|bcopy_aux$unknown:3| |$alpha-6:x| |$alpha-5:i| |$cond-alpha-rename:25|) )
      (|update$unknown:16| |$V-reftype:42| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:30| Bool) (|$alpha-7:j| Int) (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$cond-alpha-rename:29| Int) (|$knormal:4| Bool) (|$V-reftype:41| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-5:i| |$alpha-7:j|)) (= |$cond-alpha-rename:30| (>= |$alpha-5:i| |$cond-alpha-rename:29|)) (= |$V-reftype:41| |$alpha-6:x|) (not |$cond-alpha-rename:30|) |$knormal:4| (|update$unknown:15| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|) (|bcopy_aux$unknown:6| |$alpha-5:i| |$cond-alpha-rename:29|) (|bcopy_aux$unknown:3| |$alpha-6:x| |$alpha-5:i| |$cond-alpha-rename:29|) )
      (|update$unknown:16| |$V-reftype:41| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
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

