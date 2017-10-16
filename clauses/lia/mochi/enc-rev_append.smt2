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
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:17| (+ 1 |$knormal:5|)) (not (not (= 0 |$knormal:1|))) (|append$unknown:3| |$knormal:5| |$alpha-2:y| |$knormal:2|) true true )
      (|append$unknown:3| |$V-reftype:17| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (= |$V-reftype:15| |$alpha-2:y|) (not (= 0 |$knormal:1|)) true true )
      (|append$unknown:3| |$V-reftype:15| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:x| 0)) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:7|)) (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (= |$V-reftype:22| |$knormal:14|) (not (not (= 0 |$knormal:7|))) (|rev$unknown:5| |$knormal:9| |$knormal:8|) true (|append$unknown:3| |$knormal:14| |$knormal:12| |$knormal:9|) )
      (|rev$unknown:5| |$V-reftype:22| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$alpha-5:m| Int) (|$alpha-6:$$tmp::1| Int) (|$knormal:17| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    ( and (= (not (= 0 |$knormal:23|)) (= |$knormal:21| |$alpha-4:n|)) (= (not (= 0 |$knormal:20|)) (= |$knormal:17| |$knormal:19|)) (= |$knormal:19| (+ |$alpha-4:n| |$alpha-5:m|)) (= |$alpha-6:$$tmp::1| 1) (not (not (= 0 |$knormal:20|))) (not (= 0 |$knormal:23|)) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) (|append$unknown:3| |$knormal:17| |$alpha-5:m| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:7|)) (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (not (not (= 0 |$knormal:7|))) (|rev$unknown:5| |$knormal:9| |$knormal:8|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:7|)) (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (not (not (= 0 |$knormal:7|))) (|rev$unknown:5| |$knormal:9| |$knormal:8|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:n| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-3:n| 0)) (= |$V-reftype:19| 0) (not (= 0 |$knormal:7|)) true )
      (|rev$unknown:5| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= (not (= 0 |$knormal:7|)) (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (not (not (= 0 |$knormal:7|))) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-6:$$tmp::1| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$knormal:21| |$alpha-4:n|)) (= |$alpha-6:$$tmp::1| 1) (not (= 0 |$knormal:23|)) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-6:$$tmp::1| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:23|)) (= |$knormal:21| |$alpha-4:n|)) (= |$alpha-6:$$tmp::1| 1) (not (= 0 |$knormal:23|)) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:21| Int) (|$knormal:23| Int) )
    ( and (= (not (= 0 |$knormal:23|)) (= |$knormal:21| |$alpha-4:n|)) (not (not (= 0 |$knormal:23|))) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

