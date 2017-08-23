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

(declare-fun |g$unknown:4|
  ( Int ) Bool
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

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-9:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 0) )
      (|f$unknown:1| |$alpha-9:n|)
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
  (forall ( (|$V-reftype:27| Int) (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:4| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-5:n|) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) (|lock$unknown:8| |$knormal:4| |$alpha-6:st|) |$knormal:3| (= |$V-reftype:27| |$knormal:4|) (= |$knormal:3| (> |$alpha-5:n| 0)) )
      (|f$unknown:3| |$V-reftype:27| |$alpha-6:st| |$alpha-5:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-5:n|) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) |$knormal:3| (= |$knormal:3| (> |$alpha-5:n| 0)) )
      (|lock$unknown:7| |$alpha-6:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-5:n| Int) (|$alpha-6:st| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-5:n|) (|f$unknown:2| |$alpha-6:st| |$alpha-5:n|) (not |$knormal:3|) (= |$V-reftype:28| |$alpha-6:st|) (= |$knormal:3| (> |$alpha-5:n| 0)) )
      (|f$unknown:3| |$V-reftype:28| |$alpha-6:st| |$alpha-5:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:14| Int) (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-9:n| Int) (|$knormal:16| Bool) )
    ( and (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) (|g$unknown:6| |$knormal:14| |$knormal:10| |$alpha-9:n|) (not |$knormal:16|) (= |$knormal:16| (= |$knormal:14| 0)) (= |$knormal:8| 0) )
    )
  )
)
(assert
  (forall ( (|$alpha-9:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) (= |$knormal:8| 0) )
      (|g$unknown:4| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$knormal:10| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|f$unknown:3| |$knormal:10| |$knormal:8| |$alpha-9:n|) (= |$knormal:8| 0) )
      (|g$unknown:5| |$knormal:10| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:6| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|g$unknown:4| |$alpha-7:n|) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) (|unlock$unknown:10| |$knormal:6| |$alpha-8:st|) |$knormal:5| (= |$V-reftype:30| |$knormal:6|) (= |$knormal:5| (> |$alpha-7:n| 0)) )
      (|g$unknown:6| |$V-reftype:30| |$alpha-8:st| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|g$unknown:4| |$alpha-7:n|) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) |$knormal:5| (= |$knormal:5| (> |$alpha-7:n| 0)) )
      (|unlock$unknown:9| |$alpha-8:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-7:n| Int) (|$alpha-8:st| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|g$unknown:4| |$alpha-7:n|) (|g$unknown:5| |$alpha-8:st| |$alpha-7:n|) (not |$knormal:5|) (= |$V-reftype:31| |$alpha-8:st|) (= |$knormal:5| (> |$alpha-7:n| 0)) )
      (|g$unknown:6| |$V-reftype:31| |$alpha-8:st| |$alpha-7:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:$$tmp::1| Int) (|$knormal:1| Bool) (|$alpha-1:st| Int) (|$V-reftype:22| Int) )
    (=>
      ( and (|lock$unknown:7| |$alpha-1:st|) |$knormal:1| (= |$V-reftype:22| 1) (= |$alpha-2:$$tmp::1| 1) (= |$knormal:1| (= |$alpha-1:st| 0)) )
      (|lock$unknown:8| |$V-reftype:22| |$alpha-1:st|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:1| Bool) (|$alpha-1:st| Int) )
    ( and (|lock$unknown:7| |$alpha-1:st|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-1:st| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:$$tmp::2| Int) (|$knormal:2| Bool) (|$alpha-3:st| Int) (|$V-reftype:25| Int) )
    (=>
      ( and (|unlock$unknown:9| |$alpha-3:st|) |$knormal:2| (= |$V-reftype:25| 0) (= |$alpha-4:$$tmp::2| 1) (= |$knormal:2| (= |$alpha-3:st| 1)) )
      (|unlock$unknown:10| |$V-reftype:25| |$alpha-3:st|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:2| Bool) (|$alpha-3:st| Int) )
    ( and (|unlock$unknown:9| |$alpha-3:st|) (not |$knormal:2|) (= |$knormal:2| (= |$alpha-3:st| 1)) )
    )
  )
)
(check-sat)

