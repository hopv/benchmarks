(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as e-simpl
  USED: PEPM2013 as e-simpl
  FROM: Leroy & Pessaux, TOPLAS, 2000
  
  let ff n = if n >= 0 then () else raise (Failer 0)
  let main n = try ff n with Failer 0 -> ()
  *)
  
  let f n k = if n >= 0 then () else k 0
  let g n = assert (n = 0)
  let main n = f n g
")

(set-logic HORN)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-4:n| Int) )
    (=>
      ( and true )
      (|f$unknown:1| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) )
    (=>
      ( and (|f$unknown:2| |$V-reftype:3| |$alpha-4:n|) )
      (|g$unknown:5| |$V-reftype:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$knormal:3| Int) (|$alpha-1:n| Int) (|$knormal:2| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:n|) (|f$unknown:3| |$knormal:3| |$knormal:2| |$alpha-1:n|) (not |$knormal:1|) (= |$V-reftype:17| |$knormal:3|) (= |$knormal:1| (>= |$alpha-1:n| 0)) (= |$knormal:2| 0) )
      (|f$unknown:4| |$V-reftype:17| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:n|) |$knormal:1| (= |$V-reftype:15| 1) (= |$knormal:1| (>= |$alpha-1:n| 0)) )
      (|f$unknown:4| |$V-reftype:15| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-1:n|) (not |$knormal:1|) (= |$knormal:1| (>= |$alpha-1:n| 0)) (= |$knormal:2| 0) )
      (|f$unknown:2| |$knormal:2| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|g| Int) (|$alpha-4:n| Int) )
    (=>
      ( and (|f$unknown:2| |g| |$alpha-4:n|) (|g$unknown:6| |$V-reftype:10| |g|) )
      (|f$unknown:3| |$V-reftype:10| |g| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|$alpha-3:n| Int) (|$knormal:4| Bool) )
    (=>
      ( and (|g$unknown:5| |$alpha-3:n|) |$knormal:4| (= |$V-reftype:19| 1) (= |$knormal:4| (= |$alpha-3:n| 0)) )
      (|g$unknown:6| |$V-reftype:19| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:4| Bool) (|$alpha-3:n| Int) )
    ( and (|g$unknown:5| |$alpha-3:n|) (not |$knormal:4|) (= |$knormal:4| (= |$alpha-3:n| 0)) )
    )
  )
)
(check-sat)

