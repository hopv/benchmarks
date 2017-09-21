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

(declare-fun |exn$unknown:4|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-exn$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |fact$unknown:6|
  ( Int ) Bool
)

(declare-fun |exn$unknown:5|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-6:n| Int) (|$knormal:16| Int) )
    (=>
      ( and (not (<= |$alpha-6:n| 0)) (not (= 0 0)) (<= (- |$alpha-6:n| 1) 0) (|fact$unknown:6| (- |$alpha-6:n| 1)) (|fact$unknown:6| |$alpha-6:n|) (|exn$unknown:5| |$knormal:16| 0) )
      (|$innerFunc:1-exn$unknown:3| |$knormal:16| 0 |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n| Int) )
    (=>
      ( and (not (<= |$alpha-6:n| 0)) (<= (- |$alpha-6:n| 1) 0) (|fact$unknown:6| (- |$alpha-6:n| 1)) (|fact$unknown:6| |$alpha-6:n|) )
      (|$innerFunc:1-exn$unknown:3| 1 0 |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n| Int) )
    (=>
      ( and (not (<= |$alpha-6:n| 0)) (not (= 0 0)) (<= (- |$alpha-6:n| 1) 0) (|fact$unknown:6| (- |$alpha-6:n| 1)) (|fact$unknown:6| |$alpha-6:n|) )
      (|exn$unknown:4| 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-1:n| Int) )
    (=>
      ( and (not (<= |$alpha-1:n| 0)) (<= (- |$alpha-1:n| 1) 0) (|fact$unknown:6| (- |$alpha-1:n| 1)) (|fact$unknown:6| |$alpha-1:n|) (|$innerFunc:1-exn$unknown:3| |$V-reftype:5| 0 |$alpha-1:n|) )
      (|fact$unknown:8| |$V-reftype:5| 0 (- |$alpha-1:n| 1))
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
  (forall ( (|$V-reftype:8| Int) (|$alpha-4:n| Int) )
    (=>
      ( and (> |$alpha-4:n| 0) (<= |$alpha-4:n| 0) (|fact$unknown:6| |$alpha-4:n|) (|exn$unknown:5| |$V-reftype:8| 0) )
      (|fact$unknown:8| |$V-reftype:8| 0 |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (|fact$unknown:6| |$alpha-1:n|) (|fact$unknown:8| |$knormal:10| 0 |$alpha-1:n|) (<= |$alpha-1:n| 0) )
      (|fact$unknown:9| |$knormal:10| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (|fact$unknown:6| |$alpha-1:n|) (|fact$unknown:9| |$knormal:7| (- |$alpha-1:n| 1)) (not (<= |$alpha-1:n| 0)) )
      (|fact$unknown:9| (* |$alpha-1:n| |$knormal:7|) |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) )
    (=>
      ( and (|fact$unknown:6| |$alpha-1:n|) (not (<= |$alpha-1:n| 0)) )
      (|fact$unknown:6| (- |$alpha-1:n| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and (> |$alpha-4:n| 0) (<= |$alpha-4:n| 0) (|fact$unknown:6| |$alpha-4:n|) )
      (|exn$unknown:4| 0)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and (> |$alpha-4:n| 0) )
      (|fact$unknown:6| |$alpha-4:n|)
    )
  )
)
(check-sat)

(get-model)

