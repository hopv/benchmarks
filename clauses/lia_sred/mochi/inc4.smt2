(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert(0<=i && i<n); 0
  let update i n des x = des i; let a j = if i=j then x else des i in a
  let rec inc3 m a i =
   if i>=m
   then ()
   else
     let a = update i m a ((a i)+1) in
       inc3 m a (i+1)
  let main n i =
    if i=0 && n>0 then inc3 n (make_array n) i else ()
")

(set-logic HORN)

(declare-fun |inc3$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |inc3$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:93| Int) (|$knormal:42| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:10| |$cond-alpha-rename:24| |$alpha-16:n|) (|inc3$unknown:11| |$alpha-19:$$tmp::2| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:116| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:119| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:23| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:26| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:47| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:50| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:53| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:56| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:89| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:91| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:93| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:11| |$knormal:42| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:12| |$cond-alpha-rename:21| |$alpha-16:n|) (|inc3$unknown:12| |$cond-alpha-rename:21| |$alpha-16:n|) (|update$unknown:19| |$cond-alpha-rename:21| |$alpha-16:n| |$cond-alpha-rename:21|) (|update$unknown:19| |$cond-alpha-rename:21| |$alpha-16:n| |$cond-alpha-rename:21|) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (= |$cond-alpha-rename:21| |$cond-alpha-rename:24|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:21| |$alpha-16:n|)) (not (= |$cond-alpha-rename:21| |$alpha-20:j|)) (= (+ |$cond-alpha-rename:116| 1) (+ |$cond-alpha-rename:89| 1)) (= (+ |$cond-alpha-rename:119| 1) (+ |$cond-alpha-rename:93| 1)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:42| |$alpha-20:j| |$alpha-19:$$tmp::2| (+ |$cond-alpha-rename:116| 1) |$alpha-16:n| |$cond-alpha-rename:21|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:i| Int) (|$alpha-16:n| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:95| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:11| |$alpha-19:$$tmp::2| |$alpha-15:i| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:122| |$alpha-15:i| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:59| |$alpha-15:i| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:95| |$alpha-15:i| |$alpha-16:n|) (|inc3$unknown:12| |$alpha-15:i| |$alpha-16:n|) (|update$unknown:19| |$alpha-15:i| |$alpha-16:n| |$alpha-15:i|) (= |$alpha-15:i| |$alpha-20:j|) (not (>= |$alpha-15:i| |$alpha-16:n|)) (not (>= |$alpha-15:i| |$alpha-16:n|)) (not (>= |$alpha-15:i| |$alpha-16:n|)) (= (+ |$cond-alpha-rename:122| 1) (+ |$cond-alpha-rename:95| 1)) )
      (|$innerFunc:1-a$unknown:8| (+ |$cond-alpha-rename:122| 1) |$alpha-20:j| |$alpha-19:$$tmp::2| (+ |$cond-alpha-rename:122| 1) |$alpha-16:n| |$alpha-15:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:99| Int) (|$knormal:13| Int) )
    (=>
      ( and (|inc3$unknown:10| |$cond-alpha-rename:8| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:125| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:62| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:65| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:7| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:97| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:99| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$knormal:13| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:12| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:12| |$cond-alpha-rename:5| |$alpha-5:n|) (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|) (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (= |$cond-alpha-rename:5| |$cond-alpha-rename:8|)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (= (+ |$cond-alpha-rename:125| 1) (+ |$cond-alpha-rename:99| 1)) )
      (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:149| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:47| |$knormal:30| |$cond-alpha-rename:149| (+ |$cond-alpha-rename:142| 1) |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:10| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:142| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:145| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:147| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:149| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:19| |$alpha-11:i| |$alpha-9:m| |$alpha-11:i|) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (= (+ |$cond-alpha-rename:142| 1) (+ |$cond-alpha-rename:145| 1)) (= (+ |$cond-alpha-rename:142| 1) (+ |$knormal:21| 1)) )
      (|inc3$unknown:11| |$V-reftype:47| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) (|$cond-alpha-rename:39| Int) (|$knormal:34| Int) )
    (=>
      ( and (|inc3$unknown:10| |$knormal:34| |$alpha-13:n|) (> |$alpha-13:n| 0) (= |$cond-alpha-rename:39| 0) (< |$knormal:34| |$alpha-13:n|) (<= 0 |$knormal:34|) (> |$alpha-13:n| 0) (= |$alpha-14:i| 0) )
      (|inc3$unknown:11| 0 |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:20| Int) (|$knormal:21| Int) )
    (=>
      ( and (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:13| |$knormal:20| (+ |$alpha-11:i| 1) |$alpha-9:m|) (not (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:13| |$knormal:20| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|update$unknown:19| |$V-reftype:39| |$alpha-9:m| |$alpha-11:i|) (not (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:10| |$V-reftype:39| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (not (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:12| (+ |$alpha-11:i| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (>= |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| 1 |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (not (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:31| Int) )
    ( and (|inc3$unknown:10| |$alpha-2:i| |$alpha-1:n|) (> |$alpha-1:n| 0) (= |$cond-alpha-rename:31| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:103| Int) )
    (=>
      ( and (|inc3$unknown:11| |$cond-alpha-rename:103| |$alpha-4:i| |$alpha-5:n|) (|inc3$unknown:12| |$alpha-4:i| |$alpha-5:n|) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$alpha-14:i| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) (= |$alpha-14:i| 0) )
      (|inc3$unknown:12| |$alpha-14:i| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

