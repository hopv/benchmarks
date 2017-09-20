(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as hrec
  *)
  
  let rec f g x = if x>=0 then g x else f (f g) (g x)
  let succ x = x+1
  let main n = assert (f succ n >= 0)
")

(set-logic HORN)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-1:g| Int) (|$alpha-2:x| Int) (|$knormal:3| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|) (|f$unknown:2| |$knormal:3| |$alpha-2:x|) (not (>= |$alpha-2:x| 0)) )
      (|f$unknown:2| |$V-reftype:3| |$alpha-1:g|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-2:x| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:3| |$alpha-2:x|) (|f$unknown:4| |$V-reftype:7| |$knormal:2|) (not (>= |$alpha-2:x| 0)) )
      (|f$unknown:2| |$V-reftype:7| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|succ| Int) )
    (=>
      ( and true )
      (|f$unknown:2| (+ |succ| 1) |succ|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:3| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:3| |$alpha-2:x|) (|f$unknown:4| |$knormal:8| |$knormal:3|) (not (>= |$alpha-2:x| 0)) )
      (|f$unknown:4| |$knormal:8| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$knormal:9| Int) )
    (=>
      ( and (|f$unknown:2| |$knormal:9| |$alpha-2:x|) (>= |$alpha-2:x| 0) )
      (|f$unknown:4| |$knormal:9| |$alpha-2:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:12| Int) )
    ( and (|f$unknown:4| |$knormal:12| |$alpha-4:n|) (not (>= |$knormal:12| 0)) )
    )
  )
)
(check-sat)

(get-model)

