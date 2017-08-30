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

(declare-fun |update$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:10|
  ( Int ) Bool
)

(declare-fun |g$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:8|
  ( Int ) Bool
)

(declare-fun |update$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:12|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |ar$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |ar$unknown:1|
  ( Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:3|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-10:n| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) )
      (|g$unknown:3| |$alpha-10:n|)
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
      ( and (= |$V-reftype:27| 0) (|ar$unknown:1| |$alpha-1:i|) )
      (|ar$unknown:2| |$V-reftype:27| |$alpha-1:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|ar| Int) (|$V-reftype:3| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) (|g$unknown:4| |ar| |$alpha-10:n|) (|ar$unknown:2| |$V-reftype:3| |ar|) )
      (|g$unknown:5| |$V-reftype:3| |ar| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$V-reftype:6| Int) (|$knormal:4| Int) (|$knormal:3| Bool) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:4| |$V-reftype:6| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|update$unknown:12| |$V-reftype:6| |$knormal:9| |$alpha-8:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:$$tmp::1| Int) (|$knormal:21| Bool) (|$knormal:9| Int) (|$V-reftype:26| Int) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:11| Int) (|$knormal:4| Int) (|$knormal:3| Bool) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|update$unknown:13| |$V-reftype:26| |$knormal:11| |$knormal:9| |$alpha-8:j|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:4| |$knormal:11| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:5| |$V-reftype:26| |$knormal:11| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:3| Bool) (|$alpha-8:j| Int) (|$V-reftype:8| Int) (|$alpha-6:e| Int) (|$alpha-7:a| Int) (|$knormal:4| Int) (|$knormal:21| Bool) (|$alpha-9:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|update$unknown:8| |$alpha-7:a|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$V-reftype:8| |$alpha-7:a| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|update$unknown:9| |$V-reftype:8| |$alpha-7:a|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-9:$$tmp::1| Int) (|$V-reftype:38| Int) (|$knormal:21| Bool) (|$knormal:16| Int) (|$knormal:4| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:18| Int) (|$knormal:3| Bool) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) (= |$V-reftype:38| |$knormal:18|) |$knormal:3| |$knormal:21| (|g$unknown:7| |$knormal:18| |$knormal:16| |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:7| |$V-reftype:38| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:3| Bool) (|$V-reftype:16| Int) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:4| Int) (|$knormal:21| Bool) (|$alpha-9:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|update$unknown:8| |$V-reftype:16|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:4| |$V-reftype:16| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:4| Int) (|$knormal:3| Bool) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:3| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:3| Bool) (|$knormal:4| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:21| Bool) (|$alpha-9:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:6| |$knormal:16| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-9:$$tmp::1| Int) (|$knormal:21| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:4| Int) (|$knormal:3| Bool) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|update$unknown:10| |$alpha-8:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:3| Bool) (|$knormal:4| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:21| Bool) (|$alpha-9:$$tmp::1| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|update$unknown:11| |$knormal:9| |$alpha-8:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:3| Bool) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:21| Bool) (|$alpha-9:$$tmp::1| Int) )
    (=>
      ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$alpha-9:$$tmp::1| 1) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:4| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:21| Bool) )
    ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (not |$knormal:21|) |$knormal:3| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$V-reftype:39| 1) (not |$knormal:3|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:3| |$alpha-6:e|) )
      (|g$unknown:7| |$V-reftype:39| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|$V-reftype:6| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| 0) (|g$unknown:4| |$V-reftype:6| |$alpha-10:n|) )
      (|ar$unknown:1| |$V-reftype:6|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-5:j| Int) (|$alpha-4:x| Int) (|$alpha-3:i| Int) (|$knormal:2| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-5:j| |$alpha-3:i|)) (= |$V-reftype:30| |$knormal:2|) (not |$knormal:1|) (|update$unknown:9| |$knormal:2| |$alpha-5:j|) (|update$unknown:12| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:11| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:13| |$V-reftype:30| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-5:j| Int) (|$alpha-4:x| Int) (|$alpha-3:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-5:j| |$alpha-3:i|)) (= |$V-reftype:29| |$alpha-4:x|) |$knormal:1| (|update$unknown:12| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:11| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:13| |$V-reftype:29| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-3:i| Int) (|$alpha-4:x| Int) (|$alpha-5:j| Int) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-5:j| |$alpha-3:i|)) (not |$knormal:1|) (|update$unknown:12| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:11| |$alpha-4:x| |$alpha-3:i|) (|update$unknown:10| |$alpha-3:i|) )
      (|update$unknown:8| |$alpha-5:j|)
    )
  )
)
(check-sat)

(get-model)

