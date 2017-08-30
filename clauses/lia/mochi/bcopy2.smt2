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

(declare-fun |make_array$unknown:10|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:11|
  ( Int ) Bool
)

(declare-fun |bcopy_aux$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:16|
  ( Int Int Int Int ) Bool
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

(declare-fun |bcopy_aux$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:8|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-14:n| Int) )
    (=>
      true
      (|make_array$unknown:8| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) )
    (=>
      true
      (|make_array$unknown:8| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$knormal:14| Int) (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:22| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:22| Int) (|$alpha-12:i| Int) (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$V-reftype:7| Int) (|$knormal:22| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:22| Int) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$alpha-11:des| Int) (|$V-reftype:9| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:des| Int) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$V-reftype:9| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|update$unknown:13| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|update$unknown:14| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:22| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:13| Int) (|$V-reftype:44| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$V-reftype:44| |$knormal:13|) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:7| |$knormal:13| |$knormal:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| |$V-reftype:44| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|update$unknown:13| |$V-reftype:28| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:28| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:22| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:1| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:22| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not |$knormal:5|) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:6| |$knormal:11| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|update$unknown:11| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|update$unknown:12| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|update$unknown:15| |$knormal:14| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:42| 1) |$knormal:5| (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| |$V-reftype:42| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:1| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$alpha-14:n| Int) (|$V-reftype:3| Int) (|$knormal:25| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:35| Int) (|$V-reftype:23| Int) (|$knormal:23| Bool) (|$alpha-15:m| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|make_array$unknown:10| |$V-reftype:23| |$knormal:35| |$alpha-14:n|) (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$alpha-14:n| Int) (|$V-reftype:7| Int) (|$knormal:25| Bool) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:34| Int) (|$V-reftype:23| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|make_array$unknown:10| |$V-reftype:23| |$knormal:34| |$alpha-15:m|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:39| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:39| 0) |$knormal:3| (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:8| |$alpha-1:n|) )
      (|make_array$unknown:10| |$V-reftype:39| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:8| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:4| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (= |$V-reftype:40| 1) (|update$unknown:15| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:14| |$knormal:4| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:12| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:11| |$alpha-4:i|) )
      (|update$unknown:16| |$V-reftype:40| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:12| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:11| |$alpha-4:i|) )
      (|update$unknown:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-14:n| Int) (|$knormal:25| Bool) (|$knormal:23| Bool) (|$alpha-15:m| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| )
      (|bcopy_aux$unknown:1| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| )
      (|bcopy_aux$unknown:6| |$knormal:31| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

