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

(declare-fun |append$unknown:1|
  ( Int ) Bool
)

(declare-fun |rev$unknown:4|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and true )
      (|rev$unknown:4| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$knormal:2| Int) (|$knormal:5| Int) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|append$unknown:1| |$alpha-1:x|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) (|append$unknown:3| |$knormal:5| |$alpha-2:y| |$knormal:2|) (not |$knormal:1|) (= |$V-reftype:17| (+ 1 |$knormal:5|)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|append$unknown:3| |$V-reftype:17| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|append$unknown:1| |$alpha-1:x|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) |$knormal:1| (= |$V-reftype:15| |$alpha-2:y|) (= |$knormal:1| (= |$alpha-1:x| 0)) )
      (|append$unknown:3| |$V-reftype:15| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|append$unknown:1| |$alpha-1:x|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|append$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:y| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) )
    (=>
      ( and (|append$unknown:1| |$alpha-1:x|) (|append$unknown:2| |$alpha-2:y| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|append$unknown:2| |$alpha-2:y| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$knormal:8| Int) (|$alpha-3:n| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:9| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|append$unknown:3| |$knormal:14| |$knormal:12| |$knormal:9|) (|rev$unknown:4| |$alpha-3:n|) (|rev$unknown:5| |$knormal:9| |$knormal:8|) (not |$knormal:7|) (= |$V-reftype:22| |$knormal:14|) (= |$knormal:12| 1) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:8| (- |$alpha-3:n| 1)) )
      (|rev$unknown:5| |$V-reftype:22| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:19| Int) (|$knormal:20| Bool) (|$alpha-4:n| Int) (|$knormal:17| Int) (|$alpha-5:m| Int) (|$knormal:21| Int) (|$knormal:23| Bool) (|$alpha-6:$$tmp::1| Int) )
    ( and (|append$unknown:3| |$knormal:17| |$alpha-5:m| |$alpha-4:n|) (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) |$knormal:23| (not |$knormal:20|) (= |$alpha-6:$$tmp::1| 1) (= |$knormal:19| (+ |$alpha-4:n| |$alpha-5:m|)) (= |$knormal:20| (= |$knormal:17| |$knormal:19|)) (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) )
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$knormal:9| Int) (|$alpha-3:n| Int) (|$knormal:8| Int) (|$knormal:12| Int) )
    (=>
      ( and (|rev$unknown:4| |$alpha-3:n|) (|rev$unknown:5| |$knormal:9| |$knormal:8|) (not |$knormal:7|) (= |$knormal:12| 1) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:8| (- |$alpha-3:n| 1)) )
      (|append$unknown:1| |$knormal:9|)
    )
  )
)
(assert
  (forall ( (|$knormal:12| Int) (|$knormal:8| Int) (|$alpha-3:n| Int) (|$knormal:9| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|rev$unknown:4| |$alpha-3:n|) (|rev$unknown:5| |$knormal:9| |$knormal:8|) (not |$knormal:7|) (= |$knormal:12| 1) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:8| (- |$alpha-3:n| 1)) )
      (|append$unknown:2| |$knormal:12| |$knormal:9|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:n| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|rev$unknown:4| |$alpha-3:n|) |$knormal:7| (= |$V-reftype:19| 0) (= |$knormal:7| (= |$alpha-3:n| 0)) )
      (|rev$unknown:5| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:7| Bool) (|$alpha-3:n| Int) (|$knormal:12| Int) )
    (=>
      ( and (|rev$unknown:4| |$alpha-3:n|) (not |$knormal:7|) (= |$knormal:12| 1) (= |$knormal:7| (= |$alpha-3:n| 0)) (= |$knormal:8| (- |$alpha-3:n| 1)) )
      (|rev$unknown:4| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:$$tmp::1| Int) (|$alpha-4:n| Int) (|$knormal:21| Int) (|$knormal:23| Bool) )
    (=>
      ( and (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) |$knormal:23| (= |$alpha-6:$$tmp::1| 1) (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) )
      (|append$unknown:1| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$knormal:21| Int) (|$alpha-4:n| Int) (|$alpha-6:$$tmp::1| Int) (|$alpha-5:m| Int) )
    (=>
      ( and (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) |$knormal:23| (= |$alpha-6:$$tmp::1| 1) (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) )
      (|append$unknown:2| |$alpha-5:m| |$alpha-4:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:21| Int) (|$knormal:23| Bool) )
    ( and (|rev$unknown:5| |$knormal:21| |$alpha-4:n|) (not |$knormal:23|) (= |$knormal:23| (= |$knormal:21| |$alpha-4:n|)) )
    )
  )
)
(check-sat)

