(set-info :origin "Verification conditions for the caml program
  (*
  USED: PEPM2013 as copy_intro
  *)
  
  let rec copy x = if x=0 then 0 else 1 + copy (x-1)
  let main n = assert (copy (copy n) = n)
")

(set-logic HORN)

(declare-fun |copy$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |copy$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:n| Int) )
    (=>
      ( and true )
      (|copy$unknown:1| |$alpha-2:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$alpha-2:n| Int) )
    (=>
      ( and (|copy$unknown:2| |$knormal:5| |$alpha-2:n|) )
      (|copy$unknown:1| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:3| Int) (|$alpha-1:x| Int) (|$knormal:2| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (|copy$unknown:1| |$alpha-1:x|) (|copy$unknown:2| |$knormal:3| |$knormal:2|) (not |$knormal:1|) (= |$V-reftype:10| (+ 1 |$knormal:3|)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|copy$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|copy$unknown:1| |$alpha-1:x|) |$knormal:1| (= |$V-reftype:8| 0) (= |$knormal:1| (= |$alpha-1:x| 0)) )
      (|copy$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|copy$unknown:1| |$alpha-1:x|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$knormal:2| (- |$alpha-1:x| 1)) )
      (|copy$unknown:1| |$knormal:2|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) (|$knormal:9| Bool) )
    ( and (|copy$unknown:2| |$knormal:5| |$alpha-2:n|) (|copy$unknown:2| |$knormal:7| |$knormal:5|) (not |$knormal:9|) (= |$knormal:9| (= |$knormal:7| |$alpha-2:n|)) )
    )
  )
)
(check-sat)

