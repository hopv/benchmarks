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

(declare-fun |make_array$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:53| Int) (|$knormal:46| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:113| |$cond-alpha-rename:111| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:119| |$cond-alpha-rename:117| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:12| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:15| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:44| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:47| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:50| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:53| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:13| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:16| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$knormal:46| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:111| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:117| |$alpha-19:n|) (|update$unknown:21| |$alpha-18:i| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:111|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:117|) (not (>= |$cond-alpha-rename:111| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$cond-alpha-rename:117| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (= |$alpha-18:i| |$alpha-23:j|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (= |$alpha-18:i| |$alpha-23:j|)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:46| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:56| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:125| |$cond-alpha-rename:123| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:56| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:123| |$alpha-19:n|) (|update$unknown:21| |$alpha-18:i| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:123|) (= |$alpha-18:i| |$alpha-23:j|) (not (>= |$cond-alpha-rename:123| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) )
      (|$innerFunc:1-a$unknown:8| |$alpha-21:x| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:62| Int) (|$knormal:13| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:131| |$cond-alpha-rename:129| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:3| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:59| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:62| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:4| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$knormal:13| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:129| |$alpha-5:n|) (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$cond-alpha-rename:129|) (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (not (>= |$cond-alpha-rename:129| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (= |$alpha-4:i| |$V-reftype:5|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-14:n|) (<= |$alpha-14:n| |$alpha-15:m|) (= |$alpha-13:i| 0) )
      (|make_array$unknown:17| |$V-reftype:18| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-10:src| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$knormal:44| Int) )
    (=>
      ( and (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-14:n|) (|make_array$unknown:17| |$knormal:44| |$alpha-14:n|) (< |$knormal:44| |$alpha-14:n|) (<= 0 |$knormal:44|) (<= |$alpha-14:n| |$alpha-15:m|) (= |$alpha-13:i| 0) )
      (|bcopy_aux$unknown:11| 0 |$knormal:44| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:167| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:23| Int) (|$knormal:15| Int) (|$knormal:23| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:53| |$knormal:23| |$cond-alpha-rename:176| |$knormal:15| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:169| |$cond-alpha-rename:167| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:174| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:23| |$cond-alpha-rename:21| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:176| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:167| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:21| |$alpha-9:m|) (|update$unknown:21| |$alpha-12:i| |$alpha-9:m| |$alpha-12:i|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:167|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:21|) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:167| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:21| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:13| |$V-reftype:53| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:15| |$knormal:32| (+ |$alpha-12:i| 1) |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:15| |$knormal:32| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:14| (+ |$alpha-12:i| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:27| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$cond-alpha-rename:27| |$cond-alpha-rename:25| |$alpha-14:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:25| |$alpha-14:n|) (|update$unknown:21| |$V-reftype:22| |$alpha-14:n| |$cond-alpha-rename:25|) (<= |$alpha-14:n| |$alpha-15:m|) (= |$alpha-13:i| 0) (not (>= |$cond-alpha-rename:25| |$alpha-14:n|)) )
      (|make_array$unknown:17| |$V-reftype:22| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:31| Int) (|$knormal:43| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$cond-alpha-rename:31| |$cond-alpha-rename:29| |$alpha-14:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:29| |$alpha-14:n|) (|make_array$unknown:17| |$knormal:43| |$alpha-15:m|) (|update$unknown:21| |$knormal:43| |$alpha-14:n| |$cond-alpha-rename:29|) (< |$knormal:43| |$alpha-15:m|) (<= 0 |$knormal:43|) (<= |$alpha-14:n| |$alpha-15:m|) (= |$alpha-13:i| 0) (not (>= |$cond-alpha-rename:29| |$alpha-14:n|)) )
      (|bcopy_aux$unknown:13| 0 |$knormal:43| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (>= |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| 1 |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (not (>= |$alpha-12:i| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:10| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:i| Int) (|$alpha-14:n| Int) (|$alpha-15:m| Int) )
    (=>
      ( and (<= |$alpha-14:n| |$alpha-15:m|) (= |$alpha-13:i| 0) )
      (|bcopy_aux$unknown:14| |$alpha-13:i| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

