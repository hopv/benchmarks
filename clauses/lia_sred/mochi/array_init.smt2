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

(declare-fun |init$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) (|$knormal:12| Int) )
    (=>
      ( and (|update$unknown:15| |$V-reftype:32| |$knormal:12| 1 |$alpha-7:i|) (not (>= |$alpha-7:i| |$alpha-8:n|)) )
      (|init$unknown:4| |$V-reftype:32| |$knormal:12| |$alpha-8:n| (+ |$alpha-7:i| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|init$unknown:4| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|) (>= |$alpha-7:i| |$alpha-8:n|) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| |$alpha-7:i|)
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
  (forall ( (|$V-reftype:21| Int) (|$alpha-10:n| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:3| Int) (|$knormal:26| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:3|)) (and (= |$V-reftype:21| 0) (and (= (not (= 0 |$cond-alpha-rename:1|)) (<= 0 |$knormal:26|)) (and (= (not (= 0 |$cond-alpha-rename:2|)) (< |$knormal:26| |$alpha-10:n|)) (= (not (= 0 |$cond-alpha-rename:3|)) (and (not (= 0 |$cond-alpha-rename:1|)) (not (= 0 |$cond-alpha-rename:2|)))))))) (and (not (not (= 0 |$cond-alpha-rename:3|))) (and (= |$V-reftype:21| (- 1)) (and (= (not (= 0 |$cond-alpha-rename:1|)) (<= 0 |$knormal:26|)) (and (= (not (= 0 |$cond-alpha-rename:2|)) (< |$knormal:26| |$alpha-10:n|)) (= (not (= 0 |$cond-alpha-rename:3|)) (and (not (= 0 |$cond-alpha-rename:1|)) (not (= 0 |$cond-alpha-rename:2|))))))))) )
      (|init$unknown:4| |$V-reftype:21| |$knormal:26| |$alpha-10:n| 0)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:n| Int) (|$alpha-11:i| Int) (|$knormal:23| Int) )
    ( and (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| 0) (< |$alpha-11:i| |$alpha-10:n|) (<= 0 |$alpha-11:i|) (not (>= |$knormal:23| 1)) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (|init$unknown:4| |$knormal:5| |$alpha-6:j| |$cond-alpha-rename:4| |$alpha-3:i|) (not (>= |$alpha-3:i| |$cond-alpha-rename:4|)) (not (= |$alpha-6:j| |$alpha-3:i|)) )
      (|update$unknown:15| |$knormal:5| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) )
    (=>
      ( and (= |$alpha-6:j| |$alpha-3:i|) )
      (|update$unknown:15| |$alpha-5:x| |$alpha-6:j| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(check-sat)

(get-model)

