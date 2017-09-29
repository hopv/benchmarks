(set-info :origin "Verification conditions for the caml program
  let rec ar i = 0
  let update a i x j = if j=i then x else a j
  let rec g e a j =
   if j<e then
     (assert(0<=j && j<e);
      g e (update a j (a(j)+1)) (j+1))
   else ()
  let main n =
   g n ar 0
")

(set-logic HORN)

(declare-fun |g$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |ar$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) )
      (|g$unknown:6| |$knormal:25| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-1:i| Int) )
    (=>
      ( and (= |$V-reftype:27| 0) true )
      (|ar$unknown:2| |$V-reftype:27| |$alpha-1:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-10:n| Int) (|$knormal:25| Int) (|ar| Int) )
    (=>
      ( and (= |$knormal:25| 0) true (|ar$unknown:2| |$V-reftype:3| |ar|) )
      (|g$unknown:5| |$V-reftype:3| |ar| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:11| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|update$unknown:13| |$V-reftype:26| |$knormal:11| |$knormal:9| |$alpha-8:j|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true true )
      (|g$unknown:5| |$V-reftype:26| |$knormal:11| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:8| Int) (|$alpha-6:e| Int) (|$alpha-7:a| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) true (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$V-reftype:8| |$alpha-7:a| |$alpha-6:e|) true )
      (|update$unknown:9| |$V-reftype:8| |$alpha-7:a|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (= |$V-reftype:38| |$knormal:18|) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:7| |$knormal:18| |$knormal:16| |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:7| |$V-reftype:38| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) true (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:6| |$knormal:16| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:16| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (not (= 0 |$knormal:3|)) (not (= 0 |$knormal:21|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:21|)) (and (not (= 0 |$knormal:19|)) (not (= 0 |$knormal:20|)))) (= (not (= 0 |$knormal:20|)) (< |$alpha-8:j| |$alpha-6:e|)) (= (not (= 0 |$knormal:19|)) (<= 0 |$alpha-8:j|)) (not (not (= 0 |$knormal:21|))) (not (= 0 |$knormal:3|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (< |$alpha-8:j| |$alpha-6:e|)) (= |$V-reftype:39| 1) (not (not (= 0 |$knormal:3|))) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:7| |$V-reftype:39| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-3:i| Int) (|$alpha-4:x| Int) (|$alpha-5:j| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-5:j| |$alpha-3:i|)) (= |$V-reftype:30| |$knormal:2|) (not (not (= 0 |$knormal:1|))) (|update$unknown:9| |$knormal:2| |$alpha-5:j|) true true true )
      (|update$unknown:13| |$V-reftype:30| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-3:i| Int) (|$alpha-4:x| Int) (|$alpha-5:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-5:j| |$alpha-3:i|)) (= |$V-reftype:29| |$alpha-4:x|) (not (= 0 |$knormal:1|)) true true true )
      (|update$unknown:13| |$V-reftype:29| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-5:j| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-5:j| |$alpha-3:i|)) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

