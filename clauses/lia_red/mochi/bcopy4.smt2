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
      ( and (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (<= |$alpha-10:i| |$alpha-7:m|) (<= 0 |$alpha-10:i|) (not (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
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
(check-sat)

(get-model)

