(set-info :origin "Verification conditions for the caml program
  
  let update a i x j = if j=i then x else a j
  
  let rec dotprod v1 v2 n i sum =
    if i > n
    then sum
    else
      begin
        assert (0<=i && i<=n);
        dotprod v1 v2 n (i+1) (sum + v1 i * v2 i)
      end
  
  let main i n =
    let v1 i = 0 in
    let v2 i = 0 in
    dotprod v1 v2 n 0 0; ()
")

(set-logic HORN)

(declare-fun |dotprod$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:10|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:25| Int) )
    (=>
      ( and true )
      (|dotprod$unknown:10| 0 |$knormal:25|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) )
    (=>
      ( and true )
      (|dotprod$unknown:12| 0 |$knormal:28|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-5:v1| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (not (> |$alpha-8:i| |$alpha-7:n|)) (<= 0 |$alpha-8:i|) (<= |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|) )
      (|dotprod$unknown:10| |$V-reftype:17| |$alpha-5:v1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-6:v2| Int) (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (not (> |$alpha-8:i| |$alpha-7:n|)) (<= 0 |$alpha-8:i|) (<= |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:12| |$V-reftype:21| |$alpha-6:v2|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:19| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (not (> |$alpha-8:i| |$alpha-7:n|)) (<= 0 |$alpha-8:i|) (<= |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:16| |$knormal:19| (+ |$alpha-9:sum| (* |$knormal:4| |$knormal:6|)) (+ |$alpha-8:i| 1) |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:16| |$knormal:19| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (not (> |$alpha-8:i| |$alpha-7:n|)) (<= 0 |$alpha-8:i|) (<= |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:12| |$knormal:6| |$alpha-8:i|) (|dotprod$unknown:10| |$knormal:4| |$alpha-8:i|) )
      (|dotprod$unknown:15| (+ |$alpha-9:sum| (* |$knormal:4| |$knormal:6|)) (+ |$alpha-8:i| 1) |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) )
    (=>
      ( and (> |$alpha-8:i| |$alpha-7:n|) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) )
      (|dotprod$unknown:16| |$alpha-9:sum| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-7:n| Int) (|$alpha-8:i| Int) (|$alpha-9:sum| Int) )
    ( and (not (> |$alpha-8:i| |$alpha-7:n|)) (not (and (<= 0 |$alpha-8:i|) (<= |$alpha-8:i| |$alpha-7:n|))) (|dotprod$unknown:15| |$alpha-9:sum| |$alpha-8:i| |$alpha-7:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) )
    (=>
      ( and true )
      (|dotprod$unknown:15| 0 0 |$alpha-12:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

