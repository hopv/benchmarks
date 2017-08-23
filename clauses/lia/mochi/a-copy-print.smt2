(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-cppr
  USED: PEPM2013 as a-cppr
  *)
  
  let make_array n i = assert (0 <= i && i < n); 0
  let update (i:int) (n:int) des x : int -> int =
    des i;
    let a j = if i=j then x else des j in a
  let print_int (n:int) = ()
  let f (m:int) src des =
    let rec bcopy (m:int) src des i =
      if i >= m then
        des
      else
        let des = update i m des (src i) in
        bcopy m src des (i+1)
    in
    let rec print_array m (array:int->int) i =
      if i >= m then
        ()
      else
        (print_int (array i);
         print_array m array (i + 1))
    in
    let array : int -> int = bcopy m src des 0 in
      print_array m array 0
  let main n =
    let array1 = make_array n in
    let array2 = make_array n in
      if n > 0 then f n array1 array2
")

(set-logic HORN)

(declare-fun |make_array$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:27|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |print_int$unknown:29|
  ( Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |print_int$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:18|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:15|
  ( Int ) Bool
)

(declare-fun |f$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:20|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:37|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:36|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:35|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:32|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:31|
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

(declare-fun |make_array$unknown:26|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-14:n| Int) )
    (=>
      ( and true )
      (|make_array$unknown:26| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:91| Int) (|$alpha-28:x| Int) (|$alpha-29:j| Int) (|$alpha-26:i| Int) (|$knormal:61| Int) (|$knormal:60| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-26:i|) (|$innerFunc:1-a$unknown:3| |$knormal:61| |$alpha-29:j| |$alpha-26:i|) (|$innerFunc:1-a$unknown:4| |$alpha-28:x| |$alpha-26:i|) (|$innerFunc:1-a$unknown:5| |$alpha-29:j| |$alpha-28:x| |$alpha-26:i|) (not |$knormal:60|) (= |$V-reftype:91| |$knormal:61|) (= |$knormal:60| (= |$alpha-26:i| |$alpha-29:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:91| |$alpha-29:j| |$alpha-28:x| |$alpha-26:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:90| Int) (|$alpha-29:j| Int) (|$alpha-28:x| Int) (|$alpha-26:i| Int) (|$knormal:60| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-26:i|) (|$innerFunc:1-a$unknown:4| |$alpha-28:x| |$alpha-26:i|) (|$innerFunc:1-a$unknown:5| |$alpha-29:j| |$alpha-28:x| |$alpha-26:i|) |$knormal:60| (= |$V-reftype:90| |$alpha-28:x|) (= |$knormal:60| (= |$alpha-26:i| |$alpha-29:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:90| |$alpha-29:j| |$alpha-28:x| |$alpha-26:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:j| Int) (|$alpha-28:x| Int) (|$alpha-26:i| Int) (|$knormal:60| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-26:i|) (|$innerFunc:1-a$unknown:4| |$alpha-28:x| |$alpha-26:i|) (|$innerFunc:1-a$unknown:5| |$alpha-29:j| |$alpha-28:x| |$alpha-26:i|) (not |$knormal:60|) (= |$knormal:60| (= |$alpha-26:i| |$alpha-29:j|)) )
      (|$innerFunc:1-a$unknown:2| |$alpha-29:j| |$alpha-26:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$V-reftype:3| |$alpha-4:i|) (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:33| |$V-reftype:3| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:des| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$V-reftype:64| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$alpha-6:des| |$alpha-4:i|) (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$V-reftype:64| |$alpha-6:des| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:3| |$V-reftype:64| |$alpha-6:des| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$V-reftype:11| Int) (|$V-reftype:10| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-4:i|) (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:36| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:37| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-10:m| Int) (|$V-reftype:18| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|f$unknown:23| |$V-reftype:18| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$alpha-21:m| Int) (|$V-reftype:18| Int) (|$alpha-24:i| Int) (|$knormal:42| Bool) (|$knormal:48| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|update$unknown:36| |$V-reftype:18| |$knormal:51| |$alpha-21:m| |$alpha-24:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-10:m| Int) (|$alpha-12:des| Int) (|$knormal:21| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (|f$unknown:24| |$V-reftype:44| |$alpha-12:des| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:44| |$alpha-12:des| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:42| Bool) (|$knormal:51| Int) (|$alpha-21:m| Int) (|$knormal:59| Int) (|$alpha-24:i| Int) (|$V-reftype:70| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$knormal:59| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (|update$unknown:37| |$V-reftype:70| |$knormal:59| |$knormal:51| |$alpha-21:m| |$alpha-24:i|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:70| |$knormal:59| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:m| Int) (|$V-reftype:20| Int) (|$V-reftype:19| Int) (|$alpha-24:i| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:20| |$V-reftype:19| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:19| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) |$knormal:42| (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|$innerFunc:2-bcopy$unknown:14| |$V-reftype:20| |$V-reftype:19| |$alpha-24:i| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:i| Int) (|$alpha-23:des| Int) (|$V-reftype:20| Int) (|$alpha-21:m| Int) (|$knormal:51| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:20| |$alpha-23:des| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (|update$unknown:33| |$alpha-23:des| |$alpha-21:m| |$alpha-24:i|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|update$unknown:34| |$V-reftype:20| |$alpha-23:des| |$alpha-21:m| |$alpha-24:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:42| Bool) (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$V-reftype:24| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:24| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:24| |$knormal:48| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$V-reftype:24| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:24| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) |$knormal:42| (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:24| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$V-reftype:25| Int) (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$V-reftype:26| Int) (|$knormal:48| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:25| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:14| |$V-reftype:26| |$V-reftype:25| |$knormal:48| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:14| |$V-reftype:26| |$V-reftype:25| |$alpha-24:i| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$V-reftype:14| Int) (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$knormal:42| Bool) (|$knormal:48| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:8| |$V-reftype:14| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:8| |$V-reftype:14| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:42| Bool) (|$V-reftype:16| Int) (|$alpha-22:src| Int) (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:8| |$alpha-22:src| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$V-reftype:16| |$alpha-22:src| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:9| |$V-reftype:16| |$alpha-22:src| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$knormal:51| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (|update$unknown:33| |$V-reftype:62| |$alpha-21:m| |$alpha-24:i|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:62| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Bool) (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|update$unknown:31| |$alpha-24:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|update$unknown:32| |$alpha-21:m| |$alpha-24:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Bool) (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|update$unknown:35| |$knormal:51| |$alpha-21:m| |$alpha-24:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:51| Int) (|$alpha-21:m| Int) (|$alpha-24:i| Int) (|$knormal:42| Bool) (|$knormal:48| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:12| |$knormal:48| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:48| Int) (|$knormal:42| Bool) (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:9| |$knormal:51| |$alpha-24:i| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) (= |$knormal:48| (+ |$alpha-24:i| 1)) )
      (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:i| Int) (|$alpha-21:m| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$alpha-24:i| |$alpha-21:m|) (|$innerFunc:2-bcopy$unknown:7| |$alpha-21:m|) (not |$knormal:42|) (= |$knormal:42| (>= |$alpha-24:i| |$alpha-21:m|)) )
      (|$innerFunc:2-bcopy$unknown:8| |$alpha-24:i| |$alpha-21:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-10:m| Int) (|$knormal:23| Int) (|$V-reftype:26| Int) (|$knormal:21| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:14| |$V-reftype:26| |$knormal:23| |$knormal:21| |$alpha-10:m|) (|$innerFunc:3-print_array$unknown:16| |$knormal:23| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (= |$knormal:13| 0) (= |$knormal:21| 0) )
      (|$innerFunc:3-print_array$unknown:17| |$V-reftype:26| |$knormal:23| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-10:m| Int) (|$V-reftype:14| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:8| |$V-reftype:14| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|f$unknown:21| |$V-reftype:14| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-10:m| Int) (|$alpha-11:src| Int) (|$knormal:21| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:8| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (|f$unknown:22| |$V-reftype:40| |$alpha-11:src| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|$innerFunc:2-bcopy$unknown:9| |$V-reftype:40| |$alpha-11:src| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$V-reftype:29| Int) (|$alpha-17:m| Int) (|$alpha-19:i| Int) (|$knormal:41| Int) (|$knormal:32| Bool) (|$knormal:36| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:16| |$V-reftype:29| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (|print_int$unknown:30| |$knormal:41| |$knormal:39|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) (= |$knormal:36| (+ |$alpha-19:i| 1)) )
      (|$innerFunc:3-print_array$unknown:16| |$V-reftype:29| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$knormal:32| Bool) (|$knormal:41| Int) (|$alpha-19:i| Int) (|$V-reftype:31| Int) (|$alpha-18:array| Int) (|$alpha-17:m| Int) (|$knormal:39| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:16| |$alpha-18:array| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$V-reftype:31| |$alpha-18:array| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (|print_int$unknown:30| |$knormal:41| |$knormal:39|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) (= |$knormal:36| (+ |$alpha-19:i| 1)) )
      (|$innerFunc:3-print_array$unknown:17| |$V-reftype:31| |$alpha-18:array| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$knormal:41| Int) (|$knormal:36| Int) (|$knormal:39| Int) (|$alpha-17:m| Int) (|$alpha-19:i| Int) (|$knormal:38| Int) (|$V-reftype:86| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:19| |$knormal:38| |$knormal:36| |$alpha-17:m|) (|print_int$unknown:30| |$knormal:41| |$knormal:39|) (not |$knormal:32|) (= |$V-reftype:86| |$knormal:38|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) (= |$knormal:36| (+ |$alpha-19:i| 1)) )
      (|$innerFunc:3-print_array$unknown:19| |$V-reftype:86| |$alpha-19:i| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$knormal:32| Bool) (|$knormal:41| Int) (|$alpha-19:i| Int) (|$alpha-17:m| Int) (|$knormal:39| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (|print_int$unknown:30| |$knormal:41| |$knormal:39|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) (= |$knormal:36| (+ |$alpha-19:i| 1)) )
      (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$alpha-17:m| Int) (|$alpha-19:i| Int) (|$knormal:41| Int) (|$knormal:32| Bool) (|$knormal:36| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (|print_int$unknown:30| |$knormal:41| |$knormal:39|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) (= |$knormal:36| (+ |$alpha-19:i| 1)) )
      (|$innerFunc:3-print_array$unknown:18| |$knormal:36| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$alpha-19:i| Int) (|$alpha-17:m| Int) (|$knormal:39| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:17| |$knormal:39| |$alpha-19:i| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) )
      (|print_int$unknown:29| |$knormal:39|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:84| Int) (|$alpha-17:m| Int) (|$alpha-19:i| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) |$knormal:32| (= |$V-reftype:84| 1) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) )
      (|$innerFunc:3-print_array$unknown:19| |$V-reftype:84| |$alpha-19:i| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$alpha-19:i| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:15| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:18| |$alpha-19:i| |$alpha-17:m|) (not |$knormal:32|) (= |$knormal:32| (>= |$alpha-19:i| |$alpha-17:m|)) )
      (|$innerFunc:3-print_array$unknown:16| |$alpha-19:i| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-10:m| Int) (|$V-reftype:29| Int) (|$knormal:21| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:16| |$V-reftype:29| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (= |$knormal:13| 0) (= |$knormal:21| 0) )
      (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:29| |$knormal:21| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$knormal:13| Int) (|$knormal:15| Int) (|$alpha-10:m| Int) (|$V-reftype:79| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:19| |$knormal:15| |$knormal:13| |$alpha-10:m|) (|f$unknown:20| |$alpha-10:m|) (= |$V-reftype:79| |$knormal:15|) (= |$knormal:13| 0) (= |$knormal:21| 0) )
      (|f$unknown:25| |$V-reftype:79| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-10:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (|f$unknown:20| |$alpha-10:m|) (= |$knormal:13| 0) (= |$knormal:21| 0) )
      (|$innerFunc:3-print_array$unknown:15| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-10:m| Int) (|$knormal:13| Int) )
    (=>
      ( and (|f$unknown:20| |$alpha-10:m|) (= |$knormal:13| 0) (= |$knormal:21| 0) )
      (|$innerFunc:3-print_array$unknown:18| |$knormal:13| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (|f$unknown:20| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|$innerFunc:2-bcopy$unknown:12| |$knormal:21| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (|f$unknown:20| |$alpha-10:m|) (= |$knormal:21| 0) )
      (|$innerFunc:2-bcopy$unknown:7| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$V-reftype:38| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|f$unknown:21| |$V-reftype:38| |$alpha-14:n|) |$knormal:24| (= |$knormal:24| (> |$alpha-14:n| 0)) )
      (|make_array$unknown:27| |$V-reftype:38| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$knormal:31| Int) (|$alpha-14:n| Int) (|$knormal:24| Bool) )
    (=>
      ( and (|f$unknown:21| |$knormal:31| |$alpha-14:n|) (|make_array$unknown:28| |$V-reftype:54| |$knormal:31| |$alpha-14:n|) |$knormal:24| (= |$knormal:24| (> |$alpha-14:n| 0)) )
      (|f$unknown:22| |$V-reftype:54| |$knormal:31| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$V-reftype:42| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|f$unknown:23| |$V-reftype:42| |$alpha-14:n|) |$knormal:24| (= |$knormal:24| (> |$alpha-14:n| 0)) )
      (|make_array$unknown:27| |$V-reftype:42| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:54| Int) (|$knormal:30| Int) (|$alpha-14:n| Int) (|$knormal:24| Bool) )
    (=>
      ( and (|f$unknown:23| |$knormal:30| |$alpha-14:n|) (|make_array$unknown:28| |$V-reftype:54| |$knormal:30| |$alpha-14:n|) |$knormal:24| (= |$knormal:24| (> |$alpha-14:n| 0)) )
      (|f$unknown:24| |$V-reftype:54| |$knormal:30| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:1| Bool) (|$V-reftype:75| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:3| Bool) (|$alpha-3:$$tmp::1| Int) )
    (=>
      ( and (|make_array$unknown:26| |$alpha-1:n|) (|make_array$unknown:27| |$alpha-2:i| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:75| 0) (= |$alpha-3:$$tmp::1| 1) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|make_array$unknown:28| |$V-reftype:75| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|make_array$unknown:26| |$alpha-1:n|) (|make_array$unknown:27| |$alpha-2:i| |$alpha-1:n|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|print_int$unknown:29| |$alpha-9:n|) (= |$V-reftype:76| 1) )
      (|print_int$unknown:30| |$V-reftype:76| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:9| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:9| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:34| |$knormal:9| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:36| |$V-reftype:68| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$V-reftype:68| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:31| |$alpha-4:i|) (|update$unknown:32| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:35| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:33| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-14:n| Int) )
    (=>
      ( and |$knormal:24| (= |$knormal:24| (> |$alpha-14:n| 0)) )
      (|f$unknown:20| |$alpha-14:n|)
    )
  )
)
(check-sat)

