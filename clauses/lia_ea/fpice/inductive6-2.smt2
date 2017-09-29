(set-info :origin "Verification conditions for the caml program
  let f g x =
    if x > 0 then
      g x
    else
      1
  let decr x = x - 1
  let main n = if n >= 3 then assert(f decr n > 0) else ()
")

(set-logic HORN)

(declare-fun |f$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |decr$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-3:x| Int) )
    (=>
      ( and (= |$V-reftype:17| (- |$alpha-3:x| 1)) true )
      (|decr$unknown:2| |$V-reftype:17| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$knormal:3| Int) (|decr| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-4:n| 3)) (not (= 0 |$knormal:3|)) true (|decr$unknown:2| |$V-reftype:3| |decr|) )
      (|f$unknown:4| |$V-reftype:3| |decr|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-4:n| 3)) (not (= 0 |$knormal:3|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (> |$alpha-2:x| 0)) (= |$V-reftype:15| |$knormal:2|) (not (= 0 |$knormal:1|)) true (|f$unknown:4| |$knormal:2| |$alpha-2:x|) )
      (|f$unknown:6| |$V-reftype:15| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (> |$alpha-2:x| 0)) (not (= 0 |$knormal:1|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-2:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (> |$alpha-2:x| 0)) (= |$V-reftype:16| 1) (not (not (= 0 |$knormal:1|))) true )
      (|f$unknown:6| |$V-reftype:16| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:3| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    ( and (= (not (= 0 |$knormal:8|)) (> |$knormal:6| 0)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-4:n| 3)) (not (not (= 0 |$knormal:8|))) (not (= 0 |$knormal:3|)) (|f$unknown:6| |$knormal:6| |$alpha-4:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-4:n| 3)) (not (= 0 |$knormal:3|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

