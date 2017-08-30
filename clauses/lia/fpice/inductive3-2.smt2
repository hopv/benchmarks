(set-info :origin "Verification conditions for the caml program
  let rec f x =
    if x < -1 then
      f (-2)
    else if x <= 1 then
      2 * x - 1
    else
      x
  let main n =
    let v = f 0 in
    if n >= 2 then assert(f n >= 0) else ()
")

(set-logic HORN)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 0) )
      (|f$unknown:1| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$knormal:4| Int) (|$alpha-1:x| Int) (|$knormal:5| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:4| (- 2)) (= |$knormal:1| (< |$alpha-1:x| (- 1))) (= |$V-reftype:9| |$knormal:5|) |$knormal:1| (|f$unknown:2| |$knormal:5| |$knormal:4|) (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:2| |$V-reftype:9| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- 2)) (= |$knormal:1| (< |$alpha-1:x| (- 1))) |$knormal:1| (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:1| |$knormal:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$knormal:2| Bool) (|$V-reftype:12| Int) )
    (=>
      ( and (= |$knormal:3| (* 2 |$alpha-1:x|)) (= |$knormal:2| (<= |$alpha-1:x| 1)) (= |$knormal:1| (< |$alpha-1:x| (- 1))) (= |$V-reftype:12| (- |$knormal:3| 1)) (not |$knormal:1|) |$knormal:2| (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:2| |$V-reftype:12| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$V-reftype:13| Int) )
    (=>
      ( and (= |$knormal:2| (<= |$alpha-1:x| 1)) (= |$knormal:1| (< |$alpha-1:x| (- 1))) (= |$V-reftype:13| |$alpha-1:x|) (not |$knormal:2|) (not |$knormal:1|) (|f$unknown:1| |$alpha-1:x|) )
      (|f$unknown:2| |$V-reftype:13| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Bool) (|$knormal:7| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$alpha-2:n| Int) (|$knormal:9| Bool) )
    ( and (= |$knormal:9| (>= |$knormal:7| 0)) (= |$knormal:6| (>= |$alpha-2:n| 2)) (= |$knormal:10| 0) (not |$knormal:9|) |$knormal:6| (|f$unknown:2| |$knormal:7| |$alpha-2:n|) (|f$unknown:2| |$knormal:11| |$knormal:10|) )
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:11| Int) (|$knormal:10| Int) (|$alpha-2:n| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-2:n| 2)) (= |$knormal:10| 0) |$knormal:6| (|f$unknown:2| |$knormal:11| |$knormal:10|) )
      (|f$unknown:1| |$alpha-2:n|)
    )
  )
)
(check-sat)

(get-model)

