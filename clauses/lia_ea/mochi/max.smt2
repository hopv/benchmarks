(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as max
  USED: PEPM2013 as max
  *)
  let max max2 (x:int) (y:int) (z:int) : int = max2 (max2 x y) z
  let f x y : int = if x >= y then x else y
  let main (x:int) y z =
    let m = max f x y z in
    assert (f x m = m)
")

(set-logic HORN)

(declare-fun |max$unknown:6|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |max$unknown:10|
  ( Int Int Int Int ) Bool
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
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$alpha-8:y| Int) (|$alpha-9:z| Int) (|$knormal:20| Int) )
    (=>
      ( and (|max$unknown:10| |$knormal:20| |$alpha-9:z| |$alpha-8:y| |$alpha-7:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$alpha-8:y| Int) (|$alpha-9:z| Int) (|$knormal:20| Int) )
    (=>
      ( and (|max$unknown:10| |$knormal:20| |$alpha-9:z| |$alpha-8:y| |$alpha-7:x|) )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-5:x| Int) (|$alpha-6:y| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (>= |$alpha-5:x| |$alpha-6:y|)) (= |$V-reftype:28| |$alpha-5:x|) (not (= 0 |$knormal:8|)) true true )
      (|f$unknown:3| |$V-reftype:28| |$alpha-6:y| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-5:x| Int) (|$alpha-6:y| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (>= |$alpha-5:x| |$alpha-6:y|)) (= |$V-reftype:29| |$alpha-6:y|) (not (not (= 0 |$knormal:8|))) true true )
      (|f$unknown:3| |$V-reftype:29| |$alpha-6:y| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:4| Int) (|$V-reftype:5| Int) (|f| Int) )
    (=>
      ( and true true (|f$unknown:3| |$V-reftype:5| |$V-reftype:4| |f|) )
      (|max$unknown:6| |$V-reftype:5| |$V-reftype:4| |f|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-7:x| Int) (|$alpha-8:y| Int) (|$alpha-9:z| Int) (|$knormal:11| Int) (|$knormal:13| Int) (|$knormal:20| Int) )
    ( and (= (not (= 0 |$knormal:13|)) (= |$knormal:11| |$knormal:20|)) (not (not (= 0 |$knormal:13|))) (|max$unknown:10| |$knormal:20| |$alpha-9:z| |$alpha-8:y| |$alpha-7:x|) (|f$unknown:3| |$knormal:11| |$knormal:20| |$alpha-7:x|) )
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$alpha-4:z| Int) (|$knormal:3| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$V-reftype:26| |$knormal:7|) true true true (|max$unknown:6| |$knormal:7| |$alpha-4:z| |$knormal:3|) (|max$unknown:6| |$knormal:3| |$alpha-3:y| |$alpha-2:x|) )
      (|max$unknown:10| |$V-reftype:26| |$alpha-4:z| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) )
    (=>
      ( and true true true (|max$unknown:6| |$knormal:3| |$alpha-3:y| |$alpha-2:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:3| Int) )
    (=>
      ( and true true true (|max$unknown:6| |$knormal:3| |$alpha-3:y| |$alpha-2:x|) )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true )
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      ( and true true true )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

