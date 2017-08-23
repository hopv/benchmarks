(set-info :origin "Verification conditions for the caml program
  let lamp x = x
  let f =
    let id x = x in
    let unused = id (fun _ -> assert false) in
      lamp
  
  let main i = f ()
")

(set-logic HORN)

(declare-fun |lamp$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-$innerFunc:2$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-$innerFunc:1$unknown:3|
  ( Int ) Bool
)

(declare-fun |$innerFunc:3-id$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-id$unknown:1|
  ( Int ) Bool
)

(declare-fun |lamp$unknown:11|
  ( Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:6-$innerFunc:2$unknown:9|
  ( Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:5|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:7| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:5| |$V-reftype:7|) )
      (|$innerFunc:6-$innerFunc:2$unknown:9| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:11| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:7| |$V-reftype:11|) )
      (|$innerFunc:5-id$unknown:5| |$V-reftype:11|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| 1) )
      (|lamp$unknown:11| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:x| Int) (|$V-reftype:28| Int) )
    (=>
      ( and (|$innerFunc:3-id$unknown:1| |$alpha-9:x|) (= |$V-reftype:28| |$alpha-9:x|) )
      (|$innerFunc:3-id$unknown:2| |$V-reftype:28| |$alpha-9:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-8:$$tmp::1| Int) )
    ( and (|$innerFunc:4-$innerFunc:1$unknown:3| |$alpha-8:$$tmp::1|) )
    )
  )
)
(assert
  (forall ( (|$innerFunc:6-$innerFunc:2| Int) (|$V-reftype:16| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:5| |$innerFunc:6-$innerFunc:2|) (|$innerFunc:6-$innerFunc:2$unknown:10| |$V-reftype:16| |$innerFunc:6-$innerFunc:2|) )
      (|$innerFunc:5-id$unknown:6| |$V-reftype:16| |$innerFunc:6-$innerFunc:2|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$V-reftype:8| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:6| |$V-reftype:9| |$V-reftype:8|) (|$innerFunc:5-id$unknown:7| |$V-reftype:8|) )
      (|$innerFunc:5-id$unknown:8| |$V-reftype:9| |$V-reftype:8|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:$$tmp::1| Int) )
    ( and (|$innerFunc:6-$innerFunc:2$unknown:9| |$alpha-6:$$tmp::1|) )
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$V-reftype:23| Int) )
    (=>
      ( and (|lamp$unknown:11| |$alpha-1:x|) (= |$V-reftype:23| |$alpha-1:x|) )
      (|lamp$unknown:12| |$V-reftype:23| |$alpha-1:x|)
    )
  )
)
(check-sat)

