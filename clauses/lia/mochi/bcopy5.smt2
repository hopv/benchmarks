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

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:70| Int) (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$knormal:45| Int) (|$knormal:46| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:45|)) (= |$alpha-18:i| |$alpha-23:j|)) (= |$V-reftype:70| |$knormal:46|) (not (not (= 0 |$knormal:45|))) (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) true true (|$innerFunc:1-a$unknown:4| |$knormal:46| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|) true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:70| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:69| Int) (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$knormal:45| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:45|)) (= |$alpha-18:i| |$alpha-23:j|)) (= |$V-reftype:69| |$alpha-21:x|) (not (= 0 |$knormal:45|)) (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) true true true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:69| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$knormal:45| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:45|)) (= |$alpha-18:i| |$alpha-23:j|)) (not (not (= 0 |$knormal:45|))) (|$innerFunc:1-a$unknown:7| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|) true true true true )
      (|$innerFunc:1-a$unknown:3| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-6:a| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$V-reftype:47| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:3| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:47| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:15| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:24| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:25| |$V-reftype:15| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-14:n|) )
      (|make_array$unknown:17| |$V-reftype:18| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-10:src| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:44| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) (|make_array$unknown:18| |$V-reftype:40| |$knormal:44| |$alpha-14:n|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-14:n|) )
      (|bcopy_aux$unknown:11| |$V-reftype:40| |$knormal:44| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$V-reftype:22| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:24| |$V-reftype:22| |$knormal:15| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:23| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:25| |$V-reftype:53| |$knormal:23| |$knormal:15| |$alpha-9:m| |$alpha-12:i|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:12| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:13| |$V-reftype:53| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-11:des| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:21| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$V-reftype:24| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:22| |$V-reftype:24| |$alpha-11:des| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:62| |$knormal:32|) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:15| |$knormal:32| |$knormal:30| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:62| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:21| |$V-reftype:45| |$alpha-9:m| |$alpha-12:i|) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:12| |$V-reftype:45| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:14| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|update$unknown:23| |$knormal:15| |$alpha-9:m| |$alpha-12:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) (|bcopy_aux$unknown:12| |$V-reftype:22| |$alpha-14:n|) )
      (|make_array$unknown:17| |$V-reftype:22| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) (|make_array$unknown:18| |$V-reftype:40| |$knormal:43| |$alpha-15:m|) (|bcopy_aux$unknown:12| |$knormal:43| |$alpha-14:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:40| |$knormal:43| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:60| 1) (not (= 0 |$knormal:14|)) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$V-reftype:60| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:30| (+ |$alpha-12:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-12:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:58| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$alpha-3:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:58| 0) (not (= 0 |$knormal:3|)) (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) true )
      (|make_array$unknown:18| |$V-reftype:58| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (not (not (= 0 |$knormal:3|))) (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:24| |$V-reftype:51| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:22| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:51| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:23| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) true true )
      (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) )
      (|bcopy_aux$unknown:14| |$alpha-13:i| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:33|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (<= |$alpha-14:n| |$alpha-15:m|)) (= (not (= 0 |$knormal:33|)) (= |$alpha-13:i| 0)) (not (= 0 |$knormal:35|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

