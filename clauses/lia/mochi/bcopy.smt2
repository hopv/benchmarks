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

(declare-fun |sub$unknown:13|
  ( Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:16|
  ( Int ) Bool
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

(declare-fun |bcopy_aux$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:6|
  ( Int ) Bool
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

(declare-fun |bcopy$unknown:3|
  ( Int ) Bool
)

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |arraysize$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:11|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-16:n| Int) )
    (=>
      true
      (|make_array$unknown:11| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$knormal:40| Int) (|$alpha-16:n| Int) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) )
      (|make_array$unknown:11| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:src| Int) (|$V-reftype:39| Int) )
    (=>
      ( and (= |$V-reftype:39| |$alpha-2:src|) (|arraysize$unknown:1| |$alpha-2:src|) )
      (|arraysize$unknown:2| |$V-reftype:39| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:34| Int) (|$alpha-15:des| Int) (|$alpha-14:src| Int) (|$knormal:25| Int) (|$V-reftype:54| Int) )
    (=>
      ( and (= |$knormal:29| 0) (= |$V-reftype:54| |$knormal:34|) (|bcopy_aux$unknown:10| |$knormal:34| |$knormal:25| |$knormal:29| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy$unknown:5| |$V-reftype:54| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy_aux$unknown:6| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-15:des| Int) (|$alpha-14:src| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy_aux$unknown:7| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) (|$alpha-14:src| Int) (|$alpha-15:des| Int) (|$knormal:29| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy_aux$unknown:8| |$knormal:29| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$alpha-15:des| Int) (|$alpha-14:src| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:29| 0) (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) (|arraysize$unknown:2| |$knormal:25| |$alpha-14:src|) )
      (|bcopy_aux$unknown:9| |$knormal:25| |$knormal:29| |$alpha-15:des| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:des| Int) (|$alpha-14:src| Int) )
    (=>
      ( and (|bcopy$unknown:4| |$alpha-15:des| |$alpha-14:src|) (|bcopy$unknown:3| |$alpha-14:src|) )
      (|arraysize$unknown:1| |$alpha-14:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$knormal:24| Int) (|$alpha-11:i| Int) (|$alpha-9:src| Int) (|$knormal:11| Int) (|$knormal:15| Int) (|$alpha-12:m| Int) (|$alpha-10:des| Int) (|$knormal:18| Int) (|$V-reftype:52| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (= |$V-reftype:52| |$knormal:15|) (not |$knormal:7|) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) (|bcopy_aux$unknown:10| |$knormal:15| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|) )
      (|bcopy_aux$unknown:10| |$V-reftype:52| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$knormal:24| Int) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:18| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not |$knormal:7|) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|bcopy_aux$unknown:6| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$knormal:18| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$knormal:24| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not |$knormal:7|) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$knormal:24| Int) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:18| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not |$knormal:7|) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|bcopy_aux$unknown:8| |$knormal:11| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$knormal:18| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$knormal:24| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$knormal:11| (+ |$alpha-11:i| 1)) (not |$knormal:7|) (|update$unknown:19| |$knormal:24| |$knormal:18| |$alpha-11:i| |$alpha-10:des|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|bcopy_aux$unknown:9| |$alpha-12:m| |$knormal:11| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (not |$knormal:7|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|update$unknown:16| |$alpha-10:des|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (not |$knormal:7|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|update$unknown:17| |$alpha-11:i| |$alpha-10:des|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:18| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (not |$knormal:7|) (|sub$unknown:15| |$knormal:18| |$alpha-11:i| |$alpha-9:src|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|update$unknown:18| |$knormal:18| |$alpha-11:i| |$alpha-10:des|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (= |$V-reftype:50| 1) |$knormal:7| (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|bcopy_aux$unknown:10| |$V-reftype:50| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-12:m| Int) (|$alpha-9:src| Int) (|$alpha-10:des| Int) (|$alpha-11:i| Int) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (not |$knormal:7|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|sub$unknown:13| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-10:des| Int) (|$alpha-9:src| Int) (|$alpha-12:m| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (>= |$alpha-11:i| |$alpha-12:m|)) (not |$knormal:7|) (|bcopy_aux$unknown:9| |$alpha-12:m| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:8| |$alpha-11:i| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:7| |$alpha-10:des| |$alpha-9:src|) (|bcopy_aux$unknown:6| |$alpha-9:src|) )
      (|sub$unknown:14| |$alpha-11:i| |$alpha-9:src|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$V-reftype:38| Int) )
    (=>
      ( and (= |$V-reftype:38| |$alpha-1:n|) (|make_array$unknown:11| |$alpha-1:n|) )
      (|make_array$unknown:12| |$V-reftype:38| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:35| Bool) (|$knormal:40| Int) (|$knormal:39| Int) (|$alpha-17:m| Int) (|$alpha-16:n| Int) )
    (=>
      ( and (= |$knormal:35| (<= |$alpha-16:n| |$alpha-17:m|)) |$knormal:35| (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) (|make_array$unknown:12| |$knormal:39| |$alpha-17:m|) )
      (|bcopy$unknown:3| |$knormal:40|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:m| Int) (|$knormal:39| Int) (|$knormal:40| Int) (|$knormal:35| Bool) )
    (=>
      ( and (= |$knormal:35| (<= |$alpha-16:n| |$alpha-17:m|)) |$knormal:35| (|make_array$unknown:12| |$knormal:40| |$alpha-16:n|) (|make_array$unknown:12| |$knormal:39| |$alpha-17:m|) )
      (|bcopy$unknown:4| |$knormal:39| |$knormal:40|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Bool) (|$V-reftype:48| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:6| Bool) (|$alpha-8:$$tmp::1| Int) )
    (=>
      ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$alpha-8:$$tmp::1| 1) (= |$V-reftype:48| 0) |$knormal:6| (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) (|sub$unknown:13| |$alpha-6:src|) )
      (|sub$unknown:15| |$V-reftype:48| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-6:src| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (not |$knormal:6|) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) (|sub$unknown:13| |$alpha-6:src|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$alpha-3:des| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$V-reftype:43| 1) |$knormal:3| (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:17| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:16| |$alpha-3:des|) )
      (|update$unknown:19| |$V-reftype:43| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (not |$knormal:3|) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:17| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:16| |$alpha-3:des|) )
    )
  )
)
(check-sat)

(get-model)

