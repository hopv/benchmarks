(set-info :origin "Verification conditions for the caml program
  let lamp x = x
  let f =
    let id x = x in
    let unused = id (fun _ -> assert false) in
      lamp
  
  let main i = f ()
")

(set-logic HORN)

(declare-fun |lamp$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-$innerFunc:2$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-$innerFunc:1$unknown:3|
  ( Int ) Bool
)

(declare-fun |$innerFunc:3-id$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-$innerFunc:2$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-id$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-3:i| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:6| |$V-reftype:9| |$alpha-3:i|) )
      (|$innerFunc:6-$innerFunc:2$unknown:11| |$V-reftype:9| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| 1) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-11:x| Int) )
    (=>
      ( and (= |$V-reftype:32| |$alpha-11:x|) true )
      (|$innerFunc:3-id$unknown:2| |$V-reftype:32| |$alpha-11:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:$$tmp::1| Int) )
    ( and (|$innerFunc:4-$innerFunc:1$unknown:3| |$alpha-10:$$tmp::1|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-8:i| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:8| |$V-reftype:10| |$alpha-8:i|) (|$innerFunc:5-id$unknown:7| |$V-reftype:11| |$V-reftype:10| |$alpha-8:i|) true )
      (|$innerFunc:5-id$unknown:9| |$V-reftype:11| |$V-reftype:10| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:13| Int) (|$alpha-8:i| Int) )
    (=>
      ( and (|$innerFunc:5-id$unknown:8| |$V-reftype:13| |$alpha-8:i|) true )
      (|$innerFunc:5-id$unknown:6| |$V-reftype:13| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-3:i| Int) (|$knormal:4| Int) )
    (=>
      ( and (|$innerFunc:6-$innerFunc:2$unknown:12| |$V-reftype:20| |$knormal:4| |$alpha-3:i|) (|$innerFunc:5-id$unknown:6| |$knormal:4| |$alpha-3:i|) )
      (|$innerFunc:5-id$unknown:7| |$V-reftype:20| |$knormal:4| |$alpha-3:i|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:i| Int) (|$alpha-7:$$tmp::1| Int) )
    ( and (|$innerFunc:6-$innerFunc:2$unknown:11| |$alpha-7:$$tmp::1| |$alpha-6:i|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$V-reftype:27| |$alpha-1:x|) true )
      (|lamp$unknown:14| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(check-sat)

(get-model)

(exit)

