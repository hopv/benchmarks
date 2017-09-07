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

(declare-fun |update$unknown:16|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int ) Bool
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
  (forall ( (|$knormal:11| Int) (|$alpha-12:sum| Int) (|$knormal:7| Int) (|$V-reftype:3| Int) (|$alpha-8:n| Int) (|$alpha-11:i| Int) (|$knormal:9| Int) (|$knormal:6| Bool) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-8:n|) true )
      (|dotprod$unknown:2| |$V-reftype:3| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Int) (|$knormal:17| Int) (|$knormal:6| Bool) (|$knormal:9| Int) (|$alpha-11:i| Int) (|$V-reftype:5| Int) (|$alpha-9:v1| Int) (|$alpha-8:n| Int) (|$knormal:7| Int) (|$alpha-12:sum| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$V-reftype:5| |$alpha-9:v1| |$alpha-8:n|) (|dotprod$unknown:2| |$alpha-9:v1| |$alpha-8:n|) true )
      (|dotprod$unknown:3| |$V-reftype:5| |$alpha-9:v1| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:7| Int) (|$alpha-11:i| Int) (|$V-reftype:7| Int) (|$knormal:9| Int) (|$knormal:6| Bool) (|$knormal:17| Int) (|$knormal:20| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:4| |$V-reftype:7| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Int) (|$knormal:17| Int) (|$knormal:6| Bool) (|$knormal:9| Int) (|$alpha-8:n| Int) (|$knormal:7| Int) (|$alpha-11:i| Int) (|$alpha-10:v2| Int) (|$V-reftype:9| Int) (|$alpha-12:sum| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:5| |$V-reftype:9| |$alpha-10:v2| |$alpha-8:n|) (|dotprod$unknown:4| |$alpha-10:v2| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:5| |$V-reftype:9| |$alpha-10:v2| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Int) (|$V-reftype:48| Int) (|$knormal:20| Int) (|$alpha-12:sum| Int) (|$alpha-8:n| Int) (|$knormal:7| Int) (|$alpha-11:i| Int) (|$knormal:9| Int) (|$knormal:22| Int) (|$knormal:17| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (= |$V-reftype:48| |$knormal:22|) (not |$knormal:6|) (|dotprod$unknown:8| |$knormal:22| |$knormal:20| |$knormal:17| |$alpha-8:n|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:8| |$V-reftype:48| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Int) (|$knormal:17| Int) (|$knormal:6| Bool) (|$knormal:9| Int) (|$alpha-11:i| Int) (|$knormal:7| Int) (|$alpha-8:n| Int) (|$alpha-12:sum| Int) (|$knormal:11| Int) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$knormal:20| (+ |$alpha-12:sum| |$knormal:11|)) (= |$knormal:17| (+ |$alpha-11:i| 1)) (= |$knormal:11| (* |$knormal:7| |$knormal:9|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:5| |$knormal:9| |$alpha-11:i| |$alpha-8:n|) (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:7| |$knormal:20| |$knormal:17| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:sum| Int) (|$alpha-11:i| Int) (|$knormal:7| Int) (|$alpha-8:n| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true (|dotprod$unknown:3| |$knormal:7| |$alpha-11:i| |$alpha-8:n|) true )
      (|dotprod$unknown:4| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:44| Int) (|$alpha-8:n| Int) (|$alpha-12:sum| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (= |$V-reftype:44| |$alpha-12:sum|) |$knormal:6| (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true true )
      (|dotprod$unknown:8| |$V-reftype:44| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$alpha-12:sum| Int) (|$alpha-11:i| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:6| (>= |$alpha-11:i| |$alpha-8:n|)) (not |$knormal:6|) (|dotprod$unknown:7| |$alpha-12:sum| |$alpha-11:i| |$alpha-8:n|) true true )
      (|dotprod$unknown:2| |$alpha-11:i| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$V-reftype:3| Int) )
    (=>
      ( and (|dotprod$unknown:2| |$V-reftype:3| |$alpha-13:n|) )
      (|make_array$unknown:10| |$V-reftype:3| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2| Bool) (|$cond-alpha-rename:1| Bool) (|$cond-alpha-rename:3| Bool) (|$knormal:35| Int) (|$alpha-13:n| Int) (|$V-reftype:23| Int) )
    (=>
      ( and (= |$cond-alpha-rename:3| (and |$cond-alpha-rename:1| |$cond-alpha-rename:2|)) (= |$cond-alpha-rename:2| (< |$knormal:35| |$alpha-13:n|)) (= |$cond-alpha-rename:1| (<= 0 |$knormal:35|)) (= |$V-reftype:23| 0) |$cond-alpha-rename:3| (|make_array$unknown:10| |$knormal:35| |$alpha-13:n|) (|dotprod$unknown:2| |$knormal:35| |$alpha-13:n|) )
      (|dotprod$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$V-reftype:7| Int) )
    (=>
      ( and (|dotprod$unknown:4| |$V-reftype:7| |$alpha-13:n|) )
      (|make_array$unknown:10| |$V-reftype:7| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:5| Bool) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:6| Bool) (|$knormal:34| Int) (|$alpha-13:n| Int) (|$V-reftype:23| Int) )
    (=>
      ( and (= |$cond-alpha-rename:6| (and |$cond-alpha-rename:4| |$cond-alpha-rename:5|)) (= |$cond-alpha-rename:5| (< |$knormal:34| |$alpha-13:n|)) (= |$cond-alpha-rename:4| (<= 0 |$knormal:34|)) (= |$V-reftype:23| 0) |$cond-alpha-rename:6| (|make_array$unknown:10| |$knormal:34| |$alpha-13:n|) (|dotprod$unknown:4| |$knormal:34| |$alpha-13:n|) )
      (|dotprod$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) true (|make_array$unknown:10| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-7:j| Int) (|$knormal:5| Int) (|$alpha-5:i| Int) (|$alpha-6:x| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-5:i| |$alpha-7:j|)) (= |$V-reftype:42| |$knormal:5|) (not |$knormal:4|) (|update$unknown:16| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|) true true (|update$unknown:13| |$knormal:5| |$alpha-5:i|) )
      (|update$unknown:17| |$V-reftype:42| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-5:i| Int) (|$alpha-7:j| Int) (|$alpha-6:x| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-5:i| |$alpha-7:j|)) (= |$V-reftype:41| |$alpha-6:x|) |$knormal:4| (|update$unknown:16| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|) true true )
      (|update$unknown:17| |$V-reftype:41| |$alpha-7:j| |$alpha-6:x| |$alpha-5:i|)
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

