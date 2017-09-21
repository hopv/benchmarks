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
  (forall ( (|$alpha-16:n| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:174| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:39| Int) (|$knormal:42| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:10| |$cond-alpha-rename:37| |$alpha-16:n|) (|inc3$unknown:11| |$alpha-19:$$tmp::2| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:116| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:119| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:122| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:125| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:172| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:174| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:176| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:214| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:217| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:36| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:39| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:11| |$knormal:42| |$cond-alpha-rename:34| |$alpha-16:n|) (|inc3$unknown:12| |$cond-alpha-rename:34| |$alpha-16:n|) (|update$unknown:19| |$cond-alpha-rename:34| |$alpha-16:n| |$cond-alpha-rename:34|) (not (>= |$cond-alpha-rename:34| |$alpha-16:n|)) (not (>= |$cond-alpha-rename:34| |$alpha-16:n|)) (not (= |$cond-alpha-rename:34| |$alpha-20:j|)) (not (= |$cond-alpha-rename:34| |$cond-alpha-rename:37|)) (not (>= |$cond-alpha-rename:34| |$alpha-16:n|)) (= (+ |$cond-alpha-rename:172| 1) (+ |$cond-alpha-rename:214| 1)) (= (+ |$cond-alpha-rename:176| 1) (+ |$cond-alpha-rename:217| 1)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:42| |$alpha-20:j| |$alpha-19:$$tmp::2| (+ |$cond-alpha-rename:176| 1) |$alpha-16:n| |$cond-alpha-rename:34|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-19:$$tmp::2| Int) (|$alpha-20:j| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:220| Int) )
    (=>
      ( and (|inc3$unknown:10| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:11| |$alpha-19:$$tmp::2| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:128| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:178| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:11| |$cond-alpha-rename:220| |$alpha-20:j| |$alpha-16:n|) (|inc3$unknown:12| |$alpha-20:j| |$alpha-16:n|) (|update$unknown:19| |$alpha-20:j| |$alpha-16:n| |$alpha-20:j|) (not (>= |$alpha-20:j| |$alpha-16:n|)) (not (>= |$alpha-20:j| |$alpha-16:n|)) (= (+ |$cond-alpha-rename:178| 1) (+ |$cond-alpha-rename:220| 1)) )
      (|$innerFunc:1-a$unknown:8| (+ |$cond-alpha-rename:178| 1) |$alpha-20:j| |$alpha-19:$$tmp::2| (+ |$cond-alpha-rename:178| 1) |$alpha-16:n| |$alpha-20:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) (|$knormal:13| Int) )
    (=>
      ( and (|inc3$unknown:10| |$cond-alpha-rename:8| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:131| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:134| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:180| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:182| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:223| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:7| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$knormal:13| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:12| |$cond-alpha-rename:5| |$alpha-5:n|) (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (= |$cond-alpha-rename:5| |$cond-alpha-rename:8|)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (= (+ |$cond-alpha-rename:180| 1) (+ |$cond-alpha-rename:223| 1)) )
      (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:254| Int) (|$cond-alpha-rename:257| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:261| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:260| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:257| 1)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (not (>= |$alpha-11:i| |$alpha-9:m|)) (|update$unknown:19| |$alpha-11:i| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:261| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:260| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:257| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:254| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:10| |$knormal:30| |$alpha-9:m|) (|$innerFunc:1-a$unknown:8| |$V-reftype:47| |$knormal:30| |$cond-alpha-rename:261| (+ |$knormal:21| 1) |$alpha-9:m| |$alpha-11:i|) )
      (|inc3$unknown:11| |$V-reftype:47| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:34| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) (> |$alpha-13:n| 0) (<= 0 |$knormal:34|) (< |$knormal:34| |$alpha-13:n|) (|inc3$unknown:10| |$knormal:34| |$alpha-13:n|) )
      (|inc3$unknown:11| 0 |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:20| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|inc3$unknown:13| |$knormal:20| (+ |$alpha-11:i| 1) |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$knormal:20| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|update$unknown:19| |$V-reftype:39| |$alpha-9:m| |$alpha-11:i|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$V-reftype:39| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:12| (+ |$alpha-11:i| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (>= |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| 1 |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:10| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (|inc3$unknown:10| |$alpha-2:i| |$alpha-1:n|) (> |$alpha-1:n| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:186| Int) )
    (=>
      ( and (not (>= |$alpha-4:i| |$alpha-5:n|)) (|inc3$unknown:12| |$alpha-4:i| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:186| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) )
      (|inc3$unknown:12| 0 |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

