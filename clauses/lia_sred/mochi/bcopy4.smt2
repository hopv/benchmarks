(set-info :origin "Verification conditions for the caml program
  
  let array1 i = 0
  let array2 i = 0
  let update a i x j = if j=i then x else a j
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        assert (0<=i && i<=m);
        let des = update des i (src i) in
          bcopy_aux m src des (i+1)
      end
  
  
  let main n =
    let bcopy src des = bcopy_aux n src des 0 in
    bcopy array1 array2
")

(set-logic HORN)

(declare-fun |bcopy_aux$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-15:src| Int) )
    (=>
      ( and true )
      (|bcopy_aux$unknown:13| 0 |$alpha-15:src| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$alpha-16:des| Int) )
    (=>
      ( and true )
      (|bcopy_aux$unknown:15| 0 |$alpha-16:des| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) )
    (=>
      ( and true )
      (|bcopy_aux$unknown:16| 0 |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$alpha-8:src| Int) (|$knormal:12| Int) )
    (=>
      ( and (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (<= |$alpha-10:i| |$alpha-7:m|) (<= 0 |$alpha-10:i|) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:18| Int) )
    (=>
      ( and (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|update$unknown:23| |$V-reftype:44| |$knormal:18| |$knormal:12| |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|) (<= 0 |$alpha-10:i|) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:15| |$V-reftype:44| |$knormal:18| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:17| |$knormal:11| (+ |$alpha-10:i| 1) |$alpha-7:m|) (<= |$alpha-10:i| |$alpha-7:m|) (<= 0 |$alpha-10:i|) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:17| |$knormal:11| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) )
    (=>
      ( and (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (<= |$alpha-10:i| |$alpha-7:m|) (<= 0 |$alpha-10:i|) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:16| (+ |$alpha-10:i| 1) |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) )
    (=>
      ( and (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (>= |$alpha-10:i| |$alpha-7:m|) )
      (|bcopy_aux$unknown:17| 1 |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) )
    ( and (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (not (and (<= 0 |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|))) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bcopy_aux$unknown:13| |$cond-alpha-rename:3| |$cond-alpha-rename:1| |$cond-alpha-rename:2|) (|bcopy_aux$unknown:15| |$knormal:2| |$alpha-6:j| |$cond-alpha-rename:2|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:1| |$cond-alpha-rename:2|) (<= |$cond-alpha-rename:1| |$cond-alpha-rename:2|) (<= 0 |$cond-alpha-rename:1|) (not (>= |$cond-alpha-rename:1| |$cond-alpha-rename:2|)) (not (= |$alpha-6:j| |$alpha-4:i|)) )
      (|update$unknown:23| |$knormal:2| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) )
    (=>
      ( and (= |$alpha-6:j| |$alpha-4:i|) )
      (|update$unknown:23| |$alpha-5:x| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(check-sat)

(get-model)

