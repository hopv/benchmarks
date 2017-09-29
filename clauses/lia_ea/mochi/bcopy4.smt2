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

(declare-fun |update$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:23|
  ( Int Int Int Int ) Bool
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

(declare-fun |$innerFunc:1-bcopy$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-bcopy$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      true
      (|$innerFunc:1-bcopy$unknown:1| |$alpha-13:n|)
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
  (forall ( (unused Int) )
    (=>
      ( and true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-14:n| Int) (|$alpha-15:src| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true (|$innerFunc:1-bcopy$unknown:3| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|) (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      (|bcopy_aux$unknown:13| |$V-reftype:5| |$alpha-15:src| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-14:n| Int) (|$alpha-16:des| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true (|$innerFunc:1-bcopy$unknown:5| |$V-reftype:9| |$alpha-16:des| |$alpha-14:n|) (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      (|bcopy_aux$unknown:15| |$V-reftype:9| |$alpha-16:des| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) true (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-14:n| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:32| 0) (= |$V-reftype:60| |$knormal:34|) (|bcopy_aux$unknown:17| |$knormal:34| |$knormal:32| |$alpha-14:n|) (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      (|$innerFunc:1-bcopy$unknown:6| |$V-reftype:60| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:n| Int) (|$knormal:32| Int) )
    (=>
      ( and (= |$knormal:32| 0) (|$innerFunc:1-bcopy$unknown:1| |$alpha-14:n|) )
      (|bcopy_aux$unknown:16| |$knormal:32| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$alpha-13:n| Int) (|array1| Int) )
    (=>
      ( and (|array1$unknown:8| |$V-reftype:14| |array1|) true )
      (|$innerFunc:1-bcopy$unknown:3| |$V-reftype:14| |array1| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-13:n| Int) (|array2| Int) )
    (=>
      ( and (|array2$unknown:10| |$V-reftype:17| |array2|) true )
      (|$innerFunc:1-bcopy$unknown:5| |$V-reftype:17| |array2| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-1:i| Int) )
    (=>
      ( and (= |$V-reftype:45| 0) true )
      (|array1$unknown:8| |$V-reftype:45| |$alpha-1:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Int) (|$alpha-2:i| Int) )
    (=>
      ( and (= |$V-reftype:46| 0) true )
      (|array2$unknown:10| |$V-reftype:46| |$alpha-2:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$alpha-8:src| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|) true true )
      (|bcopy_aux$unknown:13| |$V-reftype:22| |$alpha-8:src| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|update$unknown:23| |$V-reftype:44| |$knormal:18| |$knormal:12| |$alpha-10:i|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:15| |$V-reftype:44| |$knormal:18| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$alpha-9:des| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) true (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:15| |$V-reftype:26| |$alpha-9:des| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|update$unknown:19| |$V-reftype:26| |$alpha-9:des|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:11| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (= |$V-reftype:57| |$knormal:11|) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:17| |$knormal:11| |$knormal:9| |$alpha-7:m|) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:57| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) true (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:12| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-10:i| 1)) (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) (|bcopy_aux$unknown:13| |$knormal:12| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:16| |$knormal:9| |$alpha-7:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-11:$$tmp::1| Int) (|$alpha-7:m| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (= |$alpha-11:$$tmp::1| 1) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:21|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= |$V-reftype:51| 1) (not (= 0 |$knormal:3|)) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
      (|bcopy_aux$unknown:17| |$V-reftype:51| |$alpha-10:i| |$alpha-7:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:i| Int) (|$alpha-7:m| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (>= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (<= |$alpha-10:i| |$alpha-7:m|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-10:i|)) (not (not (= 0 |$knormal:3|))) (not (not (= 0 |$knormal:21|))) (|bcopy_aux$unknown:16| |$alpha-10:i| |$alpha-7:m|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-6:j| |$alpha-4:i|)) (= |$V-reftype:49| |$knormal:2|) (not (not (= 0 |$knormal:1|))) true true true (|update$unknown:19| |$knormal:2| |$alpha-6:j|) )
      (|update$unknown:23| |$V-reftype:49| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$alpha-6:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-6:j| |$alpha-4:i|)) (= |$V-reftype:48| |$alpha-5:x|) (not (= 0 |$knormal:1|)) true true true )
      (|update$unknown:23| |$V-reftype:48| |$alpha-6:j| |$alpha-5:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-6:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-6:j| |$alpha-4:i|)) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

