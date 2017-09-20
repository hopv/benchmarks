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

(declare-fun |exn$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |fact$unknown:6|
  ( Int ) Bool
)

(assert
  (not (exists ( (|$cond-alpha-rename:27| Int) )
    ( and (|fact$unknown:6| |$cond-alpha-rename:27|) (|fact$unknown:6| (- |$cond-alpha-rename:27| 1)) (<= (- |$cond-alpha-rename:27| 1) 0) (not (<= |$cond-alpha-rename:27| 0)) (not (= 0 0)) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:31| Int) )
    ( and (|fact$unknown:6| |$cond-alpha-rename:31|) (> |$cond-alpha-rename:31| 0) (<= |$cond-alpha-rename:31| 0) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:54| Int) )
    (=>
      ( and (|exn$unknown:5| |$cond-alpha-rename:54| 0) (|fact$unknown:6| (- |$cond-alpha-rename:50| 1)) (|fact$unknown:6| |$cond-alpha-rename:50|) (|fact$unknown:6| (- |$cond-alpha-rename:50| 1)) (<= (- |$cond-alpha-rename:50| 1) 0) (<= (- |$cond-alpha-rename:50| 1) 0) (<= (- |$cond-alpha-rename:50| 1) 0) (not (<= |$cond-alpha-rename:50| 0)) (not (= 0 0)) (not (<= |$cond-alpha-rename:50| 0)) )
      (|fact$unknown:9| |$cond-alpha-rename:54| (- |$cond-alpha-rename:50| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:58| Int) )
    (=>
      ( and (|fact$unknown:6| (- |$cond-alpha-rename:58| 1)) (|fact$unknown:6| |$cond-alpha-rename:58|) (|fact$unknown:6| (- |$cond-alpha-rename:58| 1)) (= 0 0) (<= (- |$cond-alpha-rename:58| 1) 0) (<= (- |$cond-alpha-rename:58| 1) 0) (<= (- |$cond-alpha-rename:58| 1) 0) (not (<= |$cond-alpha-rename:58| 0)) (not (<= |$cond-alpha-rename:58| 0)) )
      (|fact$unknown:9| 1 (- |$cond-alpha-rename:58| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (|exn$unknown:5| |$knormal:10| 0) (|fact$unknown:6| |$alpha-1:n|) (<= |$alpha-1:n| 0) (> |$alpha-1:n| 0) (<= |$alpha-1:n| 0) )
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
  (forall ( (|$alpha-5:n| Int) )
    (=>
      ( and (> |$alpha-5:n| 0) )
      (|fact$unknown:6| |$alpha-5:n|)
    )
  )
)
(check-sat)

(get-model)

