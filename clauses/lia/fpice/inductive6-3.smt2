(set-info :origin "Verification conditions for the caml program
  let f g x =
    if x > 0 then
      g x
    else
      1
  let decr x = x - 1
  let main n = if n >= 3 || n <= 0 then assert(f decr n > 0) else ()
")

(set-logic HORN)

(declare-fun |f$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:5|
  ( Int ) Bool
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

(assert
  (forall ( (|$alpha-3:x| Int) (|$V-reftype:17| Int) )
    (=>
      ( and (|decr$unknown:1| |$alpha-3:x|) (= |$V-reftype:17| (- |$alpha-3:x| 1)) )
      (|decr$unknown:2| |$V-reftype:17| |$alpha-3:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:3| Bool) (|$V-reftype:3| Int) (|decr| Int) (|$knormal:5| Bool) (|$alpha-4:n| Int) )
    (=>
      ( and (|decr$unknown:2| |$V-reftype:3| |decr|) (|f$unknown:3| |decr|) |$knormal:5| (= |$knormal:3| (>= |$alpha-4:n| 3)) (= |$knormal:4| (<= |$alpha-4:n| 0)) (= |$knormal:5| (or |$knormal:3| |$knormal:4|)) )
      (|f$unknown:4| |$V-reftype:3| |decr|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:5| Bool) (|$V-reftype:4| Int) (|$knormal:3| Bool) (|$knormal:4| Bool) )
    (=>
      ( and (|f$unknown:3| |$V-reftype:4|) |$knormal:5| (= |$knormal:3| (>= |$alpha-4:n| 3)) (= |$knormal:4| (<= |$alpha-4:n| 0)) (= |$knormal:5| (or |$knormal:3| |$knormal:4|)) )
      (|decr$unknown:1| |$V-reftype:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-2:x| Int) (|$knormal:2| Int) (|$V-reftype:15| Int) )
    (=>
      ( and (|f$unknown:4| |$knormal:2| |$alpha-2:x|) (|f$unknown:5| |$alpha-2:x|) |$knormal:1| (= |$V-reftype:15| |$knormal:2|) (= |$knormal:1| (> |$alpha-2:x| 0)) )
      (|f$unknown:6| |$V-reftype:15| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:5| |$alpha-2:x|) |$knormal:1| (= |$knormal:1| (> |$alpha-2:x| 0)) )
      (|f$unknown:3| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-2:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:5| |$alpha-2:x|) (not |$knormal:1|) (= |$V-reftype:16| 1) (= |$knormal:1| (> |$alpha-2:x| 0)) )
      (|f$unknown:6| |$V-reftype:16| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:4| Bool) (|$knormal:3| Bool) (|$knormal:5| Bool) (|$knormal:8| Int) (|$alpha-4:n| Int) (|$knormal:10| Bool) )
    ( and (|f$unknown:6| |$knormal:8| |$alpha-4:n|) |$knormal:5| (not |$knormal:10|) (= |$knormal:10| (> |$knormal:8| 0)) (= |$knormal:3| (>= |$alpha-4:n| 3)) (= |$knormal:4| (<= |$alpha-4:n| 0)) (= |$knormal:5| (or |$knormal:3| |$knormal:4|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$knormal:5| Bool) (|$knormal:3| Bool) (|$knormal:4| Bool) )
    (=>
      ( and |$knormal:5| (= |$knormal:3| (>= |$alpha-4:n| 3)) (= |$knormal:4| (<= |$alpha-4:n| 0)) (= |$knormal:5| (or |$knormal:3| |$knormal:4|)) )
      (|f$unknown:5| |$alpha-4:n|)
    )
  )
)
(check-sat)

