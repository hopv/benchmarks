(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update i n a x = a i; let a j = if i=j then x else a j in a
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else bcopy_aux m src (update i m des (src i)) (i+1)
  
  let main i n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if i=0 && n<=m then bcopy_aux n array1 array2 i else ()
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:7|
  ( Int ) Bool
)

(declare-fun |bcopy_aux$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:14|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-14:n| Int) )
    (=>
      ( and true )
      (|make_array$unknown:14| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) )
    (=>
      ( and true )
      (|make_array$unknown:14| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-20:x| Int) (|$alpha-21:j| Int) (|$alpha-18:i| Int) (|$knormal:42| Int) (|$knormal:41| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) (|$innerFunc:1-a$unknown:3| |$knormal:42| |$alpha-21:j| |$alpha-18:i|) (|$innerFunc:1-a$unknown:4| |$alpha-20:x| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:j| |$alpha-20:x| |$alpha-18:i|) (not |$knormal:41|) (= |$V-reftype:66| |$knormal:42|) (= |$knormal:41| (= |$alpha-18:i| |$alpha-21:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:66| |$alpha-21:j| |$alpha-20:x| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-21:j| Int) (|$alpha-20:x| Int) (|$alpha-18:i| Int) (|$knormal:41| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) (|$innerFunc:1-a$unknown:4| |$alpha-20:x| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:j| |$alpha-20:x| |$alpha-18:i|) |$knormal:41| (= |$V-reftype:65| |$alpha-20:x|) (= |$knormal:41| (= |$alpha-18:i| |$alpha-21:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:65| |$alpha-21:j| |$alpha-20:x| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:j| Int) (|$alpha-20:x| Int) (|$alpha-18:i| Int) (|$knormal:41| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) (|$innerFunc:1-a$unknown:4| |$alpha-20:x| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:j| |$alpha-20:x| |$alpha-18:i|) (not |$knormal:41|) (= |$knormal:41| (= |$alpha-18:i| |$alpha-21:j|)) )
      (|$innerFunc:1-a$unknown:2| |$alpha-21:j| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$V-reftype:3| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:19| |$V-reftype:3| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:a| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$V-reftype:43| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$alpha-6:a| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$V-reftype:43| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:3| |$V-reftype:43| |$alpha-6:a| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$V-reftype:11| Int) (|$V-reftype:10| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:23| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$knormal:31| Bool) (|$V-reftype:18| Int) (|$alpha-14:n| Int) (|$knormal:29| Bool) (|$knormal:30| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-14:n|) |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|make_array$unknown:15| |$V-reftype:18| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-9:m| Int) (|$V-reftype:18| Int) (|$alpha-12:i| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|update$unknown:22| |$V-reftype:18| |$knormal:11| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:10| Bool) (|$knormal:11| Int) (|$alpha-9:m| Int) (|$knormal:19| Int) (|$alpha-12:i| Int) (|$V-reftype:49| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$knormal:19| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (|update$unknown:23| |$V-reftype:49| |$knormal:19| |$knormal:11| |$alpha-9:m| |$alpha-12:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:11| |$V-reftype:49| |$knormal:19| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Bool) (|$knormal:29| Bool) (|$alpha-15:m| Int) (|$V-reftype:36| Int) (|$knormal:39| Int) (|$alpha-14:n| Int) (|$knormal:31| Bool) (|$alpha-13:i| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$knormal:39| |$alpha-14:n|) (|make_array$unknown:16| |$V-reftype:36| |$knormal:39| |$alpha-15:m|) |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|bcopy_aux$unknown:11| |$V-reftype:36| |$knormal:39| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-11:des| Int) (|$V-reftype:20| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (|update$unknown:19| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|update$unknown:20| |$V-reftype:20| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Bool) (|$knormal:26| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:28| Int) (|$knormal:11| Int) (|$V-reftype:58| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$knormal:28| |$knormal:26| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$V-reftype:58| |$knormal:28|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:13| |$V-reftype:58| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$V-reftype:14| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:8| |$V-reftype:14| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:8| |$V-reftype:14| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:10| Bool) (|$V-reftype:16| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:11| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:8| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$V-reftype:16| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:9| |$V-reftype:16| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (|update$unknown:19| |$V-reftype:41| |$alpha-9:m| |$alpha-12:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:10| |$V-reftype:41| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:12| |$knormal:26| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:10| Bool) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:10| Bool) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|update$unknown:17| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|update$unknown:18| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Int) (|$knormal:10| Bool) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (|bcopy_aux$unknown:9| |$knormal:11| |$alpha-12:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|update$unknown:21| |$knormal:11| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:10| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) |$knormal:10| (= |$V-reftype:56| 1) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:13| |$V-reftype:56| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:10| Bool) (|$knormal:26| Int) )
    (=>
      ( and (|bcopy_aux$unknown:12| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:7| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:26| (+ |$alpha-12:i| 1)) )
      (|bcopy_aux$unknown:8| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$knormal:31| Bool) (|$V-reftype:14| Int) (|$alpha-14:n| Int) (|$knormal:29| Bool) (|$knormal:30| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:8| |$V-reftype:14| |$alpha-14:n|) |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|make_array$unknown:15| |$V-reftype:14| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:30| Bool) (|$knormal:29| Bool) (|$V-reftype:36| Int) (|$knormal:40| Int) (|$alpha-14:n| Int) (|$knormal:31| Bool) (|$alpha-13:i| Int) )
    (=>
      ( and (|bcopy_aux$unknown:8| |$knormal:40| |$alpha-14:n|) (|make_array$unknown:16| |$V-reftype:36| |$knormal:40| |$alpha-14:n|) |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|bcopy_aux$unknown:9| |$V-reftype:36| |$knormal:40| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:54| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (|make_array$unknown:14| |$alpha-1:n|) (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:54| 0) (= |$alpha-3:$$tmp::1| 1) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|make_array$unknown:16| |$V-reftype:54| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|make_array$unknown:14| |$alpha-1:n|) (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:9| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$V-reftype:47| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$V-reftype:47| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:17| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-13:i| Int) (|$knormal:31| Bool) (|$knormal:29| Bool) (|$knormal:30| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|bcopy_aux$unknown:12| |$alpha-13:i| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:30| Bool) (|$knormal:29| Bool) (|$knormal:31| Bool) (|$alpha-13:i| Int) (|$alpha-14:n| Int) )
    (=>
      ( and |$knormal:31| (= |$knormal:29| (= |$alpha-13:i| 0)) (= |$knormal:30| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$knormal:31| (and |$knormal:29| |$knormal:30|)) )
      (|bcopy_aux$unknown:7| |$alpha-14:n|)
    )
  )
)
(check-sat)

