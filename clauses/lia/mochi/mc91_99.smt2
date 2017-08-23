(set-info :origin "Verification conditions for the caml program
  let rec m x =
    if x > 100
    then x - 10
    else m (m (x + 11))
  
  let main n =
    if n <= 99
    then assert (m n = 91)
    else ()
")

(set-logic HORN)

(declare-fun |m$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:5| Int) (|$knormal:3| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (|m$unknown:1| |$alpha-1:x|) (|m$unknown:2| |$knormal:3| |$knormal:2|) (|m$unknown:2| |$knormal:5| |$knormal:3|) (not |$knormal:1|) (= |$V-reftype:10| |$knormal:5|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:2| (+ |$alpha-1:x| 11)) )
      (|m$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|m$unknown:1| |$alpha-1:x|) (|m$unknown:2| |$knormal:3| |$knormal:2|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:2| (+ |$alpha-1:x| 11)) )
      (|m$unknown:1| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$V-reftype:8| Int) )
    (=>
      ( and (|m$unknown:1| |$alpha-1:x|) |$knormal:1| (= |$V-reftype:8| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) )
      (|m$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|m$unknown:1| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$knormal:2| (+ |$alpha-1:x| 11)) )
      (|m$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:9| Bool) (|$alpha-2:n| Int) (|$knormal:7| Int) (|$knormal:6| Bool) )
    ( and (|m$unknown:2| |$knormal:7| |$alpha-2:n|) |$knormal:6| (not |$knormal:9|) (= |$knormal:6| (<= |$alpha-2:n| 99)) (= |$knormal:9| (= |$knormal:7| 91)) )
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-2:n| Int) )
    (=>
      ( and |$knormal:6| (= |$knormal:6| (<= |$alpha-2:n| 99)) )
      (|m$unknown:1| |$alpha-2:n|)
    )
  )
)
(check-sat)

