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

(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:2| Int) (|$V-reftype:10| Int) )
    (=>
      ( and (= |$knormal:2| (- |$alpha-1:x| 1)) (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:10| (+ 1 |$knormal:3|)) (not |$knormal:1|) (|copy$unknown:2| |$knormal:3| |$knormal:2|) true )
      (|copy$unknown:2| |$V-reftype:10| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$V-reftype:8| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-1:x| 0)) (= |$V-reftype:8| 0) |$knormal:1| true )
      (|copy$unknown:2| |$V-reftype:8| |$alpha-1:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:n| Int) (|$knormal:5| Int) (|$knormal:7| Int) (|$knormal:9| Bool) )
    ( and (= |$knormal:9| (= |$knormal:7| |$alpha-2:n|)) (not |$knormal:9|) (|copy$unknown:2| |$knormal:7| |$knormal:5|) (|copy$unknown:2| |$knormal:5| |$alpha-2:n|) )
    )
  )
)
(check-sat)

(get-model)

