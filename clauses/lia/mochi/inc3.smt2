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

(declare-fun |make_array$unknown:6|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:9|
  ( Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:10|
  ( Int Int ) Bool
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

(declare-fun |inc3$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$knormal:19| Int) (|$knormal:12| Int) (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:21| Int) (|$knormal:5| Bool) (|$knormal:9| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:9| (+ |$alpha-11:i| 1)) )
      (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:5| Bool) (|$knormal:21| Int) (|$alpha-11:i| Int) (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:2| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:9| (+ |$alpha-11:i| 1)) )
      (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$alpha-11:i| Int) (|$V-reftype:5| Int) (|$alpha-9:m| Int) (|$alpha-10:src| Int) (|$knormal:12| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:11| |$alpha-10:src| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|update$unknown:12| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:21| Int) (|$knormal:9| Int) (|$knormal:12| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:11| Int) (|$knormal:19| Int) (|$V-reftype:39| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:5| |$knormal:11| |$knormal:9| |$alpha-9:m|) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$V-reftype:39| |$knormal:11|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:9| (+ |$alpha-11:i| 1)) )
      (|inc3$unknown:5| |$V-reftype:39| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$V-reftype:22| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:11| |$V-reftype:22| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:2| |$V-reftype:22| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:5| Bool) (|$knormal:21| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:9| (+ |$alpha-11:i| 1)) )
      (|inc3$unknown:1| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$knormal:12| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:21| Int) (|$knormal:5| Bool) (|$knormal:9| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:14| |$knormal:21| |$knormal:19| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:9| (+ |$alpha-11:i| 1)) )
      (|inc3$unknown:4| |$knormal:9| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$knormal:12| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|update$unknown:10| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|update$unknown:13| |$knormal:19| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:5|) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|update$unknown:9| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) |$knormal:5| (= |$V-reftype:36| 1) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:5| |$V-reftype:36| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (|inc3$unknown:1| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:5|) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:2| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$alpha-13:n| Int) (|$V-reftype:3| Int) (|$knormal:22| Bool) )
    (=>
      ( and (|inc3$unknown:2| |$V-reftype:3| |$alpha-13:n|) |$knormal:22| (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$knormal:28| 0) )
      (|make_array$unknown:7| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Bool) (|$alpha-13:n| Int) (|$knormal:23| Int) (|$V-reftype:17| Int) (|$knormal:28| Int) )
    (=>
      ( and (|inc3$unknown:2| |$knormal:23| |$alpha-13:n|) (|make_array$unknown:8| |$V-reftype:17| |$knormal:23| |$alpha-13:n|) |$knormal:22| (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$knormal:28| 0) )
      (|inc3$unknown:3| |$V-reftype:17| |$knormal:23| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:33| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (|make_array$unknown:6| |$alpha-1:n|) (|make_array$unknown:7| |$alpha-2:i| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:33| 0) (= |$alpha-3:$$tmp::1| 1) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|make_array$unknown:8| |$V-reftype:33| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|make_array$unknown:6| |$alpha-1:n|) (|make_array$unknown:7| |$alpha-2:i| |$alpha-1:n|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-7:x| Int) (|$knormal:4| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:10| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:12| |$knormal:4| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:9| |$alpha-4:i|) (= |$V-reftype:34| 1) )
      (|update$unknown:14| |$V-reftype:34| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:10| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:9| |$alpha-4:i|) )
      (|update$unknown:11| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:22| Bool) (|$knormal:28| Int) )
    (=>
      ( and |$knormal:22| (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$knormal:28| 0) )
      (|inc3$unknown:1| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:22| Bool) (|$alpha-13:n| Int) )
    (=>
      ( and |$knormal:22| (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$knormal:28| 0) )
      (|inc3$unknown:4| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:22| Bool) (|$knormal:28| Int) )
    (=>
      ( and |$knormal:22| (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$knormal:28| 0) )
      (|make_array$unknown:6| |$alpha-13:n|)
    )
  )
)
(check-sat)

