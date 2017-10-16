(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as e-fact
  USED: PEPM2013 as e-fact
  *)
  
  let rec fact n exn =
    if n <= 0 then
      exn 0
    else
      let exn n = if n = 0 then 1 else exn n in
      n * fact (n - 1) exn
  let exn n = assert false
  let main n = if n > 0 then (fact n exn; ())
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
  (forall ( (|$V-reftype:30| Int) (|$alpha-6:n| Int) (|$alpha-7:n| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-7:n| 0)) (= |$V-reftype:30| |$knormal:16|) (not (not (= 0 |$knormal:15|))) (|exn$unknown:5| |$knormal:16| |$alpha-7:n|) (|$innerFunc:1-exn$unknown:2| |$alpha-7:n| |$alpha-6:n|) true )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:30| |$alpha-7:n| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-6:n| Int) (|$alpha-7:n| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-7:n| 0)) (= |$V-reftype:29| 1) (not (= 0 |$knormal:15|)) (|$innerFunc:1-exn$unknown:2| |$alpha-7:n| |$alpha-6:n|) true )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:29| |$alpha-7:n| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n| Int) (|$alpha-7:n| Int) (|$knormal:15| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:15|)) (= |$alpha-7:n| 0)) (not (not (= 0 |$knormal:15|))) (|$innerFunc:1-exn$unknown:2| |$alpha-7:n| |$alpha-6:n|) true )
      (|exn$unknown:4| |$alpha-7:n|)
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
  (forall ( (|$V-reftype:8| Int) (|$alpha-4:n| Int) (|$knormal:11| Int) (|exn| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:11|)) (|fact$unknown:7| |exn| |$alpha-4:n|) (|exn$unknown:5| |$V-reftype:8| |exn|) )
      (|fact$unknown:8| |$V-reftype:8| |exn| |$alpha-4:n|)
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
  (forall ( (|$V-reftype:11| Int) (|$alpha-4:n| Int) (|$knormal:11| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:11|)) (|fact$unknown:7| |$V-reftype:11| |$alpha-4:n|) )
      (|exn$unknown:4| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:11| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:11|)) (> |$alpha-4:n| 0)) (not (= 0 |$knormal:11|)) )
      (|fact$unknown:6| |$alpha-4:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

