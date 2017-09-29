(set-info :origin "Verification conditions for the caml program
  let rec append x y =
    if x = 0 then
      y
    else
      1 + append (x - 1) y
  
  let rec rev n =
    if n = 0
    then 0
    else append (rev (n - 1)) 1
  
  let main n m =
    assert (rev n = n);
    assert (append n m = n + m)
")

(set-logic HORN)

(declare-fun |rev$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |append$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:5| Int) )
    (=>
      ( and (|append$unknown:3| |$knormal:5| |$alpha-2:y| (- |$alpha-1:x| 1)) (not (= |$alpha-1:x| 0)) )
      (|append$unknown:3| (+ 1 |$knormal:5|) |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) )
    (=>
      ( and (= |$alpha-1:x| 0) )
      (|append$unknown:3| |$alpha-2:y| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:14| Int) (|$knormal:9| Int) )
    (=>
      ( and (|append$unknown:3| |$knormal:14| 1 |$knormal:9|) (|rev$unknown:5| |$knormal:9| (- |$alpha-3:n| 1)) (not (= |$alpha-3:n| 0)) )
      (|rev$unknown:5| |$knormal:14| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:m| Int) (|$knormal:17| Int) (|$knormal:21| Int) )
    ( and (|append$unknown:3| |$knormal:17| |$alpha-5:m| |$alpha-4:n|) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) (= |$knormal:21| |$alpha-4:n|) (not (= |$knormal:17| (+ |$alpha-4:n| |$alpha-5:m|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) )
    (=>
      ( and (= |$alpha-3:n| 0) )
      (|rev$unknown:5| 0 |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:21| Int) )
    ( and (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) (not (= |$knormal:21| |$alpha-4:n|)) )
    )
  )
)
(check-sat)

(get-model)

(exit)

