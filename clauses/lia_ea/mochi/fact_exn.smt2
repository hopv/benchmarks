(set-info :origin "Verification conditions for the caml program
  (*
  Sukyoung Ryu, Exception Analysis for Languages with Exceptions, Ph.D. thesis
  
  let rec fact n =
    if n <= 0
    then raise ZERO
    else
      try
        n * fact (n-1)
      with ZERO -> 1
  *)
  
  let rec fact n exn =
    if n <= 0
    then exn 0
    else
      let exn n = if n = 0 then 1 else exn n in
        n * fact (n-1) exn
  
  let exn n = assert false;1
  
  let main n =
    if n > 0
    then (fact n exn; ())
    else ()
")

(set-logic HORN)

(declare-fun |fact$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |fact$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |fact$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |fact$unknown:6|
  ( Int ) Bool
)

(declare-fun |exn$unknown:4|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-exn$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |exn$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-exn$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-7:n| Int) (|$alpha-8:n| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-8:n| 0)) (= |$V-reftype:31| |$knormal:16|) (not (not (= 0 |$knormal:15|))) (|exn$unknown:5| |$knormal:16| |$alpha-8:n|) (|$innerFunc:1-exn$unknown:2| |$alpha-8:n| |$alpha-7:n|) true )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:31| |$alpha-8:n| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-7:n| Int) (|$alpha-8:n| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-8:n| 0)) (= |$V-reftype:30| 1) (not (= 0 |$knormal:15|)) (|$innerFunc:1-exn$unknown:2| |$alpha-8:n| |$alpha-7:n|) true )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:30| |$alpha-8:n| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:n| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-8:n| 0)) (not (not (= 0 |$knormal:15|))) (|$innerFunc:1-exn$unknown:2| |$alpha-8:n| |$alpha-7:n|) true )
      (|exn$unknown:4| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|fact$unknown:7| |$knormal:2| |$knormal:3|) (|fact$unknown:6| |$alpha-1:n|) (|$innerFunc:1-exn$unknown:3| |$V-reftype:5| |$knormal:2| |$alpha-1:n|) )
      (|fact$unknown:8| |$V-reftype:5| |$knormal:2| |$knormal:3|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) )
    ( and (|exn$unknown:4| |$alpha-3:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-5:n| Int) (|$knormal:11| Int) (|exn| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-5:n| 0)) (not (= 0 |$knormal:11|)) (|fact$unknown:7| |exn| |$alpha-5:n|) (|exn$unknown:5| |$V-reftype:8| |exn|) )
      (|fact$unknown:8| |$V-reftype:8| |exn| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|fact$unknown:7| |$V-reftype:11| |$knormal:3|) (|fact$unknown:6| |$alpha-1:n|) )
      (|$innerFunc:1-exn$unknown:2| |$V-reftype:11| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| 0) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:21| |$knormal:10|) (not (= 0 |$knormal:1|)) (|fact$unknown:8| |$knormal:10| |$knormal:9| |$alpha-1:n|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:9| |$V-reftype:21| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (= |$V-reftype:23| (* |$alpha-1:n| |$knormal:7|)) (not (not (= 0 |$knormal:1|))) (|fact$unknown:9| |$knormal:7| |$knormal:3|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:9| |$V-reftype:23| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| 0) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (= 0 |$knormal:1|)) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:7| |$knormal:9| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|fact$unknown:6| |$alpha-1:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= (not (= 0 |$knormal:1|)) (<= |$alpha-1:n| 0)) (not (not (= 0 |$knormal:1|))) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:6| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) (|$alpha-5:n| Int) (|$knormal:11| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-5:n| 0)) (not (= 0 |$knormal:11|)) (|fact$unknown:7| |$V-reftype:11| |$alpha-5:n|) )
      (|exn$unknown:4| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:11| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-5:n| 0)) (not (= 0 |$knormal:11|)) )
      (|fact$unknown:6| |$alpha-5:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

