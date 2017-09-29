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

(declare-fun |bcopy_aux$unknown:10|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:257| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$knormal:13| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:130| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:133| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:259| |$cond-alpha-rename:257| |$alpha-5:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:3| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:4| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:13| |$knormal:13| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$alpha-4:i| |$alpha-5:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:257| |$alpha-5:n|) (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$cond-alpha-rename:257|) (|update$unknown:21| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (not (>= |$cond-alpha-rename:257| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (= |$alpha-4:i| |$V-reftype:5|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:21| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
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
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:517| Int) (|$knormal:44| Int) )
    (=>
      ( and (< |$knormal:44| |$alpha-13:n|) (<= 0 |$knormal:44|) (<= |$alpha-13:n| |$alpha-14:m|) (<= |$alpha-13:n| |$cond-alpha-rename:517|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-13:n|) )
      (|bcopy_aux$unknown:11| 0 |$knormal:44| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:526| Int) (|$knormal:44| Int) )
    (=>
      ( and (< |$knormal:44| |$alpha-13:n|) (<= 0 |$knormal:44|) (<= |$alpha-13:n| |$alpha-14:m|) (not (>= |$cond-alpha-rename:524| |$cond-alpha-rename:522|)) (<= |$cond-alpha-rename:522| |$alpha-13:n|) (|update$unknown:21| |$knormal:44| |$cond-alpha-rename:522| |$cond-alpha-rename:524|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:524| |$cond-alpha-rename:522|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:526| |$cond-alpha-rename:524| |$cond-alpha-rename:522|) (|bcopy_aux$unknown:10| |$knormal:44| |$alpha-13:n|) )
      (|bcopy_aux$unknown:11| 0 |$knormal:44| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:367| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:383| Int) (|$cond-alpha-rename:387| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:58| Int) (|$knormal:15| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$cond-alpha-rename:329| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:333| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:364| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:367| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:370| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:373| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:383| |$cond-alpha-rename:381| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:389| |$cond-alpha-rename:387| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:393| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:394| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:58| |$cond-alpha-rename:56| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:339| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:395| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:397| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:399| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:333| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:381| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:387| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:56| |$alpha-9:m|) (|update$unknown:21| |$alpha-12:i| |$alpha-9:m| |$alpha-12:i|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$alpha-12:i|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:333|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:381|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:387|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:56|) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:381| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:387| |$alpha-9:m|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (= |$alpha-12:i| |$knormal:23|)) (not (= |$alpha-12:i| |$knormal:23|)) (not (>= |$alpha-12:i| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:333| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:56| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:13| |$cond-alpha-rename:399| |$knormal:23| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:401| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:407| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:58| Int) (|$knormal:15| Int) (|$knormal:23| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$cond-alpha-rename:329| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:333| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:401| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:407| |$cond-alpha-rename:405| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:58| |$cond-alpha-rename:56| |$alpha-9:m|) (|bcopy_aux$unknown:11| |$knormal:15| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:339| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$knormal:23| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:333| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:405| |$alpha-9:m|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:56| |$alpha-9:m|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$knormal:23|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:333|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:405|) (|update$unknown:21| |$knormal:23| |$alpha-9:m| |$cond-alpha-rename:56|) (not (>= |$knormal:23| |$alpha-9:m|)) (not (>= |$knormal:23| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:405| |$alpha-9:m|)) (not (>= |$knormal:23| |$alpha-9:m|)) (not (>= |$knormal:23| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:333| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:56| |$alpha-9:m|)) )
      (|bcopy_aux$unknown:13| |$knormal:15| |$knormal:23| |$alpha-9:m|)
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
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:66| Int) (|$knormal:43| Int) )
    (=>
      ( and (< |$knormal:43| |$alpha-14:m|) (<= 0 |$knormal:43|) (<= |$alpha-13:n| |$alpha-14:m|) (not (>= |$cond-alpha-rename:64| |$alpha-13:n|)) (<= |$alpha-14:m| |$cond-alpha-rename:531|) (|update$unknown:21| |$knormal:43| |$alpha-13:n| |$cond-alpha-rename:64|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:64| |$alpha-13:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:66| |$cond-alpha-rename:64| |$alpha-13:n|) (|bcopy_aux$unknown:10| |$knormal:43| |$alpha-14:m|) )
      (|bcopy_aux$unknown:13| 0 |$knormal:43| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:m| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:540| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:66| Int) (|$knormal:43| Int) )
    (=>
      ( and (< |$knormal:43| |$alpha-14:m|) (<= 0 |$knormal:43|) (<= |$alpha-13:n| |$alpha-14:m|) (not (>= |$cond-alpha-rename:64| |$alpha-13:n|)) (not (>= |$cond-alpha-rename:538| |$cond-alpha-rename:536|)) (<= |$cond-alpha-rename:536| |$alpha-14:m|) (|update$unknown:21| |$knormal:43| |$cond-alpha-rename:536| |$cond-alpha-rename:538|) (|update$unknown:21| |$knormal:43| |$alpha-13:n| |$cond-alpha-rename:64|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:64| |$alpha-13:n|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:538| |$cond-alpha-rename:536|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:66| |$cond-alpha-rename:64| |$alpha-13:n|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:540| |$cond-alpha-rename:538| |$cond-alpha-rename:536|) )
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
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:545| Int) )
    ( and (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (<= |$alpha-1:n| |$cond-alpha-rename:545|) (|bcopy_aux$unknown:10| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:550| Int) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:554| Int) )
    ( and (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (not (>= |$cond-alpha-rename:552| |$cond-alpha-rename:550|)) (<= |$cond-alpha-rename:550| |$alpha-1:n|) (|update$unknown:21| |$alpha-2:i| |$cond-alpha-rename:550| |$cond-alpha-rename:552|) (|bcopy_aux$unknown:14| |$cond-alpha-rename:552| |$cond-alpha-rename:550|) (|bcopy_aux$unknown:11| |$cond-alpha-rename:554| |$cond-alpha-rename:552| |$cond-alpha-rename:550|) )
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

(exit)

