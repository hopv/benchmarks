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

(declare-fun |append$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:17| Int) (|$knormal:2| Int) (|$knormal:5| Int) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:17| (+ 1 |$knormal:5|)) (not |$knormal:1|) (|append$unknown:3| |$knormal:5| |$alpha-2:y| |$knormal:2|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|append$unknown:3| |$V-reftype:17| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:15| |$alpha-2:y|) |$knormal:1| (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|append$unknown:3| |$V-reftype:15| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:1|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|append$unknown:2| |$alpha-2:y| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:22| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:14| Int) (|$knormal:12| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (= |$V-reftype:22| |$knormal:14|) (not |$knormal:7|) (|rev$unknown:5| |$knormal:9| |$knormal:8|) true (|append$unknown:3| |$knormal:14| |$knormal:12| |$knormal:9|) )
      (|rev$unknown:5| |$V-reftype:22| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:19| Int) (|$knormal:23| Bool) (|$knormal:21| Int) (|$alpha-5:m| Int) (|$knormal:17| Int) (|$alpha-4:n| Int) (|$knormal:20| Bool) )
    ( and (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) (= |$knormal:20| (= |$knormal:17| |$knormal:19|)) (= |$knormal:19| (+ |$alpha-4:n| |$alpha-5:m|)) (not |$knormal:20|) |$knormal:23| (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) (|append$unknown:3| |$knormal:17| |$alpha-5:m| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:8| Int) (|$knormal:9| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:8| (- |$alpha-3:n| 1)) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:12| 1) (not |$knormal:7|) (|rev$unknown:5| |$knormal:9| |$knormal:8|) true )
      (|append$unknown:2| |$knormal:12| |$knormal:9|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:19| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$V-reftype:19| 0) |$knormal:7| true )
      (|rev$unknown:5| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:21| Int) (|$knormal:23| Bool) (|$alpha-5:m| Int) )
    (=>
      ( and (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) |$knormal:23| (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) )
      (|append$unknown:2| |$alpha-5:m| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:21| Int) (|$knormal:23| Bool) )
    ( and (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) (not |$knormal:23|) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

