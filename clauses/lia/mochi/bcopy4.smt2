(set-info :origin "Verification conditions for the caml program
  
  let array1 i = 0
  let array2 i = 0
  let update a i x j = if j=i then x else a j
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        assert (0<=i && i<=m);
        let des = update des i (src i) in
          bcopy_aux m src des (i+1)
      end
  
  
  let main n =
    let bcopy src des = bcopy_aux n src des 0 in
    bcopy array1 array2
")

(set-logic HORN)

(declare-fun |update$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:20|
  ( Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |array2$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |array1$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:11|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |array2$unknown:9|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |array1$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      ( and true )
      (|$innerFunc:1-bcopy$unknown:1| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|array1$unknown:7| |$V-reftype:3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:4| |$V-reftype:7| |$alpha-13:n|) )
      (|array2$unknown:9| |$V-reftype:7|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-14:n| Int) (|$alpha-15:src| Int) (|$knormal:32| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (|$innerFunc:1-bcopy$unknown:3| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|) (|bcopy_aux$unknown:12| |$alpha-15:src| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|bcopy_aux$unknown:13| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-14:n| Int) (|$alpha-16:des| Int) (|$knormal:32| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (|$innerFunc:1-bcopy$unknown:5| |$V-reftype:9| |$alpha-16:des| |$alpha-14:n|) (|bcopy_aux$unknown:14| |$alpha-16:des| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|bcopy_aux$unknown:15| |$V-reftype:9| |$alpha-16:des| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$V-reftype:20| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|$innerFunc:1-bcopy$unknown:2| |$V-reftype:20| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$V-reftype:24| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (|bcopy_aux$unknown:14| |$V-reftype:24| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|$innerFunc:1-bcopy$unknown:4| |$V-reftype:24| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$knormal:32| Int) (|$alpha-14:n| Int) (|$knormal:34| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (|bcopy_aux$unknown:17| |$knormal:34| |$knormal:32| |$alpha-14:n|) (= |$V-reftype:60| |$knormal:34|) (= |$knormal:32| 0) )
      (|$innerFunc:1-bcopy$unknown:6| |$V-reftype:60| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|bcopy_aux$unknown:11| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) (= |$knormal:32| 0) )
      (|bcopy_aux$unknown:16| |$knormal:32| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|array1| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:2| |array1| |$alpha-13:n|) (|array1$unknown:8| |$V-reftype:14| |array1|) )
      (|$innerFunc:1-bcopy$unknown:3| |$V-reftype:14| |array1| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|array2| Int) (|$alpha-13:n| Int) )
    (=>
      ( and (|$innerFunc:1-bcopy$unknown:4| |array2| |$alpha-13:n|) (|array2$unknown:10| |$V-reftype:17| |array2|) )
      (|$innerFunc:1-bcopy$unknown:5| |$V-reftype:17| |array2| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-1:i| Int) )
    (=>
      ( and (|array1$unknown:7| |$alpha-1:i|) (= |$V-reftype:45| 0) )
      (|array1$unknown:8| |$V-reftype:45| |$alpha-1:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Int) (|$alpha-2:i| Int) )
    (=>
      ( and (|array2$unknown:9| |$alpha-2:i|) (= |$V-reftype:46| 0) )
      (|array2$unknown:10| |$V-reftype:46| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$knormal:12| Int) (|$V-reftype:20| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:12| |$V-reftype:20| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-11:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$V-reftype:22| Int) (|$alpha-8:src| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:12| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-11:$$tmp::1| Int) (|$knormal:21| Bool) (|$V-reftype:24| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:14| |$V-reftype:24| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|update$unknown:22| |$V-reftype:24| |$knormal:12| |$alpha-10:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-11:$$tmp::1| Int) (|$knormal:21| Bool) (|$V-reftype:44| Int) (|$knormal:18| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:14| |$knormal:18| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|update$unknown:23| |$V-reftype:44| |$knormal:18| |$knormal:12| |$alpha-10:i|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:15| |$V-reftype:44| |$knormal:18| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$alpha-9:des| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$V-reftype:26| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:15| |$V-reftype:26| |$alpha-9:des| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|update$unknown:18| |$alpha-9:des|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|update$unknown:19| |$V-reftype:26| |$alpha-9:des|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:$$tmp::1| Int) (|$V-reftype:57| Int) (|$knormal:21| Bool) (|$knormal:9| Int) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:11| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:17| |$knormal:11| |$knormal:9| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$V-reftype:57| |$knormal:11|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:17| |$V-reftype:57| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$V-reftype:34| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|update$unknown:18| |$V-reftype:34|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:14| |$V-reftype:34| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|update$unknown:20| |$alpha-10:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|update$unknown:21| |$knormal:12| |$alpha-10:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-11:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:11| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$knormal:12| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:9| (+ |$alpha-10:i| 1)) )
      (|bcopy_aux$unknown:16| |$knormal:9| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:21| Bool) (|$alpha-11:$$tmp::1| Int) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:21| (not |$knormal:3|) (= |$alpha-11:$$tmp::1| 1) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:12| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-7:m| Int) (|$alpha-10:i| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) |$knormal:3| (= |$V-reftype:51| 1) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
      (|bcopy_aux$unknown:17| |$V-reftype:51| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:21| Bool) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Bool) )
    ( and (|bcopy_aux$unknown:11| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (not |$knormal:21|) (not |$knormal:3|) (= |$knormal:19| (<= 0 |$alpha-10:i|)) (= |$knormal:20| (<= |$alpha-10:i| |$alpha-7:m|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:3| (>= |$alpha-10:i| |$alpha-7:m|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:2| Int) (|$alpha-4:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|update$unknown:19| |$knormal:2| |$alpha-6:j|) (|update$unknown:20| |$alpha-4:i|) (|update$unknown:21| |$alpha-5:x| |$alpha-4:i|) (|update$unknown:22| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|) (not |$knormal:1|) (= |$V-reftype:49| |$knormal:2|) (= |$knormal:1| (= |$alpha-6:j| |$alpha-4:i|)) )
      (|update$unknown:23| |$V-reftype:49| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-6:j| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (|update$unknown:20| |$alpha-4:i|) (|update$unknown:21| |$alpha-5:x| |$alpha-4:i|) (|update$unknown:22| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|) |$knormal:1| (= |$V-reftype:48| |$alpha-5:x|) (= |$knormal:1| (= |$alpha-6:j| |$alpha-4:i|)) )
      (|update$unknown:23| |$V-reftype:48| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) )
    (=>
      ( and (|update$unknown:20| |$alpha-4:i|) (|update$unknown:21| |$alpha-5:x| |$alpha-4:i|) (|update$unknown:22| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|) (not |$knormal:1|) (= |$knormal:1| (= |$alpha-6:j| |$alpha-4:i|)) )
      (|update$unknown:18| |$alpha-6:j|)
    )
  )
)
(check-sat)

