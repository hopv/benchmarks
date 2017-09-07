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
  (forall ( (|$knormal:15| Bool) (|$cond-alpha-rename:7| Bool) (|$alpha-7:n| Int) (|$knormal:16| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Bool) (|$V-reftype:31| Int) )
    (=>
      ( and (= |$knormal:15| (= |$alpha-8:n| 0)) (= |$cond-alpha-rename:7| (<= |$cond-alpha-rename:2| 0)) (= |$cond-alpha-rename:2| (- |$alpha-7:n| 1)) (= |$cond-alpha-rename:1| (<= |$alpha-7:n| 0)) (= |$alpha-8:n| 0) (= |$V-reftype:31| |$knormal:16|) (not |$knormal:15|) (not |$cond-alpha-rename:1|) |$cond-alpha-rename:7| (|fact$unknown:6| |$cond-alpha-rename:2|) (|fact$unknown:6| |$alpha-7:n|) (|exn$unknown:5| |$knormal:16| |$alpha-8:n|) )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:31| |$alpha-8:n| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$knormal:15| Bool) (|$cond-alpha-rename:4| Int) (|$alpha-7:n| Int) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:3| Bool) (|$alpha-8:n| Int) )
    (=>
      ( and (= |$knormal:15| (= |$alpha-8:n| 0)) (= |$cond-alpha-rename:8| (<= |$cond-alpha-rename:4| 0)) (= |$cond-alpha-rename:4| (- |$alpha-7:n| 1)) (= |$cond-alpha-rename:3| (<= |$alpha-7:n| 0)) (= |$alpha-8:n| 0) (= |$V-reftype:30| 1) (not |$cond-alpha-rename:3|) |$knormal:15| |$cond-alpha-rename:8| (|fact$unknown:6| |$cond-alpha-rename:4|) (|fact$unknown:6| |$alpha-7:n|) )
      (|$innerFunc:1-exn$unknown:3| |$V-reftype:30| |$alpha-8:n| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Bool) (|$cond-alpha-rename:9| Bool) (|$alpha-7:n| Int) (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Bool) (|$alpha-8:n| Int) )
    (=>
      ( and (= |$knormal:15| (= |$alpha-8:n| 0)) (= |$cond-alpha-rename:9| (<= |$cond-alpha-rename:6| 0)) (= |$cond-alpha-rename:6| (- |$alpha-7:n| 1)) (= |$cond-alpha-rename:5| (<= |$alpha-7:n| 0)) (= |$alpha-8:n| 0) (not |$knormal:15|) (not |$cond-alpha-rename:5|) |$cond-alpha-rename:9| (|fact$unknown:6| |$cond-alpha-rename:6|) (|fact$unknown:6| |$alpha-7:n|) )
      (|exn$unknown:4| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:3| Int) (|$alpha-1:n| Int) (|$V-reftype:5| Int) (|$knormal:2| Int) (|$cond-alpha-rename:10| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= |$knormal:2| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:10| (<= |$knormal:3| 0)) (not |$knormal:1|) |$cond-alpha-rename:10| (|fact$unknown:6| |$knormal:3|) (|fact$unknown:6| |$alpha-1:n|) (|$innerFunc:1-exn$unknown:3| |$V-reftype:5| |$knormal:2| |$alpha-1:n|) )
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
  (forall ( (|$knormal:11| Bool) (|$alpha-5:n| Int) (|$V-reftype:8| Int) (|exn| Int) (|$cond-alpha-rename:11| Bool) )
    (=>
      ( and (= |exn| 0) (= |$knormal:11| (> |$alpha-5:n| 0)) (= |$cond-alpha-rename:11| (<= |$alpha-5:n| 0)) |$knormal:11| |$cond-alpha-rename:11| (|fact$unknown:6| |$alpha-5:n|) (|exn$unknown:5| |$V-reftype:8| |exn|) )
      (|fact$unknown:8| |$V-reftype:8| |exn| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$knormal:10| Int) (|$alpha-1:n| Int) (|$knormal:9| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:9| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:21| |$knormal:10|) |$knormal:1| (|fact$unknown:8| |$knormal:10| |$knormal:9| |$alpha-1:n|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:9| |$V-reftype:21| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$knormal:3| Int) (|$alpha-1:n| Int) (|$knormal:7| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$V-reftype:23| (* |$alpha-1:n| |$knormal:7|)) (not |$knormal:1|) (|fact$unknown:9| |$knormal:7| |$knormal:3|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:9| |$V-reftype:23| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (- |$alpha-1:n| 1)) (= |$knormal:1| (<= |$alpha-1:n| 0)) (not |$knormal:1|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:6| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Bool) (|$alpha-5:n| Int) (|$cond-alpha-rename:12| Bool) (|$V-reftype:11| Int) )
    (=>
      ( and (= |$knormal:11| (> |$alpha-5:n| 0)) (= |$cond-alpha-rename:12| (<= |$alpha-5:n| 0)) (= |$V-reftype:11| 0) |$knormal:11| |$cond-alpha-rename:12| (|fact$unknown:6| |$alpha-5:n|) )
      (|exn$unknown:4| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Bool) (|$alpha-5:n| Int) )
    (=>
      ( and (= |$knormal:11| (> |$alpha-5:n| 0)) |$knormal:11| )
      (|fact$unknown:6| |$alpha-5:n|)
    )
  )
)
(check-sat)

(get-model)

