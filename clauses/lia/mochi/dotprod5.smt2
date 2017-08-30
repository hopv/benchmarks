(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update i n a x = a i; let a j = if i=j then x else a j in a
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else bcopy_aux m src (update i m des (src i)) (i+1)
  
  let main n m i =
    let array1 = make_array n in
    let array2 = make_array m in
    if i=0 && n<=m then bcopy_aux n array1 array2 i else ()
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:9|
  ( Int ) Bool
)

(declare-fun |bcopy_aux$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:25|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:24|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:16|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      true
      (|make_array$unknown:16| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:m| Int) )
    (=>
      true
      (|make_array$unknown:16| |$alpha-14:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$knormal:46| Int) (|$alpha-21:x| Int) (|$knormal:45| Bool) )
    (=>
      ( and (= |$knormal:45| (= |$alpha-18:i| |$alpha-23:j|)) (= |$V-reftype:70| |$knormal:46|) (not |$knormal:45|) (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:6| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:4| |$knormal:46| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:2| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:70| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:69| Int) (|$alpha-23:j| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$knormal:45| Bool) )
    (=>
      ( and (= |$knormal:45| (= |$alpha-18:i| |$alpha-23:j|)) (= |$V-reftype:69| |$alpha-21:x|) |$knormal:45| (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:6| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:2| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:69| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:45| Bool) (|$alpha-21:x| Int) (|$alpha-19:n| Int) (|$alpha-18:i| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) )
    (=>
      ( and (= |$knormal:45| (= |$alpha-18:i| |$alpha-23:j|)) (not |$knormal:45|) (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:6| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:5| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:2| |$alpha-19:n| |$alpha-18:i|) (|$innerFunc:1-a$unknown:1| |$alpha-18:i|) )
      (|$innerFunc:1-a$unknown:3| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$V-reftype:47| Int) (|$alpha-4:i| Int) (|$alpha-6:a| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$V-reftype:47| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:47| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:13| Int) (|$V-reftype:15| Int) (|$V-reftype:14| Int) (|$alpha-7:x| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:24| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:25| |$V-reftype:15| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:i| Int) (|$knormal:35| Bool) (|$V-reftype:18| Int) (|$alpha-13:n| Int) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-13:n|) )
      (|make_array$unknown:17| |$V-reftype:18| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$V-reftype:18| Int) (|$knormal:15| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$alpha-10:src| Int) (|$V-reftype:20| Int) (|$alpha-12:i| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:m| Int) (|$knormal:34| Bool) (|$knormal:33| Bool) (|$V-reftype:40| Int) (|$knormal:44| Int) (|$alpha-13:n| Int) (|$knormal:35| Bool) (|$alpha-15:i| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| (|make_array$unknown:18| |$V-reftype:40| |$knormal:44| |$alpha-13:n|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-13:n|) )
      (|bcopy_aux$unknown:11| |$V-reftype:40| |$knormal:44| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$V-reftype:22| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:24| |$V-reftype:22| |$knormal:15| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$knormal:23| Int) (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:25| |$V-reftype:53| |$knormal:23| |$knormal:15| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:13| |$V-reftype:53| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$alpha-11:des| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:21| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$V-reftype:24| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:22| |$V-reftype:24| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Bool) (|$knormal:32| Int) (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$knormal:30| Int) (|$V-reftype:62| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:62| |$knormal:32|) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:15| |$knormal:32| |$knormal:30| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:62| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:21| |$V-reftype:45| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:12| |$V-reftype:45| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:14| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:9| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:19| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$knormal:15| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:20| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$alpha-12:i| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:23| |$knormal:15| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:i| Int) (|$knormal:35| Bool) (|$V-reftype:22| Int) (|$alpha-13:n| Int) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| (|bcopy_aux$unknown:12| |$V-reftype:22| |$alpha-13:n|) )
      (|make_array$unknown:17| |$V-reftype:22| |$alpha-14:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Bool) (|$knormal:33| Bool) (|$alpha-14:m| Int) (|$V-reftype:40| Int) (|$knormal:43| Int) (|$alpha-13:n| Int) (|$knormal:35| Bool) (|$alpha-15:i| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| (|make_array$unknown:18| |$V-reftype:40| |$knormal:43| |$alpha-14:m|) (|bcopy_aux$unknown:12| |$knormal:43| |$alpha-13:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:40| |$knormal:43| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) )
    (=>
      ( and (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:60| 1) |$knormal:14| (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:60| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= |$knormal:14| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:14|) (|bcopy_aux$unknown:9| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:58| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:58| 0) |$knormal:3| (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:16| |$alpha-1:n|) )
      (|make_array$unknown:18| |$V-reftype:58| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:16| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:2| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:6| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:24| |$V-reftype:51| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:51| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-4:i|) )
      (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-15:i| Int) (|$knormal:35| Bool) (|$knormal:33| Bool) (|$knormal:34| Bool) (|$alpha-14:m| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| )
      (|bcopy_aux$unknown:14| |$alpha-15:i| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:m| Int) (|$knormal:34| Bool) (|$knormal:33| Bool) (|$knormal:35| Bool) (|$alpha-15:i| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (= |$knormal:35| (and |$knormal:33| |$knormal:34|)) (= |$knormal:34| (<= |$alpha-13:n| |$alpha-14:m|)) (= |$knormal:33| (= |$alpha-15:i| 0)) |$knormal:35| )
      (|bcopy_aux$unknown:9| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

