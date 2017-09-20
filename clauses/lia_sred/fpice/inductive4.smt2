(set-info :origin "Verification conditions for the caml program
  let rec f g x =
    if x < -3 then
      f g (-4)
    else if x <= 1 then
      g x
    else
      f (f g) (x - 2)
  let incr x = x + 1
  let main n =
    assert(f incr 3 >= -3)
")

(set-logic HORN)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:g| Int) (|$alpha-2:x| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|) (< |$alpha-2:x| (- 3)) )
      (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:g| Int) (|$alpha-2:x| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|) (not (< |$alpha-2:x| (- 3))) (not (<= |$alpha-2:x| 1)) )
      (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-2:x| Int) (|$knormal:3| Int) )
    (=>
      ( and (|f$unknown:4| |$V-reftype:7| |$knormal:3|) (not (< |$alpha-2:x| (- 3))) (not (<= |$alpha-2:x| 1)) )
      (|f$unknown:2| |$V-reftype:7| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|incr| Int) )
    (=>
      ( and true )
      (|f$unknown:2| (+ |incr| 1) |incr|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:9| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:9| |$alpha-2:x|) (<= |$alpha-2:x| 1) (not (< |$alpha-2:x| (- 3))) )
      (|f$unknown:4| |$knormal:9| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|f$unknown:4| |$knormal:13| (- 4)) (< |$alpha-2:x| (- 3)) )
      (|f$unknown:4| |$knormal:13| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f$unknown:4| |$knormal:8| (- |$alpha-2:x| 2)) (not (< |$alpha-2:x| (- 3))) (not (<= |$alpha-2:x| 1)) )
      (|f$unknown:4| |$knormal:8| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:17| Int) )
    ( and (|f$unknown:4| |$knormal:17| 3) (not (>= |$knormal:17| (- 3))) )
    )
  )
)
(check-sat)

(get-model)

