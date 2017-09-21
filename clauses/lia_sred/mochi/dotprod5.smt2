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
  (forall ( (|$alpha-18:i| Int) (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:98| Int) (|$knormal:46| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:101| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:183| |$cond-alpha-rename:181| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:189| |$cond-alpha-rename:187| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:19| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:20| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:92| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:95| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:98| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:21| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:23| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$knormal:46| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-18:i| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:181| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:187| |$alpha-19:n|) (|update$unknown:21| |$alpha-18:i| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$alpha-18:i|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:181|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:187|) (not (>= |$cond-alpha-rename:181| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (>= |$cond-alpha-rename:187| |$alpha-19:n|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) (not (= |$alpha-18:i| |$alpha-23:j|)) (not (>= |$alpha-18:i| |$alpha-19:n|)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:46| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-18:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:n| Int) (|$alpha-21:x| Int) (|$alpha-22:$$tmp::2| Int) (|$alpha-23:j| Int) (|$cond-alpha-rename:104| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:195| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-21:x| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:104| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:195| |$cond-alpha-rename:193| |$alpha-19:n|) (|bcopy_aux$unknown:13| |$alpha-22:$$tmp::2| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$alpha-23:j| |$alpha-19:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:193| |$alpha-19:n|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$alpha-23:j|) (|update$unknown:21| |$alpha-23:j| |$alpha-19:n| |$cond-alpha-rename:193|) (not (>= |$cond-alpha-rename:193| |$alpha-19:n|)) (not (>= |$alpha-23:j| |$alpha-19:n|)) (not (>= |$alpha-23:j| |$alpha-19:n|)) )
      (|$innerFunc:1-a$unknown:8| |$alpha-21:x| |$alpha-23:j| |$alpha-22:$$tmp::2| |$alpha-21:x| |$alpha-19:n| |$alpha-23:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$knormal:13| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:107| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:110| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:201| |$cond-alpha-rename:199| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:3| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:4| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$knormal:13| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:199| |$alpha-5:n|) (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$cond-alpha-rename:199|) (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (not (>= |$cond-alpha-rename:199| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (= |$alpha-4:i| |$V-reftype:5|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-13:n| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-13:n|) )
      (|make_array$unknown:17| |$V-reftype:18| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$V-reftype:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-10:src| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:10| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:11| |$V-reftype:20| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$knormal:44| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (<= 0 |$knormal:44|) (< |$knormal:44| |$alpha-13:n|) (|make_array$unknown:17| |$knormal:44| |$alpha-13:n|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-13:n|) )
      (|bcopy_aux$unknown:11| 0 |$knormal:44| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:257| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:50| Int) (|$knormal:15| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (>= |$cond-alpha-rename:48| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:251| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:48|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:251|) (|update$unknown:21| |$alpha-12:i| |$alpha-9:m| |$alpha-12:i|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:48| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:251| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:257| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:50| |$cond-alpha-rename:48| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:253| |$cond-alpha-rename:251| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:247| |$alpha-12:i| |$alpha-9:m|) (|$innerFunc:1-a$unknown:8| |$V-reftype:53| |$knormal:23| |$cond-alpha-rename:257| |$knormal:15| |$alpha-9:m| |$alpha-12:i|) )
      (|bcopy_aux$unknown:13| |$V-reftype:53| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) (|$knormal:32| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:15| |$knormal:32| (+ |$alpha-12:i| 1) |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| |$knormal:32| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$knormal:15| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:14| (+ |$alpha-12:i| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:54| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$cond-alpha-rename:54| |$cond-alpha-rename:52| |$alpha-13:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:52| |$alpha-13:n|) (|update$unknown:21| |$V-reftype:22| |$alpha-13:n| |$cond-alpha-rename:52|) (not (>= |$cond-alpha-rename:52| |$alpha-13:n|)) (<= |$alpha-13:n| |$alpha-14:m|) )
      (|make_array$unknown:17| |$V-reftype:22| |$alpha-14:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:58| Int) (|$knormal:43| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) (not (>= |$cond-alpha-rename:56| |$alpha-13:n|)) (<= 0 |$knormal:43|) (< |$knormal:43| |$alpha-14:m|) (|update$unknown:21| |$knormal:43| |$alpha-13:n| |$cond-alpha-rename:56|) (|make_array$unknown:17| |$knormal:43| |$alpha-14:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:56| |$alpha-13:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:58| |$cond-alpha-rename:56| |$alpha-13:n|) )
      (|bcopy_aux$unknown:13| 0 |$knormal:43| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (>= |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:15| 1 |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (not (>= |$alpha-12:i| |$alpha-9:m|)) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) )
      (|bcopy_aux$unknown:10| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (|make_array$unknown:17| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (not (>= |$alpha-4:i| |$alpha-5:n|)) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) )
    (=>
      ( and (<= |$alpha-13:n| |$alpha-14:m|) )
      (|bcopy_aux$unknown:14| 0 |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

