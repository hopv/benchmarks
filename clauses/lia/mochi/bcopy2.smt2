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

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-11:des| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-11:des| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|update$unknown:13| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|update$unknown:14| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$V-reftype:44| |$knormal:13|) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:7| |$knormal:13| |$knormal:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:44| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|update$unknown:13| |$V-reftype:28| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:4| |$V-reftype:28| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:14| Int) (|$knormal:22| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:11| (+ |$alpha-12:i| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:16| |$knormal:22| |$knormal:14| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:6| |$knormal:11| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) true )
      (|update$unknown:15| |$knormal:14| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:42| 1) (not (= 0 |$knormal:5|)) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:42| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) (|make_array$unknown:10| |$V-reftype:23| |$knormal:35| |$alpha-14:n|) (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) (|make_array$unknown:10| |$V-reftype:23| |$knormal:34| |$alpha-15:m|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$alpha-3:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:39| 0) (not (= 0 |$knormal:3|)) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) true )
      (|make_array$unknown:10| |$V-reftype:39| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (not (not (= 0 |$knormal:3|))) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$V-reftype:40| 1) (|update$unknown:15| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:14| |$knormal:4| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      (|update$unknown:16| |$V-reftype:40| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) true true )
      (|update$unknown:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= (not (= 0 |$knormal:25|)) (and (not (= 0 |$knormal:23|)) (not (= 0 |$knormal:24|)))) (= (not (= 0 |$knormal:24|)) (> |$alpha-14:n| 0)) (= (not (= 0 |$knormal:23|)) (<= |$alpha-14:n| |$alpha-15:m|)) (not (= 0 |$knormal:25|)) )
      (|bcopy_aux$unknown:6| |$knormal:31| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

