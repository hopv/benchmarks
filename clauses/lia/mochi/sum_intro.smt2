(set-info :origin "Verification conditions for the caml program
  (*
  USED: PEPM2013 as sum_intro
  *)
  
  let add x y = x + y
  let rec sum n =
    if n <= 0 then
      0
    else
      add n (sum (n-1))
  let main n = assert (n <= sum n)
")

(set-logic HORN)

(declare-fun |sum$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |add$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |add$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |add$unknown:1|
  ( Int ) Bool
)

(declare-fun |sum$unknown:4|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      true
      (|sum$unknown:4| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$alpha-2:y| Int) (|$V-reftype:12| Int) )
    (=>
      ( and (= |$V-reftype:12| (+ |$alpha-1:x| |$alpha-2:y|)) (|add$unknown:2| |$alpha-2:y| |$alpha-1:x|) (|add$unknown:1| |$alpha-1:x|) )
      (|add$unknown:3| |$V-reftype:12| |$alpha-2:y| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-3:n| Int) (|$knormal:7| Int) (|$knormal:3| Int) (|$knormal:2| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= |$knormal:1| (<= |$alpha-3:n| 0)) (= |$V-reftype:16| |$knormal:7|) (not |$knormal:1|) (|sum$unknown:5| |$knormal:3| |$knormal:2|) (|sum$unknown:4| |$alpha-3:n|) (|add$unknown:3| |$knormal:7| |$knormal:3| |$alpha-3:n|) )
      (|sum$unknown:5| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-3:n| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= |$knormal:1| (<= |$alpha-3:n| 0)) (not |$knormal:1|) (|sum$unknown:5| |$knormal:3| |$knormal:2|) (|sum$unknown:4| |$alpha-3:n|) )
      (|add$unknown:1| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:3| Int) (|$alpha-3:n| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= |$knormal:1| (<= |$alpha-3:n| 0)) (not |$knormal:1|) (|sum$unknown:5| |$knormal:3| |$knormal:2|) (|sum$unknown:4| |$alpha-3:n|) )
      (|add$unknown:2| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (<= |$alpha-3:n| 0)) (= |$V-reftype:14| 0) |$knormal:1| (|sum$unknown:4| |$alpha-3:n|) )
      (|sum$unknown:5| |$V-reftype:14| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-3:n| 1)) (= |$knormal:1| (<= |$alpha-3:n| 0)) (not |$knormal:1|) (|sum$unknown:4| |$alpha-3:n|) )
      (|sum$unknown:4| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:8| Int) (|$knormal:10| Bool) )
    ( and (= |$knormal:10| (<= |$alpha-4:n| |$knormal:8|)) (not |$knormal:10|) (|sum$unknown:5| |$knormal:8| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

