(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let rec dotprod n v1 v2 i sum =
    if i >= n
    then sum
    else dotprod n v1 v2 (i+1) (sum + v1 i * v2 i)
  
  let main n z =
    let v1 = make_array n in
    let v2 = make_array n in
    if z=0 then (dotprod n v1 v2 z z; ()) else ()
")

(set-logic HORN)

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
  (forall ( (|$knormal:9| Int) (|$knormal:18| Int) (|$knormal:15| Int) (|$alpha-8:sum| Int) (|$knormal:5| Int) (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$knormal:7| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|) true )
      (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:7| Int) (|$alpha-7:i| Int) (|$V-reftype:5| Int) (|$alpha-5:v1| Int) (|$alpha-4:n| Int) (|$knormal:5| Int) (|$alpha-8:sum| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|) (|dotprod$unknown:2| |$alpha-5:v1| |$alpha-4:n|) true )
      (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:18| Int) (|$knormal:15| Int) (|$alpha-8:sum| Int) (|$alpha-4:n| Int) (|$knormal:5| Int) (|$alpha-7:i| Int) (|$V-reftype:7| Int) (|$knormal:7| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) true )
      (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:7| Int) (|$alpha-4:n| Int) (|$knormal:5| Int) (|$alpha-7:i| Int) (|$alpha-6:v2| Int) (|$V-reftype:9| Int) (|$alpha-8:sum| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:4| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) true )
      (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$V-reftype:36| Int) (|$knormal:18| Int) (|$alpha-8:sum| Int) (|$alpha-4:n| Int) (|$knormal:5| Int) (|$alpha-7:i| Int) (|$knormal:7| Int) (|$knormal:20| Int) (|$knormal:15| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (= |$V-reftype:36| |$knormal:20|) (not |$knormal:4|) (|dotprod$unknown:8| |$knormal:20| |$knormal:18| |$knormal:15| |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) true )
      (|dotprod$unknown:8| |$V-reftype:36| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Bool) (|$knormal:7| Int) (|$alpha-7:i| Int) (|$knormal:5| Int) (|$alpha-4:n| Int) (|$alpha-8:sum| Int) (|$knormal:15| Int) (|$knormal:18| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (* |$knormal:5| |$knormal:7|)) (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$knormal:18| (+ |$alpha-8:sum| |$knormal:9|)) (= |$knormal:15| (+ |$alpha-7:i| 1)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:5| |$knormal:7| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) true )
      (|dotprod$unknown:7| |$knormal:18| |$knormal:15| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:sum| Int) (|$alpha-7:i| Int) (|$knormal:5| Int) (|$alpha-4:n| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) true )
      (|dotprod$unknown:4| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-4:n| Int) (|$alpha-8:sum| Int) (|$alpha-7:i| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (= |$V-reftype:32| |$alpha-8:sum|) |$knormal:4| (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true true )
      (|dotprod$unknown:8| |$V-reftype:32| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-8:sum| Int) (|$alpha-7:i| Int) (|$knormal:4| Bool) )
    (=>
      ( and (= |$knormal:4| (>= |$alpha-7:i| |$alpha-4:n|)) (not |$knormal:4|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) true true )
      (|dotprod$unknown:2| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:z| Int) (|$knormal:21| Bool) (|$V-reftype:3| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (= |$knormal:21| (= |$alpha-10:z| 0)) |$knormal:21| (|dotprod$unknown:2| |$V-reftype:3| |$alpha-9:n|) )
      (|make_array$unknown:10| |$V-reftype:3| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:3| Bool) (|$knormal:21| Bool) (|$alpha-9:n| Int) (|$knormal:32| Int) (|$cond-alpha-rename:5| Bool) (|$V-reftype:25| Int) (|$alpha-10:z| Int) )
    (=>
      ( and (= |$knormal:21| (= |$alpha-10:z| 0)) (= |$cond-alpha-rename:5| (and |$cond-alpha-rename:3| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:4| (< |$knormal:32| |$alpha-9:n|)) (= |$cond-alpha-rename:3| (<= 0 |$knormal:32|)) (= |$V-reftype:25| 0) |$knormal:21| |$cond-alpha-rename:5| (|make_array$unknown:10| |$knormal:32| |$alpha-9:n|) (|dotprod$unknown:2| |$knormal:32| |$alpha-9:n|) )
      (|dotprod$unknown:3| |$V-reftype:25| |$knormal:32| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:z| Int) (|$knormal:21| Bool) (|$V-reftype:7| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (= |$knormal:21| (= |$alpha-10:z| 0)) |$knormal:21| (|dotprod$unknown:4| |$V-reftype:7| |$alpha-9:n|) )
      (|make_array$unknown:10| |$V-reftype:7| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:6| Bool) (|$knormal:21| Bool) (|$alpha-9:n| Int) (|$knormal:31| Int) (|$cond-alpha-rename:8| Bool) (|$V-reftype:25| Int) (|$alpha-10:z| Int) )
    (=>
      ( and (= |$knormal:21| (= |$alpha-10:z| 0)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (< |$knormal:31| |$alpha-9:n|)) (= |$cond-alpha-rename:6| (<= 0 |$knormal:31|)) (= |$V-reftype:25| 0) |$knormal:21| |$cond-alpha-rename:8| (|make_array$unknown:10| |$knormal:31| |$alpha-9:n|) (|dotprod$unknown:4| |$knormal:31| |$alpha-9:n|) )
      (|dotprod$unknown:5| |$V-reftype:25| |$knormal:31| |$alpha-9:n|)
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
  (forall ( (|$alpha-9:n| Int) (|$alpha-10:z| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$knormal:21| Bool) )
    (=>
      ( and (= |$knormal:21| (= |$alpha-10:z| 0)) |$knormal:21| (= |$cond-alpha-rename:1| |$alpha-10:z|) (= |$cond-alpha-rename:2| |$alpha-10:z|) )
      (|dotprod$unknown:7| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$alpha-9:n|)
    )
  )
)
(check-sat)

(get-model)
