(set-info :origin "Verification conditions for the caml program
  let f g x =
    if x > 0 then
      g x
    else
      1
  let decr x = x - 1
  let main n = assert(f decr 3 > 0)
")

(set-logic HORN)

(declare-fun |f$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int ) Bool
)

(declare-fun |decr$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |decr$unknown:1|
  ( Int ) Bool
)

(declare-fun |f$unknown:5|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| 3) )
      (|f$unknown:5| |$knormal:4|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:x| Int) (|$V-reftype:17| Int) )
    (=>
      ( and (= |$V-reftype:17| (- |$alpha-3:x| 1)) (|decr$unknown:1| |$alpha-3:x|) )
      (|decr$unknown:2| |$V-reftype:17| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|decr| Int) (|$V-reftype:3| Int) )
    (=>
      ( and (= |$knormal:4| 3) (|f$unknown:3| |decr|) (|decr$unknown:2| |$V-reftype:3| |decr|) )
      (|f$unknown:4| |$V-reftype:3| |decr|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:4| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| 3) (|f$unknown:3| |$V-reftype:4|) )
      (|decr$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:x| Int) (|$knormal:2| Int) (|$V-reftype:15| Int) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-2:x| 0)) (= |$V-reftype:15| |$knormal:2|) |$knormal:1| (|f$unknown:5| |$alpha-2:x|) (|f$unknown:4| |$knormal:2| |$alpha-2:x|) )
      (|f$unknown:6| |$V-reftype:15| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-2:x| 0)) |$knormal:1| (|f$unknown:5| |$alpha-2:x|) )
      (|f$unknown:3| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-2:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-2:x| 0)) (= |$V-reftype:16| 1) (not |$knormal:1|) (|f$unknown:5| |$alpha-2:x|) )
      (|f$unknown:6| |$V-reftype:16| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:8| Bool) )
    ( and (= |$knormal:8| (> |$knormal:6| 0)) (= |$knormal:4| 3) (not |$knormal:8|) (|f$unknown:6| |$knormal:6| |$knormal:4|) )
    )
  )
)
(check-sat)

(get-model)

