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
  (not (exists ( (|$alpha-3:n| Int) (|$cond-alpha-rename:28| Bool) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:37| Bool) (|$cond-alpha-rename:30| Bool) )
    ( and (= |$cond-alpha-rename:37| (<= |$cond-alpha-rename:29| 0)) (= |$cond-alpha-rename:30| (= |$alpha-3:n| 0)) (= |$cond-alpha-rename:29| (- |$cond-alpha-rename:27| 1)) (= |$cond-alpha-rename:28| (<= |$cond-alpha-rename:27| 0)) (= |$alpha-3:n| 0) (not |$cond-alpha-rename:30|) (not |$cond-alpha-rename:28|) |$cond-alpha-rename:37| (|fact$unknown:6| |$cond-alpha-rename:29|) (|fact$unknown:6| |$cond-alpha-rename:27|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:n| Int) (|$cond-alpha-rename:32| Bool) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:38| Bool) )
    ( and (= |$cond-alpha-rename:38| (<= |$cond-alpha-rename:31| 0)) (= |$cond-alpha-rename:32| (> |$cond-alpha-rename:31| 0)) (= |$alpha-3:n| 0) |$cond-alpha-rename:38| |$cond-alpha-rename:32| (|fact$unknown:6| |$cond-alpha-rename:31|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$cond-alpha-rename:53| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:55| Bool) (|$cond-alpha-rename:50| Int) (|$knormal:9| Int) (|$cond-alpha-rename:54| Int) (|$alpha-1:n| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:56| Bool) (|$cond-alpha-rename:51| Bool) (|$cond-alpha-rename:57| Bool) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:9| 0) (= |$knormal:10| |$cond-alpha-rename:54|) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:57| (<= |$cond-alpha-rename:50| 0)) (= |$cond-alpha-rename:56| (<= |$cond-alpha-rename:52| 0)) (= |$cond-alpha-rename:55| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:53| (= |$knormal:9| 0)) (= |$cond-alpha-rename:52| (- |$cond-alpha-rename:50| 1)) (= |$cond-alpha-rename:51| (<= |$cond-alpha-rename:50| 0)) (= |$alpha-1:n| (- |$cond-alpha-rename:50| 1)) (= |$V-reftype:21| |$knormal:10|) (not |$cond-alpha-rename:57|) (not |$cond-alpha-rename:53|) (not |$cond-alpha-rename:51|) |$knormal:1| |$cond-alpha-rename:56| |$cond-alpha-rename:55| (|fact$unknown:6| |$cond-alpha-rename:52|) (|fact$unknown:6| |$cond-alpha-rename:50|) (|fact$unknown:6| |$alpha-1:n|) (|exn$unknown:5| |$cond-alpha-rename:54| |$knormal:9|) )
      (|fact$unknown:9| |$V-reftype:21| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:10| Int) (|$cond-alpha-rename:64| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:62| Bool) (|$cond-alpha-rename:59| Int) (|$alpha-1:n| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:61| Bool) (|$cond-alpha-rename:63| Bool) (|$cond-alpha-rename:60| Bool) (|$V-reftype:21| Int) )
    (=>
      ( and (= |$knormal:9| 0) (= |$knormal:10| 1) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:64| (<= |$cond-alpha-rename:58| 0)) (= |$cond-alpha-rename:63| (<= |$cond-alpha-rename:59| 0)) (= |$cond-alpha-rename:62| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:61| (= |$knormal:9| 0)) (= |$cond-alpha-rename:60| (<= |$cond-alpha-rename:58| 0)) (= |$cond-alpha-rename:59| (- |$cond-alpha-rename:58| 1)) (= |$alpha-1:n| (- |$cond-alpha-rename:58| 1)) (= |$V-reftype:21| |$knormal:10|) (not |$cond-alpha-rename:64|) (not |$cond-alpha-rename:60|) |$knormal:1| |$cond-alpha-rename:63| |$cond-alpha-rename:62| |$cond-alpha-rename:61| (|fact$unknown:6| |$cond-alpha-rename:59|) (|fact$unknown:6| |$cond-alpha-rename:58|) (|fact$unknown:6| |$alpha-1:n|) )
      (|fact$unknown:9| |$V-reftype:21| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$cond-alpha-rename:66| Bool) (|$alpha-1:n| Int) (|$knormal:10| Int) (|$knormal:9| Int) (|$cond-alpha-rename:65| Bool) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:9| 0) (= |$knormal:1| (<= |$alpha-1:n| 0)) (= |$cond-alpha-rename:66| (> |$alpha-1:n| 0)) (= |$cond-alpha-rename:65| (<= |$alpha-1:n| 0)) (= |$V-reftype:21| |$knormal:10|) |$knormal:1| |$cond-alpha-rename:66| |$cond-alpha-rename:65| (|fact$unknown:6| |$alpha-1:n|) (|exn$unknown:5| |$knormal:10| |$knormal:9|) )
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
  (forall ( (|$knormal:11| Bool) (|$alpha-5:n| Int) )
    (=>
      ( and (= |$knormal:11| (> |$alpha-5:n| 0)) |$knormal:11| )
      (|fact$unknown:6| |$alpha-5:n|)
    )
  )
)
(check-sat)

(get-model)

