(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as mc91
  USED: PEPM2013 as mc91
  *)
  
  let rec mc91 x =
    if x > 100 then
      x - 10
    else
      mc91 (mc91 (x + 11))
  let main n =
    if n <= 101 then assert (mc91 n = 91)
")

(set-logic HORN)

(declare-fun |mc91$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |mc91$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:5| Int) (|$knormal:3| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:10| |$knormal:5|) (not |$knormal:1|) (|mc91$unknown:2| |$knormal:5| |$knormal:3|) (|mc91$unknown:2| |$knormal:3| |$knormal:2|) (|mc91$unknown:1| |$alpha-1:x|) )
      (|mc91$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:3| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|mc91$unknown:2| |$knormal:3| |$knormal:2|) (|mc91$unknown:1| |$alpha-1:x|) )
      (|mc91$unknown:1| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-1:x| Int) (|$V-reftype:8| Int) )
    (=>
      ( and (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:8| (- |$alpha-1:x| 10)) |$knormal:1| (|mc91$unknown:1| |$alpha-1:x|) )
      (|mc91$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (not |$knormal:1|) (|mc91$unknown:1| |$alpha-1:x|) )
      (|mc91$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:9| Bool) (|$alpha-2:n| Int) (|$knormal:7| Int) (|$knormal:6| Bool) )
    ( and (= |$knormal:9| (= |$knormal:7| 91)) (= |$knormal:6| (<= |$alpha-2:n| 101)) (not |$knormal:9|) |$knormal:6| (|mc91$unknown:2| |$knormal:7| |$alpha-2:n|) )
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-2:n| Int) )
    (=>
      ( and (= |$knormal:6| (<= |$alpha-2:n| 101)) |$knormal:6| )
      (|mc91$unknown:1| |$alpha-2:n|)
    )
  )
)
(check-sat)

(get-model)

