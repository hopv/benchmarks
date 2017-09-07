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

(declare-fun |update$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
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
  (forall ( (|$cond-alpha-rename:3| Int) (|$alpha-10:n| Int) (|ar| Int) (|$V-reftype:3| Int) )
    (=>
      ( and (= |$V-reftype:3| 0) (|g$unknown:4| |ar| |$cond-alpha-rename:3|) (|g$unknown:4| |ar| |$alpha-10:n|) )
      (|g$unknown:5| |$V-reftype:3| |ar| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:4| Int) (|$knormal:11| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$V-reftype:26| Int) (|$knormal:9| Int) (|$knormal:21| Bool) (|$knormal:16| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) |$knormal:3| |$knormal:21| (|update$unknown:13| |$V-reftype:26| |$knormal:11| |$knormal:9| |$alpha-8:j|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:4| |$knormal:11| |$alpha-6:e|) true )
      (|g$unknown:5| |$V-reftype:26| |$knormal:11| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:3| Bool) (|$knormal:18| Int) (|$alpha-8:j| Int) (|$knormal:4| Int) (|$alpha-6:e| Int) (|$knormal:16| Int) (|$knormal:21| Bool) (|$V-reftype:38| Int) (|$knormal:19| Bool) (|$knormal:20| Bool) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$V-reftype:38| |$knormal:18|) |$knormal:3| |$knormal:21| (|g$unknown:7| |$knormal:18| |$knormal:16| |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:7| |$V-reftype:38| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:46| Bool) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:43| Int) (|$knormal:3| Bool) (|$cond-alpha-rename:49| Bool) (|$alpha-6:e| Int) (|$knormal:4| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:44| Int) (|$V-reftype:16| Int) (|$cond-alpha-rename:50| Int) (|$alpha-8:j| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:21| Bool) (|$cond-alpha-rename:51| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) (= |$cond-alpha-rename:51| (= |$V-reftype:16| |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:49| (< |$cond-alpha-rename:42| |$cond-alpha-rename:44|)) (= |$cond-alpha-rename:48| (and |$cond-alpha-rename:46| |$cond-alpha-rename:47|)) (= |$cond-alpha-rename:47| (< |$cond-alpha-rename:42| |$cond-alpha-rename:44|)) (= |$cond-alpha-rename:46| (<= 0 |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:45| (+ |$cond-alpha-rename:42| 1)) (= |$cond-alpha-rename:43| (+ |$cond-alpha-rename:50| 1)) (not |$cond-alpha-rename:51|) |$knormal:3| |$knormal:21| |$cond-alpha-rename:49| |$cond-alpha-rename:48| (|g$unknown:6| |$cond-alpha-rename:42| |$cond-alpha-rename:44|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$cond-alpha-rename:50| |$cond-alpha-rename:42| |$cond-alpha-rename:44|) (|g$unknown:4| |$V-reftype:16| |$cond-alpha-rename:44|) )
      (|g$unknown:4| |$V-reftype:16| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:21| Bool) (|$alpha-8:j| Int) (|$knormal:4| Int) (|$alpha-6:e| Int) (|$knormal:3| Bool) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$knormal:4| 1)) (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:6| |$knormal:16| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:16| Int) (|$knormal:21| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (= |$knormal:16| (+ |$alpha-8:j| 1)) |$knormal:3| |$knormal:21| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:4| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:20| Bool) (|$knormal:19| Bool) (|$knormal:3| Bool) (|$alpha-8:j| Int) (|$alpha-6:e| Int) (|$knormal:21| Bool) )
    ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:21| (and |$knormal:19| |$knormal:20|)) (= |$knormal:20| (< |$alpha-8:j| |$alpha-6:e|)) (= |$knormal:19| (<= 0 |$alpha-8:j|)) (not |$knormal:21|) |$knormal:3| (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:3| Bool) )
    (=>
      ( and (= |$knormal:3| (< |$alpha-8:j| |$alpha-6:e|)) (= |$V-reftype:39| 1) (not |$knormal:3|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) true )
      (|g$unknown:7| |$V-reftype:39| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:69| Bool) (|$cond-alpha-rename:68| Bool) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:6| Bool) (|$cond-alpha-rename:5| Int) (|$alpha-4:x| Int) (|$V-reftype:30| Int) (|$cond-alpha-rename:73| Bool) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:77| Bool) (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:10| Int) (|$alpha-5:j| Int) (|$cond-alpha-rename:4| Int) (|$cond-alpha-rename:66| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:63| Int) (|$knormal:2| Int) (|$cond-alpha-rename:71| Bool) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:9| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Bool) (|$cond-alpha-rename:76| Bool) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-5:j| |$alpha-3:i|)) (= |$cond-alpha-rename:9| (< |$alpha-3:i| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:80| (+ |$cond-alpha-rename:79| 1)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:78| (< |$cond-alpha-rename:63| |$cond-alpha-rename:62|)) (= |$cond-alpha-rename:77| (and |$cond-alpha-rename:75| |$cond-alpha-rename:76|)) (= |$cond-alpha-rename:76| (< |$cond-alpha-rename:63| |$cond-alpha-rename:62|)) (= |$cond-alpha-rename:75| (<= 0 |$cond-alpha-rename:63|)) (= |$cond-alpha-rename:74| (+ |$cond-alpha-rename:63| 1)) (= |$cond-alpha-rename:73| (= |$alpha-5:j| |$cond-alpha-rename:64|)) (= |$cond-alpha-rename:71| (< |$cond-alpha-rename:64| |$cond-alpha-rename:66|)) (= |$cond-alpha-rename:70| (and |$cond-alpha-rename:68| |$cond-alpha-rename:69|)) (= |$cond-alpha-rename:7| (< |$alpha-3:i| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:69| (< |$cond-alpha-rename:64| |$cond-alpha-rename:66|)) (= |$cond-alpha-rename:68| (<= 0 |$cond-alpha-rename:64|)) (= |$cond-alpha-rename:67| (+ |$cond-alpha-rename:64| 1)) (= |$cond-alpha-rename:65| (+ |$cond-alpha-rename:72| 1)) (= |$cond-alpha-rename:6| (<= 0 |$alpha-3:i|)) (= |$cond-alpha-rename:5| (+ |$alpha-3:i| 1)) (= |$alpha-4:x| (+ |$cond-alpha-rename:10| 1)) (= |$V-reftype:30| |$knormal:2|) (not |$knormal:1|) (not |$cond-alpha-rename:73|) |$cond-alpha-rename:9| |$cond-alpha-rename:8| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$cond-alpha-rename:71| |$cond-alpha-rename:70| (|g$unknown:6| |$cond-alpha-rename:64| |$cond-alpha-rename:66|) (|g$unknown:6| |$cond-alpha-rename:63| |$cond-alpha-rename:62|) (|g$unknown:6| |$alpha-3:i| |$cond-alpha-rename:4|) (|g$unknown:5| |$knormal:2| |$alpha-5:j| |$cond-alpha-rename:62|) (|g$unknown:5| |$cond-alpha-rename:79| |$cond-alpha-rename:63| |$cond-alpha-rename:62|) (|g$unknown:5| |$cond-alpha-rename:72| |$cond-alpha-rename:64| |$cond-alpha-rename:66|) (|g$unknown:5| |$cond-alpha-rename:10| |$alpha-3:i| |$cond-alpha-rename:4|) (|g$unknown:4| |$alpha-5:j| |$cond-alpha-rename:66|) (|g$unknown:4| |$alpha-5:j| |$cond-alpha-rename:4|) )
      (|update$unknown:13| |$V-reftype:30| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:1| Bool) (|$cond-alpha-rename:15| Bool) (|$alpha-3:i| Int) (|$cond-alpha-rename:11| Int) (|$alpha-5:j| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:16| Bool) (|$V-reftype:29| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:13| Bool) (|$cond-alpha-rename:14| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-5:j| |$alpha-3:i|)) (= |$cond-alpha-rename:16| (< |$alpha-3:i| |$cond-alpha-rename:11|)) (= |$cond-alpha-rename:15| (and |$cond-alpha-rename:13| |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:14| (< |$alpha-3:i| |$cond-alpha-rename:11|)) (= |$cond-alpha-rename:13| (<= 0 |$alpha-3:i|)) (= |$cond-alpha-rename:12| (+ |$alpha-3:i| 1)) (= |$alpha-4:x| (+ |$cond-alpha-rename:17| 1)) (= |$V-reftype:29| |$alpha-4:x|) |$knormal:1| |$cond-alpha-rename:16| |$cond-alpha-rename:15| (|g$unknown:6| |$alpha-3:i| |$cond-alpha-rename:11|) (|g$unknown:5| |$cond-alpha-rename:17| |$alpha-3:i| |$cond-alpha-rename:11|) (|g$unknown:4| |$alpha-5:j| |$cond-alpha-rename:11|) )
      (|update$unknown:13| |$V-reftype:29| |$alpha-5:j| |$alpha-4:x| |$alpha-3:i|)
    )
  )
)
(check-sat)

(get-model)

