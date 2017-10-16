(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as r-lock
  USED: PEPM2013 as r-lock
  *)
  
  let lock st = assert (st=0); 1
  let unlock st = assert (st=1); 0
  let f n st : int= if n > 0 then lock (st) else st
  let g n st : int = if n > 0 then unlock (st) else st
  let main n = assert ((g n (f n 0)) = 0)
")

(set-logic HORN)

(declare-fun |unlock$unknown:9|
  ( Int ) Bool
)

(declare-fun |unlock$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int Int ) Bool
)

(declare-fun |lock$unknown:7|
  ( Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |lock$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      (|f$unknown:2| |$knormal:8| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-5:n| 0)) (= |$V-reftype:27| |$knormal:4|) (not (= 0 |$knormal:3|)) (|lock$unknown:8| |$knormal:4| |$alpha-6:st|) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) true )
      (|f$unknown:3| |$V-reftype:27| |$alpha-6:st| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-5:n| 0)) (not (= 0 |$knormal:3|)) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) true )
      (|lock$unknown:7| |$alpha-6:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (> |$alpha-5:n| 0)) (= |$V-reftype:28| |$alpha-6:st|) (not (not (= 0 |$knormal:3|))) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) true )
      (|f$unknown:3| |$V-reftype:28| |$alpha-6:st| |$alpha-5:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:8| Int) )
    ( and (= |$knormal:8| 0) (= (not (= 0 |$knormal:16|)) (= |$knormal:14| 0)) (not (not (= 0 |$knormal:16|))) (|g$unknown:6| |$knormal:14| |$knormal:10| |$alpha-9:n|) (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) )
      (|g$unknown:5| |$knormal:10| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (> |$alpha-7:n| 0)) (= |$V-reftype:30| |$knormal:6|) (not (= 0 |$knormal:5|)) (|unlock$unknown:10| |$knormal:6| |$alpha-8:st|) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) true )
      (|g$unknown:6| |$V-reftype:30| |$alpha-8:st| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (> |$alpha-7:n| 0)) (not (= 0 |$knormal:5|)) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) true )
      (|unlock$unknown:9| |$alpha-8:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (> |$alpha-7:n| 0)) (= |$V-reftype:31| |$alpha-8:st|) (not (not (= 0 |$knormal:5|))) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) true )
      (|g$unknown:6| |$V-reftype:31| |$alpha-8:st| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-1:st| Int) (|$alpha-2:$$tmp::1| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:st| 0)) (= |$alpha-2:$$tmp::1| 1) (= |$V-reftype:22| 1) (not (= 0 |$knormal:1|)) (|lock$unknown:7| |$alpha-1:st|) )
      (|lock$unknown:8| |$V-reftype:22| |$alpha-1:st|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:st| Int) (|$knormal:1| Int) )
    ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:st| 0)) (not (not (= 0 |$knormal:1|))) (|lock$unknown:7| |$alpha-1:st|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:25| Int) (|$alpha-3:st| Int) (|$alpha-4:$$tmp::2| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-3:st| 1)) (= |$alpha-4:$$tmp::2| 1) (= |$V-reftype:25| 0) (not (= 0 |$knormal:2|)) (|unlock$unknown:9| |$alpha-3:st|) )
      (|unlock$unknown:10| |$V-reftype:25| |$alpha-3:st|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:st| Int) (|$knormal:2| Int) )
    ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-3:st| 1)) (not (not (= 0 |$knormal:2|))) (|unlock$unknown:9| |$alpha-3:st|) )
    )
  )
)
(check-sat)

(get-model)

(exit)

