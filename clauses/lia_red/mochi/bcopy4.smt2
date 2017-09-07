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

(declare-fun |bcopy_aux$unknown:12|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:3| Int) (|$alpha-14:n| Int) (|$alpha-15:src| Int) (|$V-reftype:5| Int) )
    (=>
      ( and (= |$V-reftype:5| 0) (|bcopy_aux$unknown:12| |$alpha-15:src| |$cond-alpha-rename:3|) (|bcopy_aux$unknown:12| |$alpha-15:src| |$alpha-14:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true )
      (|bcopy_aux$unknown:16| |$knormal:32| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$V-reftype:20| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:3| Bool) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-8:src| Int) (|$V-reftype:22| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$alpha-8:src| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:11| Int) (|$alpha-10:i| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$knormal:9| Int) (|$knormal:21| Bool) (|$V-reftype:57| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$V-reftype:57| |$knormal:11|) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:17| |$knormal:11| |$knormal:9| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:57| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:16| |$knormal:9| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) |$knormal:21| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:12| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$V-reftype:51| 1) |$knormal:3| (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:51| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) )
    ( and (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (not |$knormal:3|) (not |$knormal:21|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
    )
  )
)
(check-sat)

(get-model)

