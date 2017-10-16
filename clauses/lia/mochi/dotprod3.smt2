(set-info :origin "Verification conditions for the caml program
  
  let make_array n i = assert (0 <= i && i < n); 0
  let update des i x j = if i=j then x else des i
  
  let rec dotprod n v1 v2 i sum =
    if i >= n
    then sum
    else dotprod n v1 v2 (i+1) (sum + v1 i * v2 i)
  
  let main n =
    let v1 = make_array n in
    let v2 = make_array n in
    dotprod n v1 v2 0 0; ()
")

(set-logic HORN)

(declare-fun |update$unknown:17|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:8|
  ( Int Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-8:n|) true )
      (|dotprod$unknown:2| |$V-reftype:3| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$alpha-9:v1| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$V-reftype:5| |$alpha-9:v1| |$alpha-8:n|) (|dotprod$unknown:2| |$alpha-9:v1| |$alpha-8:n|) true )
      (|dotprod$unknown:3| |$V-reftype:5| |$alpha-9:v1| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:4| |$V-reftype:7| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-10:v2| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:5| |$V-reftype:9| |$alpha-10:v2| |$alpha-8:n|) (|dotprod$unknown:4| |$alpha-10:v2| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:5| |$V-reftype:9| |$alpha-10:v2| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:22| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (= |$V-reftype:48| |$knormal:22|) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:8| |$knormal:22| |$knormal:20| |$knormal:17| |$alpha-8:n|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:8| |$V-reftype:48| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:11| Int) (|$knormal:17| Int) (|$knormal:20| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:7| |$knormal:20| |$knormal:17| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:4| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (= |$V-reftype:44| |$alpha-12:sum|) (not (= 0 |$knormal:6|)) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true true )
      (|dotprod$unknown:8| |$V-reftype:44| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (>= |$alpha-11:i| |$alpha-8:n|)) (not (not (= 0 |$knormal:6|))) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true true )
      (|dotprod$unknown:2| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-13:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|make_array$unknown:10| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-13:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) (|$knormal:35| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) (|make_array$unknown:11| |$V-reftype:23| |$knormal:35| |$alpha-13:n|) (|dotprod$unknown:2| |$knormal:35| |$alpha-13:n|) )
      (|dotprod$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-13:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-13:n|) )
      (|make_array$unknown:10| |$V-reftype:7| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:23| Int) (|$alpha-13:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) (|make_array$unknown:11| |$V-reftype:23| |$knormal:34| |$alpha-13:n|) (|dotprod$unknown:4| |$knormal:34| |$alpha-13:n|) )
      (|dotprod$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$alpha-3:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (= |$alpha-3:$$tmp::1| 1) (= |$V-reftype:39| 0) (not (= 0 |$knormal:3|)) true (|make_array$unknown:10| |$alpha-2:i| |$alpha-1:n|) )
      (|make_array$unknown:11| |$V-reftype:39| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-2:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-2:i|)) (not (not (= 0 |$knormal:3|))) true (|make_array$unknown:10| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$alpha-7:j| Int) (|$knormal:4| Int) (|$knormal:5| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-5:i| |$alpha-7:j|)) (= |$V-reftype:42| |$knormal:5|) (not (not (= 0 |$knormal:4|))) true true true (|update$unknown:13| |$knormal:5| |$alpha-5:i|) )
      (|update$unknown:17| |$V-reftype:42| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$alpha-7:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-5:i| |$alpha-7:j|)) (= |$V-reftype:41| |$alpha-6:x|) (not (= 0 |$knormal:4|)) true true true )
      (|update$unknown:17| |$V-reftype:41| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-7:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-5:i| |$alpha-7:j|)) (not (not (= 0 |$knormal:4|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:28| Int) (|$knormal:31| Int) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:28| 0) )
      (|dotprod$unknown:7| |$knormal:31| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

