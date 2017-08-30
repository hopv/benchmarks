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

(declare-fun |make_array$unknown:14|
  ( Int ) Bool
)

(declare-fun |inc3$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:9|
  ( Int ) Bool
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

(declare-fun |update$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int ) Bool
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

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:65| Int) (|$alpha-20:j| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$knormal:42| Int) (|$alpha-18:x| Int) (|$knormal:41| Bool) )
    (=>
      ( and (= |$knormal:41| (= |$alpha-15:i| |$alpha-20:j|)) (= |$V-reftype:65| |$knormal:42|) (not |$knormal:41|) (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:6| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:4| |$knormal:42| |$alpha-15:i| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:2| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:65| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-20:j| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$alpha-18:x| Int) (|$knormal:41| Bool) )
    (=>
      ( and (= |$knormal:41| (= |$alpha-15:i| |$alpha-20:j|)) (= |$V-reftype:64| |$alpha-18:x|) |$knormal:41| (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:6| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:2| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:64| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Bool) (|$alpha-18:x| Int) (|$alpha-16:n| Int) (|$alpha-15:i| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) )
    (=>
      ( and (= |$knormal:41| (= |$alpha-15:i| |$alpha-20:j|)) (not |$knormal:41|) (|$innerFunc:1-a$unknown:7| |$alpha-20:j| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:6| |$alpha-19:$$tmp::2| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:x| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:2| |$alpha-16:n| |$alpha-15:i|) (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) )
      (|$innerFunc:1-a$unknown:3| |$alpha-15:i| |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:19| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$V-reftype:41| Int) (|$alpha-4:i| Int) (|$alpha-6:des| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$V-reftype:41| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:41| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:13| Int) (|$V-reftype:15| Int) (|$V-reftype:14| Int) (|$alpha-7:x| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:22| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:23| |$V-reftype:15| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$knormal:31| Bool) (|$alpha-13:n| Int) (|$V-reftype:18| Int) (|$knormal:33| Bool) (|$alpha-14:i| Int) )
    (=>
      ( and (= |$knormal:33| (and |$knormal:31| |$knormal:32|)) (= |$knormal:32| (> |$alpha-13:n| 0)) (= |$knormal:31| (= |$alpha-14:i| 0)) |$knormal:33| (|inc3$unknown:10| |$V-reftype:18| |$alpha-13:n|) )
      (|make_array$unknown:15| |$V-reftype:18| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$V-reftype:18| Int) (|$knormal:21| Int) (|$knormal:14| Bool) (|$knormal:18| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:10| |$V-reftype:18| |$alpha-9:m|) )
      (|update$unknown:22| |$V-reftype:18| |$knormal:28| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Int) (|$knormal:14| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:30| Int) (|$knormal:21| Int) (|$V-reftype:47| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:23| |$V-reftype:47| |$knormal:30| |$knormal:28| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:10| |$knormal:30| |$alpha-9:m|) )
      (|inc3$unknown:11| |$V-reftype:47| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:i| Int) (|$knormal:33| Bool) (|$alpha-13:n| Int) (|$knormal:34| Int) (|$V-reftype:34| Int) (|$knormal:31| Bool) (|$knormal:32| Bool) )
    (=>
      ( and (= |$knormal:33| (and |$knormal:31| |$knormal:32|)) (= |$knormal:32| (> |$alpha-13:n| 0)) (= |$knormal:31| (= |$alpha-14:i| 0)) |$knormal:33| (|make_array$unknown:16| |$V-reftype:34| |$knormal:34| |$alpha-13:n|) (|inc3$unknown:10| |$knormal:34| |$alpha-13:n|) )
      (|inc3$unknown:11| |$V-reftype:34| |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-10:a| Int) (|$V-reftype:20| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:14| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:19| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$V-reftype:20| |$alpha-10:a| |$alpha-9:m|) )
      (|update$unknown:20| |$V-reftype:20| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:14| Bool) (|$knormal:20| Int) (|$alpha-11:i| Int) (|$knormal:21| Int) (|$alpha-9:m| Int) (|$knormal:18| Int) (|$V-reftype:57| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:57| |$knormal:20|) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:13| |$knormal:20| |$knormal:18| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$V-reftype:57| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) (|$alpha-11:i| Int) (|$knormal:14| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|update$unknown:19| |$V-reftype:39| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$V-reftype:39| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:21| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:18| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:12| |$knormal:18| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:18| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:21| Int) (|$alpha-11:i| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:18| (+ |$alpha-11:i| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:9| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:21| Int) (|$alpha-11:i| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|update$unknown:17| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$knormal:21| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|update$unknown:18| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:14| Bool) (|$alpha-9:m| Int) (|$knormal:21| Int) (|$alpha-11:i| Int) )
    (=>
      ( and (= |$knormal:28| (+ |$knormal:21| 1)) (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|update$unknown:21| |$knormal:28| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) )
    (=>
      ( and (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:54| 1) |$knormal:14| (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$V-reftype:54| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:14| Bool) )
    (=>
      ( and (= |$knormal:14| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:14|) (|inc3$unknown:9| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:52| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:52| 0) |$knormal:3| (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:14| |$alpha-1:n|) )
      (|make_array$unknown:16| |$V-reftype:52| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:15| |$alpha-2:i| |$alpha-1:n|) (|make_array$unknown:14| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:2| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:13| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:6| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:13| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:22| |$V-reftype:45| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:45| |$knormal:13| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:21| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:17| |$alpha-4:i|) )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$knormal:31| Bool) (|$knormal:33| Bool) (|$alpha-14:i| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (= |$knormal:33| (and |$knormal:31| |$knormal:32|)) (= |$knormal:32| (> |$alpha-13:n| 0)) (= |$knormal:31| (= |$alpha-14:i| 0)) |$knormal:33| )
      (|inc3$unknown:12| |$alpha-14:i| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:33| Bool) (|$knormal:31| Bool) (|$knormal:32| Bool) )
    (=>
      ( and (= |$knormal:33| (and |$knormal:31| |$knormal:32|)) (= |$knormal:32| (> |$alpha-13:n| 0)) (= |$knormal:31| (= |$alpha-14:i| 0)) |$knormal:33| )
      (|inc3$unknown:9| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:33| Bool) (|$knormal:31| Bool) (|$knormal:32| Bool) )
    (=>
      ( and (= |$knormal:33| (and |$knormal:31| |$knormal:32|)) (= |$knormal:32| (> |$alpha-13:n| 0)) (= |$knormal:31| (= |$alpha-14:i| 0)) |$knormal:33| )
      (|make_array$unknown:14| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

