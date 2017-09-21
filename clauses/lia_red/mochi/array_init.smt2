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
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:21| Int) )
    (=>
      ( and (>= (+ |$cond-alpha-rename:21| 1) |$alpha-8:n|) (not (>= |$cond-alpha-rename:21| |$alpha-8:n|)) (|update$unknown:15| |$V-reftype:7| |$V-reftype:6| 1 |$cond-alpha-rename:21|) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| (+ |$cond-alpha-rename:21| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:24|)) (and (= |$V-reftype:7| 0) (and (= (not (= 0 |$cond-alpha-rename:24|)) (and (not (= 0 |$cond-alpha-rename:25|)) (not (= 0 |$cond-alpha-rename:26|)))) (and (= (not (= 0 |$cond-alpha-rename:25|)) (<= 0 |$V-reftype:6|)) (= (not (= 0 |$cond-alpha-rename:26|)) (< |$V-reftype:6| |$alpha-8:n|)))))) (and (not (not (= 0 |$cond-alpha-rename:24|))) (and (= |$V-reftype:7| (- 1)) (and (= (not (= 0 |$cond-alpha-rename:24|)) (and (not (= 0 |$cond-alpha-rename:25|)) (not (= 0 |$cond-alpha-rename:26|)))) (and (= (not (= 0 |$cond-alpha-rename:25|)) (<= 0 |$V-reftype:6|)) (= (not (= 0 |$cond-alpha-rename:26|)) (< |$V-reftype:6| |$alpha-8:n|))))))) (>= 0 |$alpha-8:n|) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-8:n| 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-7:i| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-8:n|)) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| (+ |$alpha-7:i| 1)) )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:n| |$alpha-7:i|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:n| Int) (|$alpha-11:i| Int) (|$knormal:23| Int) )
    ( and (not (>= |$knormal:23| 1)) (<= 0 |$alpha-11:i|) (< |$alpha-11:i| |$alpha-10:n|) (|init$unknown:6| |$knormal:23| |$alpha-11:i| |$alpha-10:n| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:27| Int) (|$knormal:5| Int) )
    (=>
      ( and (not (>= (+ |$cond-alpha-rename:27| 1) |$cond-alpha-rename:11|)) (not (= |$alpha-6:j| (+ |$cond-alpha-rename:27| 1))) (not (>= |$cond-alpha-rename:27| |$cond-alpha-rename:11|)) (|update$unknown:15| |$knormal:5| |$alpha-6:j| 1 |$cond-alpha-rename:27|) )
      (|update$unknown:15| |$knormal:5| |$alpha-6:j| |$alpha-5:x| (+ |$cond-alpha-rename:27| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$knormal:5| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:30|)) (and (= (not (= 0 |$cond-alpha-rename:30|)) (and (not (= 0 |$cond-alpha-rename:31|)) (not (= 0 |$cond-alpha-rename:32|)))) (and (= (not (= 0 |$cond-alpha-rename:31|)) (<= 0 |$alpha-6:j|)) (and (= (not (= 0 |$cond-alpha-rename:32|)) (< |$alpha-6:j| |$cond-alpha-rename:11|)) (= |$knormal:5| 0))))) (and (not (not (= 0 |$cond-alpha-rename:30|))) (and (= (not (= 0 |$cond-alpha-rename:30|)) (and (not (= 0 |$cond-alpha-rename:31|)) (not (= 0 |$cond-alpha-rename:32|)))) (and (= (not (= 0 |$cond-alpha-rename:31|)) (<= 0 |$alpha-6:j|)) (and (= (not (= 0 |$cond-alpha-rename:32|)) (< |$alpha-6:j| |$cond-alpha-rename:11|)) (= |$knormal:5| (- 1))))))) (not (>= 0 |$cond-alpha-rename:11|)) (not (= |$alpha-6:j| 0)) )
      (|update$unknown:15| |$knormal:5| |$alpha-6:j| |$alpha-5:x| 0)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-5:x| Int) )
    (=>
      ( and true )
      (|update$unknown:15| |$alpha-5:x| |$alpha-3:i| |$alpha-5:x| |$alpha-3:i|)
    )
  )
)
(check-sat)

(get-model)

