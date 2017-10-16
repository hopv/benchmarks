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

(declare-fun |sub$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:9|
  ( Int Int Int Int ) Bool
)

(declare-fun |bcopy$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |bcopy$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:12|
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
  (forall ( (|$alpha-16:n| Int) (|$knormal:40| Int) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-2:src| Int) )
    (=>
      ( and (= |$V-reftype:39| |$alpha-2:src|) true )
      (|arraysize$unknown:2| |$V-reftype:39| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:25| Int) (|$knormal:29| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:29| 0) (= |$V-reftype:54| |$knormal:34|) (|bcopy_aux$unknown:10| |$knormal:34| |$knormal:25| |$knormal:29| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy$unknown:5| |$V-reftype:54| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:25| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:25| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:25| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:25| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy_aux$unknown:9| |$knormal:25| |$knormal:29| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:src| Int) (|$alpha-15:des| Int) )
    (=>
      ( and (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (= |$V-reftype:52| |$knormal:15|) (not (not (= 0 |$knormal:7|))) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|) )
      (|bcopy_aux$unknown:10| |$V-reftype:52| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not (not (= 0 |$knormal:7|))) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not (not (= 0 |$knormal:7|))) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not (not (= 0 |$knormal:7|))) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:18| Int) (|$knormal:24| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not (not (= 0 |$knormal:7|))) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      (|bcopy_aux$unknown:9| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:18| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:18| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:18| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (not (not (= 0 |$knormal:7|))) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      (|update$unknown:18| |$knormal:18| |$alpha-11:i| |$alpha-10:des|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (= |$V-reftype:50| 1) (not (= 0 |$knormal:7|)) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      (|bcopy_aux$unknown:10| |$V-reftype:50| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (not (not (= 0 |$knormal:7|))) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (>= |$alpha-11:i| |$alpha-12:m|)) (not (not (= 0 |$knormal:7|))) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) true true true )
      (|sub$unknown:14| |$alpha-11:i| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-1:n| Int) )
    (=>
      ( and (= |$V-reftype:38| |$alpha-1:n|) true )
      (|make_array$unknown:12| |$V-reftype:38| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (<= |$alpha-16:n| |$alpha-17:m|)) (not (= 0 |$knormal:35|)) (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) (|make_array$unknown:12| |$knormal:39| |$alpha-17:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:35| Int) (|$knormal:39| Int) (|$knormal:40| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (<= |$alpha-16:n| |$alpha-17:m|)) (not (= 0 |$knormal:35|)) (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) (|make_array$unknown:12| |$knormal:39| |$alpha-17:m|) )
      (|bcopy$unknown:4| |$knormal:39| |$knormal:40|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$alpha-8:$$tmp::1| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (= |$alpha-8:$$tmp::1| 1) (= |$V-reftype:48| 0) (not (= 0 |$knormal:6|)) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) true )
      (|sub$unknown:15| |$V-reftype:48| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (not (not (= 0 |$knormal:6|))) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (= |$V-reftype:43| 1) (not (= 0 |$knormal:3|)) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
      (|update$unknown:19| |$V-reftype:43| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (not (not (= 0 |$knormal:3|))) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

(exit)

