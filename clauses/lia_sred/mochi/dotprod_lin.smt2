(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let rec dotprod n v1 v2 i sum =
   if i >= n
   then sum
   else (dotprod n v1 v2 (i+1) (sum + v1 i + v2 i);
             dotprod n v1 v2 (i+1) (sum + v1 i + v2 i))
  
  let main n m z =
  let v1 = make_array n in
  let v2 = make_array n in
   if z=0 then (dotprod n v1 v2 z z; ()) else ()
")

(set-logic HORN)

(declare-fun |make_array$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |dotprod$unknown:8|
  ( Int Int Int Int ) Bool
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
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|) )
      (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|) )
      (|dotprod$unknown:2| |$V-reftype:3| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:n| Int) (|$alpha-5:v1| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|) (|dotprod$unknown:2| |$alpha-5:v1| |$alpha-4:n|) )
      (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:n| Int) (|$alpha-5:v1| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|) (|dotprod$unknown:2| |$alpha-5:v1| |$alpha-4:n|) )
      (|dotprod$unknown:3| |$V-reftype:5| |$alpha-5:v1| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-4:n| Int) (|$alpha-6:v2| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:4| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:8| |$knormal:20| (+ (+ |$alpha-8:sum| |$knormal:5|) |$knormal:8|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:8| |$knormal:20| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:8| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:7| (+ (+ |$alpha-8:sum| |$knormal:5|) |$knormal:8|) (+ |$alpha-7:i| 1) |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) (|$knormal:5| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:5| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:4| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:4| |$V-reftype:7| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-4:n| Int) (|$alpha-6:v2| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:4| |$alpha-6:v2| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:5| |$V-reftype:9| |$alpha-6:v2| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) (|$knormal:36| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:8| |$knormal:36| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:2| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) (|$knormal:24| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:5| |$knormal:24| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:7| (+ (+ |$alpha-8:sum| |$knormal:21|) |$knormal:24|) (+ |$alpha-7:i| 1) |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:3| |$knormal:21| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:4| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) )
    (=>
      ( and (>= |$alpha-7:i| |$alpha-4:n|) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:8| |$alpha-8:sum| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:n| Int) (|$alpha-7:i| Int) (|$alpha-8:sum| Int) )
    (=>
      ( and (not (>= |$alpha-7:i| |$alpha-4:n|)) (|dotprod$unknown:7| |$alpha-8:sum| |$alpha-7:i| |$alpha-4:n|) )
      (|dotprod$unknown:2| |$alpha-7:i| |$alpha-4:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-10:n| Int) )
    (=>
      ( and (|dotprod$unknown:2| |$V-reftype:3| |$alpha-10:n|) )
      (|make_array$unknown:10| |$V-reftype:3| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$knormal:48| Int) )
    (=>
      ( and (<= 0 |$knormal:48|) (< |$knormal:48| |$alpha-10:n|) (|make_array$unknown:10| |$knormal:48| |$alpha-10:n|) (|dotprod$unknown:2| |$knormal:48| |$alpha-10:n|) )
      (|dotprod$unknown:3| 0 |$knormal:48| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-10:n| Int) )
    (=>
      ( and (|dotprod$unknown:4| |$V-reftype:7| |$alpha-10:n|) )
      (|make_array$unknown:10| |$V-reftype:7| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$knormal:47| Int) )
    (=>
      ( and (<= 0 |$knormal:47|) (< |$knormal:47| |$alpha-10:n|) (|make_array$unknown:10| |$knormal:47| |$alpha-10:n|) (|dotprod$unknown:4| |$knormal:47| |$alpha-10:n|) )
      (|dotprod$unknown:5| 0 |$knormal:47| |$alpha-10:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (|make_array$unknown:10| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) )
    (=>
      ( and true )
      (|dotprod$unknown:7| 0 0 |$alpha-10:n|)
    )
  )
)
(check-sat)

(get-model)

