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

(declare-fun |fact$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |fact$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |fact$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |fact$unknown:5|
  ( Int ) Bool
)

(declare-fun |exn$unknown:3|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-exn$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |exn$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-exn$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:13| Bool) (|$knormal:14| Int) (|$alpha-6:n| Int) (|$V-reftype:28| Int) )
    (=>
      ( and (|$innerFunc:1-exn$unknown:1| |$alpha-6:n|) (|exn$unknown:4| |$knormal:14| |$alpha-6:n|) (not |$knormal:13|) (= |$V-reftype:28| |$knormal:14|) (= |$knormal:13| (= |$alpha-6:n| 0)) )
      (|$innerFunc:1-exn$unknown:2| |$V-reftype:28| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-6:n| Int) (|$knormal:13| Bool) )
    (=>
      ( and (|$innerFunc:1-exn$unknown:1| |$alpha-6:n|) |$knormal:13| (= |$V-reftype:27| 1) (= |$knormal:13| (= |$alpha-6:n| 0)) )
      (|$innerFunc:1-exn$unknown:2| |$V-reftype:27| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:n| Int) (|$knormal:13| Bool) )
    (=>
      ( and (|$innerFunc:1-exn$unknown:1| |$alpha-6:n|) (not |$knormal:13|) (= |$knormal:13| (= |$alpha-6:n| 0)) )
      (|exn$unknown:3| |$alpha-6:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$V-reftype:3| Int) (|$innerFunc:1-exn| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|$innerFunc:1-exn$unknown:2| |$V-reftype:3| |$innerFunc:1-exn|) (|fact$unknown:5| |$alpha-1:n|) (|fact$unknown:6| |$innerFunc:1-exn| |$knormal:2|) (not |$knormal:1|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|fact$unknown:7| |$V-reftype:3| |$innerFunc:1-exn| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) )
    ( and (|exn$unknown:3| |$alpha-3:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|exn| Int) (|$V-reftype:6| Int) (|$knormal:9| Bool) )
    (=>
      ( and (|exn$unknown:4| |$V-reftype:6| |exn|) (|fact$unknown:6| |exn| |$alpha-4:n|) |$knormal:9| (= |$knormal:9| (> |$alpha-4:n| 0)) )
      (|fact$unknown:7| |$V-reftype:6| |exn| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$V-reftype:9| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|fact$unknown:5| |$alpha-1:n|) (|fact$unknown:6| |$V-reftype:9| |$knormal:2|) (not |$knormal:1|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|$innerFunc:1-exn$unknown:1| |$V-reftype:9|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$knormal:8| Int) (|$alpha-1:n| Int) (|$knormal:7| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|fact$unknown:5| |$alpha-1:n|) (|fact$unknown:7| |$knormal:8| |$knormal:7| |$alpha-1:n|) |$knormal:1| (= |$V-reftype:19| |$knormal:8|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:7| 0) )
      (|fact$unknown:8| |$V-reftype:19| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:5| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|fact$unknown:5| |$alpha-1:n|) (|fact$unknown:8| |$knormal:5| |$knormal:2|) (not |$knormal:1|) (= |$V-reftype:21| (* |$alpha-1:n| |$knormal:5|)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|fact$unknown:8| |$V-reftype:21| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|fact$unknown:5| |$alpha-1:n|) |$knormal:1| (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:7| 0) )
      (|fact$unknown:6| |$knormal:7| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|fact$unknown:5| |$alpha-1:n|) (not |$knormal:1|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$knormal:2| (- |$alpha-1:n| 1)) )
      (|fact$unknown:5| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$V-reftype:9| Int) (|$knormal:9| Bool) )
    (=>
      ( and (|fact$unknown:6| |$V-reftype:9| |$alpha-4:n|) |$knormal:9| (= |$knormal:9| (> |$alpha-4:n| 0)) )
      (|exn$unknown:3| |$V-reftype:9|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$alpha-4:n| Int) )
    (=>
      ( and |$knormal:9| (= |$knormal:9| (> |$alpha-4:n| 0)) )
      (|fact$unknown:5| |$alpha-4:n|)
    )
  )
)
(check-sat)

