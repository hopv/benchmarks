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

(declare-fun |update$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:16|
  ( Int Int ) Bool
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
      ( and (not (>= |$alpha-10:i| |$alpha-7:m|)) (<= 0 |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (not (>= |$alpha-10:i| |$alpha-7:m|)) (<= 0 |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:17| |$knormal:11| (+ |$alpha-10:i| 1) |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) )
      (|bcopy_aux$unknown:17| |$knormal:11| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) )
    (=>
      ( and (not (>= |$alpha-10:i| |$alpha-7:m|)) (<= 0 |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) )
      (|bcopy_aux$unknown:16| (+ |$alpha-10:i| 1) |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) )
    (=>
      ( and (>= |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) )
      (|bcopy_aux$unknown:17| 1 |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) )
    ( and (not (>= |$alpha-10:i| |$alpha-7:m|)) (not (and (<= 0 |$alpha-10:i|) (<= |$alpha-10:i| |$alpha-7:m|))) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) )
    (=>
      ( and (<= 0 |$cond-alpha-rename:44|) (<= |$cond-alpha-rename:44| |$cond-alpha-rename:45|) (not (>= |$cond-alpha-rename:44| |$cond-alpha-rename:45|)) (not (= |$alpha-6:j| |$alpha-4:i|)) (|bcopy_aux$unknown:16| |$cond-alpha-rename:44| |$cond-alpha-rename:45|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:46| |$cond-alpha-rename:44| |$cond-alpha-rename:45|) )
      (|update$unknown:23| 0 |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$knormal:2| Int) )
    (=>
      ( and (<= 0 |$cond-alpha-rename:44|) (<= |$cond-alpha-rename:44| |$cond-alpha-rename:45|) (not (>= |$cond-alpha-rename:44| |$cond-alpha-rename:45|)) (not (= |$alpha-6:j| |$alpha-4:i|)) (not (>= |$cond-alpha-rename:67| |$cond-alpha-rename:45|)) (<= 0 |$cond-alpha-rename:67|) (<= |$cond-alpha-rename:67| |$cond-alpha-rename:45|) (|update$unknown:23| |$knormal:2| |$alpha-6:j| |$cond-alpha-rename:68| |$cond-alpha-rename:67|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:67| |$cond-alpha-rename:45|) (|bcopy_aux$unknown:16| |$cond-alpha-rename:44| |$cond-alpha-rename:45|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:68| |$cond-alpha-rename:67| |$cond-alpha-rename:45|) (|bcopy_aux$unknown:13| |$cond-alpha-rename:46| |$cond-alpha-rename:44| |$cond-alpha-rename:45|) )
      (|update$unknown:23| |$knormal:2| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:x| Int) )
    (=>
      ( and true )
      (|update$unknown:23| |$alpha-5:x| |$alpha-4:i| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(check-sat)

(get-model)

