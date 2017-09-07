(set-info :origin "Verification conditions for the caml program
  let rec zip x y =
    if x = 0
    then
      if y = 0
      then 0
      else assert false
    else
      if y = 0
      then assert false
      else 1 + zip (x-1) (y-1)
  
  let main n =
    assert (zip n n = n)
")

(set-logic HORN)

(declare-fun |zip$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) )
    (=>
      ( and (= |$cond-alpha-rename:1| |$alpha-3:n|) (= |$cond-alpha-rename:2| |$alpha-3:n|) )
      (|zip$unknown:2| |$cond-alpha-rename:1| |$cond-alpha-rename:2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$knormal:1| Bool) (|$knormal:5| Int) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:7| Int) (|$knormal:3| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:17| (+ 1 |$knormal:7|)) (not |$knormal:2|) (not |$knormal:1|) (|zip$unknown:3| |$knormal:7| |$knormal:5| |$knormal:3|) (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:3| |$V-reftype:17| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) (|$V-reftype:11| Int) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:11| 0) |$knormal:9| |$knormal:1| (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:3| |$V-reftype:11| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:9| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) )
    ( and (= |$knormal:9| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:9|) |$knormal:1| (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (not (exists ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:2| Bool) )
    ( and (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:1|) |$knormal:2| (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$knormal:5| (- |$alpha-2:y| 1)) (= |$knormal:3| (- |$alpha-1:x| 1)) (= |$knormal:2| (= |$alpha-2:y| 0)) (= |$knormal:1| (= |$alpha-1:x| 0)) (not |$knormal:2|) (not |$knormal:1|) (|zip$unknown:2| |$alpha-2:y| |$alpha-1:x|) true )
      (|zip$unknown:2| |$knormal:5| |$knormal:3|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:12| Int) (|$alpha-3:n| Int) (|$knormal:14| Bool) )
    ( and (= |$knormal:14| (= |$knormal:12| |$alpha-3:n|)) (not |$knormal:14|) (|zip$unknown:3| |$knormal:12| |$alpha-3:n| |$alpha-3:n|) )
    )
  )
)
(check-sat)

(get-model)

