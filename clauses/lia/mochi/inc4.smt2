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

(declare-fun |make_array$unknown:12|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:7|
  ( Int ) Bool
)

(declare-fun |inc3$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-18:j| Int) (|$alpha-17:x| Int) (|$alpha-15:i| Int) (|$knormal:38| Int) (|$knormal:37| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) (|$innerFunc:1-a$unknown:3| |$knormal:38| |$alpha-15:i| |$alpha-15:i|) (|$innerFunc:1-a$unknown:4| |$alpha-17:x| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:j| |$alpha-17:x| |$alpha-15:i|) (not |$knormal:37|) (= |$V-reftype:61| |$knormal:38|) (= |$knormal:37| (= |$alpha-15:i| |$alpha-18:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:61| |$alpha-18:j| |$alpha-17:x| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-18:j| Int) (|$alpha-17:x| Int) (|$alpha-15:i| Int) (|$knormal:37| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) (|$innerFunc:1-a$unknown:4| |$alpha-17:x| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:j| |$alpha-17:x| |$alpha-15:i|) |$knormal:37| (= |$V-reftype:60| |$alpha-17:x|) (= |$knormal:37| (= |$alpha-15:i| |$alpha-18:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:60| |$alpha-18:j| |$alpha-17:x| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:j| Int) (|$alpha-17:x| Int) (|$alpha-15:i| Int) (|$knormal:37| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-15:i|) (|$innerFunc:1-a$unknown:4| |$alpha-17:x| |$alpha-15:i|) (|$innerFunc:1-a$unknown:5| |$alpha-18:j| |$alpha-17:x| |$alpha-15:i|) (not |$knormal:37|) (= |$knormal:37| (= |$alpha-15:i| |$alpha-18:j|)) )
      (|$innerFunc:1-a$unknown:2| |$alpha-15:i| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$V-reftype:3| |$alpha-4:i|) (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:17| |$V-reftype:3| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:des| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$V-reftype:37| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$alpha-6:des| |$alpha-4:i|) (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$V-reftype:37| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:3| |$V-reftype:37| |$alpha-6:des| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$V-reftype:11| Int) (|$V-reftype:10| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-4:i|) (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:21| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:10| Bool) (|$knormal:14| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$V-reftype:53| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:16| |$knormal:14| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$V-reftype:53| |$knormal:16|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:14| (+ |$alpha-11:i| 1)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|inc3$unknown:11| |$V-reftype:53| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$V-reftype:14| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:10| Bool) (|$knormal:14| Int) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:8| |$V-reftype:14| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:14| (+ |$alpha-11:i| 1)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|update$unknown:20| |$V-reftype:14| |$knormal:24| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Int) (|$knormal:10| Bool) (|$knormal:17| Int) (|$knormal:26| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$V-reftype:43| Int) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:8| |$knormal:26| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:21| |$V-reftype:43| |$knormal:26| |$knormal:24| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:14| (+ |$alpha-11:i| 1)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|inc3$unknown:9| |$V-reftype:43| |$knormal:26| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$alpha-10:a| Int) (|$knormal:17| Int) (|$knormal:10| Bool) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$V-reftype:16| |$alpha-10:a| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:17| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|update$unknown:18| |$V-reftype:16| |$alpha-10:a| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:17| Int) (|$knormal:10| Bool) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:17| |$V-reftype:35| |$alpha-9:m| |$alpha-11:i|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|inc3$unknown:8| |$V-reftype:35| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:10| Bool) (|$knormal:14| Int) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:14| (+ |$alpha-11:i| 1)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|inc3$unknown:10| |$knormal:14| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:14| Int) (|$knormal:10| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:17| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:14| (+ |$alpha-11:i| 1)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|inc3$unknown:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:10| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:17| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|update$unknown:15| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:10| Bool) (|$knormal:24| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|update$unknown:16| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Int) (|$knormal:10| Bool) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:17| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (|inc3$unknown:9| |$knormal:17| |$alpha-11:i| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:24| (+ |$knormal:17| 1)) )
      (|update$unknown:19| |$knormal:24| |$alpha-9:m| |$alpha-11:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:10| Bool) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) |$knormal:10| (= |$V-reftype:50| 1) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:11| |$V-reftype:50| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:10| Bool) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:7| |$alpha-9:m|) (not |$knormal:10|) (= |$knormal:10| (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:8| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Bool) (|$knormal:27| Bool) (|$alpha-13:n| Int) (|$V-reftype:14| Int) (|$knormal:29| Bool) (|$alpha-14:i| Int) )
    (=>
      ( and (|inc3$unknown:8| |$V-reftype:14| |$alpha-13:n|) |$knormal:29| (= |$knormal:27| (= |$alpha-14:i| 0)) (= |$knormal:28| (> |$alpha-13:n| 0)) (= |$knormal:29| (and |$knormal:27| |$knormal:28|)) )
      (|make_array$unknown:13| |$V-reftype:14| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:i| Int) (|$knormal:29| Bool) (|$alpha-13:n| Int) (|$knormal:30| Int) (|$V-reftype:30| Int) (|$knormal:27| Bool) (|$knormal:28| Bool) )
    (=>
      ( and (|inc3$unknown:8| |$knormal:30| |$alpha-13:n|) (|make_array$unknown:14| |$V-reftype:30| |$knormal:30| |$alpha-13:n|) |$knormal:29| (= |$knormal:27| (= |$alpha-14:i| 0)) (= |$knormal:28| (> |$alpha-13:n| 0)) (= |$knormal:29| (and |$knormal:27| |$knormal:28|)) )
      (|inc3$unknown:9| |$V-reftype:30| |$knormal:30| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:48| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (|make_array$unknown:12| |$alpha-1:n|) (|make_array$unknown:13| |$alpha-2:i| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:48| 0) (= |$alpha-3:$$tmp::1| 1) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|make_array$unknown:14| |$V-reftype:48| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|make_array$unknown:12| |$alpha-1:n|) (|make_array$unknown:13| |$alpha-2:i| |$alpha-1:n|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:9| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:18| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:20| |$V-reftype:41| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$V-reftype:41| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:15| |$alpha-4:i|) (|update$unknown:16| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:19| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:17| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Bool) (|$knormal:27| Bool) (|$knormal:29| Bool) (|$alpha-14:i| Int) (|$alpha-13:n| Int) )
    (=>
      ( and |$knormal:29| (= |$knormal:27| (= |$alpha-14:i| 0)) (= |$knormal:28| (> |$alpha-13:n| 0)) (= |$knormal:29| (and |$knormal:27| |$knormal:28|)) )
      (|inc3$unknown:10| |$alpha-14:i| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:29| Bool) (|$knormal:27| Bool) (|$knormal:28| Bool) )
    (=>
      ( and |$knormal:29| (= |$knormal:27| (= |$alpha-14:i| 0)) (= |$knormal:28| (> |$alpha-13:n| 0)) (= |$knormal:29| (and |$knormal:27| |$knormal:28|)) )
      (|inc3$unknown:7| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$knormal:29| Bool) (|$knormal:27| Bool) (|$knormal:28| Bool) )
    (=>
      ( and |$knormal:29| (= |$knormal:27| (= |$alpha-14:i| 0)) (= |$knormal:28| (> |$alpha-13:n| 0)) (= |$knormal:29| (and |$knormal:27| |$knormal:28|)) )
      (|make_array$unknown:12| |$alpha-13:n|)
    )
  )
)
(check-sat)

