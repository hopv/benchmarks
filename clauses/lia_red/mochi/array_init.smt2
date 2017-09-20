(set-info :origin "Verification conditions for the caml program
  let mk_array n i = if 0<=i && i<n then 0 else -1
  let update i a x j = if j=i then x else a(j)
  let rec init i n a =
    if i>=n then a
    else init (i+1) n (update i a 1)
  
  let main n i =
    let x = init 0 n (mk_array n) in
     if 0<=i && i<n then
      assert (x i >=1) (* check that the array has been initialized *)
    else ()
")

(set-logic HORN)

(declare-fun |init$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:48| Int) )
    (=>
      ( and (|update$unknown:15| |$cond-alpha-rename:48| |$V-reftype:6| 1 |$cond-alpha-rename:43|) (>= (+ (+ |$cond-alpha-rename:43| 1) 1) |$alpha-8:n|) (not (>= (+ |$cond-alpha-rename:43| 1) |$alpha-8:n|)) (not (>= |$cond-alpha-rename:43| |$cond-alpha-rename:42|)) (not (>= (+ |$cond-alpha-rename:43| 1) |$cond-alpha-rename:42|)) (not (= |$V-reftype:6| (+ |$cond-alpha-rename:43| 1))) )
      (|init$unknown:6| |$cond-alpha-rename:48| |$V-reftype:6| |$alpha-8:n| (+ (+ |$cond-alpha-rename:43| 1) 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:55| Int) )
    (=>
      ( and (>= (+ 0 1) |$alpha-8:n|) (not (>= 0 |$alpha-8:n|)) (not (>= 0 |$cond-alpha-rename:49|)) (not (= |$V-reftype:6| 0)) (or (and (not (= 0 |$cond-alpha-rename:52|)) (and (= (not (= 0 |$cond-alpha-rename:50|)) (<= 0 |$V-reftype:6|)) (and (= (not (= 0 |$cond-alpha-rename:51|)) (< |$V-reftype:6| |$cond-alpha-rename:49|)) (and (= (not (= 0 |$cond-alpha-rename:52|)) (and (not (= 0 |$cond-alpha-rename:50|)) (not (= 0 |$cond-alpha-rename:51|)))) (= |$cond-alpha-rename:55| 0))))) (and (not (not (= 0 |$cond-alpha-rename:52|))) (and (= (not (= 0 |$cond-alpha-rename:50|)) (<= 0 |$V-reftype:6|)) (and (= (not (= 0 |$cond-alpha-rename:51|)) (< |$V-reftype:6| |$cond-alpha-rename:49|)) (and (= (not (= 0 |$cond-alpha-rename:52|)) (and (not (= 0 |$cond-alpha-rename:50|)) (not (= 0 |$cond-alpha-rename:51|)))) (= |$cond-alpha-rename:55| (- 1))))))) )
      (|init$unknown:6| |$cond-alpha-rename:55| |$V-reftype:6| |$alpha-8:n| (+ 0 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:1| Int) )
    (=>
      ( and (= |$V-reftype:6| |$cond-alpha-rename:1|) (>= (+ |$cond-alpha-rename:1| 1) |$alpha-8:n|) (not (>= |$cond-alpha-rename:1| |$alpha-8:n|)) )
      (|init$unknown:6| 1 |$V-reftype:6| |$alpha-8:n| (+ |$cond-alpha-rename:1| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) )
    (=>
      ( and (>= 0 |$alpha-8:n|) (or (and (not (= 0 |$cond-alpha-rename:12|)) (and (= |$V-reftype:7| 0) (and (= (not (= 0 |$cond-alpha-rename:10|)) (<= 0 |$V-reftype:6|)) (and (= (not (= 0 |$cond-alpha-rename:11|)) (< |$V-reftype:6| |$alpha-8:n|)) (= (not (= 0 |$cond-alpha-rename:12|)) (and (not (= 0 |$cond-alpha-rename:10|)) (not (= 0 |$cond-alpha-rename:11|)))))))) (and (not (not (= 0 |$cond-alpha-rename:12|))) (and (= |$V-reftype:7| (- 1)) (and (= (not (= 0 |$cond-alpha-rename:10|)) (<= 0 |$V-reftype:6|)) (and (= (not (= 0 |$cond-alpha-rename:11|)) (< |$V-reftype:6| |$alpha-8:n|)) (= (not (= 0 |$cond-alpha-rename:12|)) (and (not (= 0 |$cond-alpha-rename:10|)) (not (= 0 |$cond-alpha-rename:11|))))))))) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| (+ |$alpha-7:i| 1)) (not (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:n| Int) (|$alpha-11:i| Int) (|$knormal:23| Int) )
    ( and (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| 0) (< |$alpha-11:i| |$alpha-10:n|) (<= 0 |$alpha-11:i|) (not (>= |$knormal:23| 1)) )
    )
  )
)
(check-sat)

(get-model)

