(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert(0<=i && i<n); 0
  let update i n des x = des i; let a j = if i=j then x else des i in a
  let rec inc3 m a i =
   if i>=m
   then ()
   else
     let a = update i m a ((a i)+1) in
       inc3 m a (i+1)
  let main n i =
    if i=0 && n>0 then inc3 n (make_array n) i else ()
")

(set-logic HORN)

(declare-fun |inc3$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$alpha-18:x| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$knormal:41| Int) (|$knormal:42| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:41|)) (= |$alpha-15:i| |$alpha-20:j|)) (= |$V-reftype:65| |$knormal:42|) (not (not (= 0 |$knormal:41|))) (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) true true (|$innerFunc:1-a$unknown:4| |$knormal:42| |$alpha-15:i| |$alpha-16:n| |$alpha-15:i|) true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:65| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$alpha-18:x| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$knormal:41| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:41|)) (= |$alpha-15:i| |$alpha-20:j|)) (= |$V-reftype:64| |$alpha-18:x|) (not (= 0 |$knormal:41|)) (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) true true true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:64| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$alpha-18:x| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$knormal:41| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:41|)) (= |$alpha-15:i| |$alpha-20:j|)) (not (not (= 0 |$knormal:41|))) (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) true true true true )
      (|$innerFunc:1-a$unknown:3| |$alpha-15:i| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:19| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-6:des| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$V-reftype:41| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:3| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:41| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:15| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:22| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:23| |$V-reftype:15| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:33|)) (and (not (= 0 |$knormal:31|)) (not (= 0 |$knormal:32|)))) (= (not (= 0 |$knormal:32|)) (> |$alpha-13:n| 0)) (= (not (= 0 |$knormal:31|)) (= |$alpha-14:i| 0)) (not (= 0 |$knormal:33|)) (|inc3$unknown:10| |$V-reftype:18| |$alpha-13:n|) )
      (|make_array$unknown:15| |$V-reftype:18| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|update$unknown:22| |$V-reftype:18| |$knormal:28| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:28| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:23| |$V-reftype:47| |$knormal:30| |$knormal:28| |$alpha-9:m| |$alpha-11:i|) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:10| |$knormal:30| |$alpha-9:m|) )
      (|inc3$unknown:11| |$V-reftype:47| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Int) (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:33|)) (and (not (= 0 |$knormal:31|)) (not (= 0 |$knormal:32|)))) (= (not (= 0 |$knormal:32|)) (> |$alpha-13:n| 0)) (= (not (= 0 |$knormal:31|)) (= |$alpha-14:i| 0)) (not (= 0 |$knormal:33|)) (|make_array$unknown:16| |$V-reftype:34| |$knormal:34| |$alpha-13:n|) (|inc3$unknown:10| |$knormal:34| |$alpha-13:n|) )
      (|inc3$unknown:11| |$V-reftype:34| |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-10:a| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:19| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$V-reftype:20| |$alpha-10:a| |$alpha-9:m|) )
      (|update$unknown:20| |$V-reftype:20| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:18| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:57| |$knormal:20|) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:13| |$knormal:20| |$knormal:18| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$V-reftype:57| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) (|update$unknown:19| |$V-reftype:39| |$alpha-9:m| |$alpha-11:i|) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$V-reftype:39| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:12| |$knormal:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:18| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) (|$knormal:21| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|update$unknown:21| |$knormal:28| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:54| 1) (not (= 0 |$knormal:14|)) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$V-reftype:54| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:14|)) (>= |$alpha-11:i| |$alpha-9:m|)) (not (not (= 0 |$knormal:14|))) true (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$alpha-3:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:52| 0) (not (= 0 |$knormal:3|)) (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) true )
      (|make_array$unknown:16| |$V-reftype:52| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (not (not (= 0 |$knormal:3|))) (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:22| |$V-reftype:45| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) true true )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:45| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) true true )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:33|)) (and (not (= 0 |$knormal:31|)) (not (= 0 |$knormal:32|)))) (= (not (= 0 |$knormal:32|)) (> |$alpha-13:n| 0)) (= (not (= 0 |$knormal:31|)) (= |$alpha-14:i| 0)) (not (= 0 |$knormal:33|)) )
      (|inc3$unknown:12| |$alpha-14:i| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:33|)) (and (not (= 0 |$knormal:31|)) (not (= 0 |$knormal:32|)))) (= (not (= 0 |$knormal:32|)) (> |$alpha-13:n| 0)) (= (not (= 0 |$knormal:31|)) (= |$alpha-14:i| 0)) (not (= 0 |$knormal:33|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:33|)) (and (not (= 0 |$knormal:31|)) (not (= 0 |$knormal:32|)))) (= (not (= 0 |$knormal:32|)) (> |$alpha-13:n| 0)) (= (not (= 0 |$knormal:31|)) (= |$alpha-14:i| 0)) (not (= 0 |$knormal:33|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

