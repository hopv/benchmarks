(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as apply
  *)
  
  let apply f x = f x
  let g y z = assert (y=z)
  let rec k n = apply (g n) n; k(n+1)
  let main i = k 0
")

(set-logic HORN)

(declare-fun |k$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |apply$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |apply$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int ) Bool
)

(declare-fun |k$unknown:8|
  ( Int ) Bool
)

(declare-fun |apply$unknown:1|
  ( Int ) Bool
)

(declare-fun |apply$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-2:x| Int) )
    (=>
      ( and (|apply$unknown:3| |$alpha-2:x|) )
      (|apply$unknown:1| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) )
    (=>
      ( and (|k$unknown:8| |$alpha-5:n|) )
      (|apply$unknown:3| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) )
    (=>
      ( and (|k$unknown:8| |$alpha-5:n|) )
      (|g$unknown:5| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:10| 0) )
      (|k$unknown:8| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$V-reftype:1| Int) )
    (=>
      ( and (|apply$unknown:1| |$V-reftype:1|) (|k$unknown:8| |$alpha-5:n|) )
      (|g$unknown:6| |$V-reftype:1| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Int) (|$V-reftype:12| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (|apply$unknown:1| |$knormal:5|) (|g$unknown:7| |$V-reftype:12| |$knormal:5| |$alpha-5:n|) (|k$unknown:8| |$alpha-5:n|) )
      (|apply$unknown:2| |$V-reftype:12| |$knormal:5|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) (|$alpha-2:x| Int) (|$V-reftype:19| Int) )
    (=>
      ( and (|apply$unknown:2| |$knormal:1| |$alpha-2:x|) (|apply$unknown:3| |$alpha-2:x|) (= |$V-reftype:19| |$knormal:1|) )
      (|apply$unknown:4| |$V-reftype:19| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:9| Int) (|$alpha-5:n| Int) (|$knormal:4| Int) (|$V-reftype:23| Int) )
    (=>
      ( and (|apply$unknown:4| |$knormal:9| |$alpha-5:n|) (|k$unknown:8| |$alpha-5:n|) (|k$unknown:9| |$knormal:4| |$knormal:3|) (= |$V-reftype:23| |$knormal:4|) (= |$knormal:3| (+ |$alpha-5:n| 1)) )
      (|k$unknown:9| |$V-reftype:23| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|apply$unknown:4| |$knormal:9| |$alpha-5:n|) (|k$unknown:8| |$alpha-5:n|) (= |$knormal:3| (+ |$alpha-5:n| 1)) )
      (|k$unknown:8| |$knormal:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-3:y| Int) (|$alpha-4:z| Int) (|$knormal:2| Bool) )
    (=>
      ( and (|g$unknown:5| |$alpha-3:y|) (|g$unknown:6| |$alpha-4:z| |$alpha-3:y|) |$knormal:2| (= |$V-reftype:21| 1) (= |$knormal:2| (= |$alpha-3:y| |$alpha-4:z|)) )
      (|g$unknown:7| |$V-reftype:21| |$alpha-4:z| |$alpha-3:y|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:y| Int) (|$alpha-4:z| Int) (|$knormal:2| Bool) )
    ( and (|g$unknown:5| |$alpha-3:y|) (|g$unknown:6| |$alpha-4:z| |$alpha-3:y|) (not |$knormal:2|) (= |$knormal:2| (= |$alpha-3:y| |$alpha-4:z|)) )
    )
  )
)
(check-sat)

