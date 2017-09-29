(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert(0<=i && i<n); 0
  let update i n des x = let _ = des i in ()
  let rec inc3 m src i =
   if i>=m
   then ()
   else
     begin
       update i m src ((src i)+1);
       inc3 m src (i+1)
     end
  let main n =
   if n>0 then inc3 n (make_array n) 0 else ()
")

(set-logic HORN)

(declare-fun |make_array$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |inc3$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|) true )
      (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:2| |$alpha-10:src| |$alpha-9:m|) true )
      (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:11| |$alpha-10:src| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) true )
      (|update$unknown:12| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$V-reftype:39| |$knormal:11|) (not (not (= 0 |$knormal:5|))) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:5| |$knormal:11| |$knormal:9| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:5| |$V-reftype:39| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:11| |$V-reftype:22| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:2| |$V-reftype:22| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:5| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:4| |$knormal:9| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      (|update$unknown:13| |$knormal:19| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (not (not (= 0 |$knormal:5|))) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:36| 1) (not (= 0 |$knormal:5|)) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:5| |$V-reftype:36| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:5|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:5|))) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:2| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-13:n| Int) (|$knormal:22| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= (not (= 0 |$knormal:22|)) (> |$alpha-13:n| 0)) (not (= 0 |$knormal:22|)) (|inc3$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|make_array$unknown:7| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-13:n| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= (not (= 0 |$knormal:22|)) (> |$alpha-13:n| 0)) (not (= 0 |$knormal:22|)) (|make_array$unknown:8| |$V-reftype:17| |$knormal:23| |$alpha-13:n|) (|inc3$unknown:2| |$knormal:23| |$alpha-13:n|) )
      (|inc3$unknown:3| |$V-reftype:17| |$knormal:23| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:33| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$alpha-3:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:33| 0) (not (= 0 |$knormal:3|)) (|make_array$unknown:7| |$alpha-2:i| |$alpha-1:n|) true )
      (|make_array$unknown:8| |$V-reftype:33| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (not (not (= 0 |$knormal:3|))) (|make_array$unknown:7| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$V-reftype:34| 1) true (|update$unknown:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:12| |$knormal:4| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true )
      (|update$unknown:14| |$V-reftype:34| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and true (|update$unknown:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) true )
      (|update$unknown:11| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:22| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= (not (= 0 |$knormal:22|)) (> |$alpha-13:n| 0)) (not (= 0 |$knormal:22|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:22| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= (not (= 0 |$knormal:22|)) (> |$alpha-13:n| 0)) (not (= 0 |$knormal:22|)) )
      (|inc3$unknown:4| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:22| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= (not (= 0 |$knormal:22|)) (> |$alpha-13:n| 0)) (not (= 0 |$knormal:22|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

