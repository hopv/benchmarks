(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert(0<=i && i<n); 0
  let update i n des x = let _ = des i in ()
  let rec inc3 m src i =
   if i>=m
   then ()
   else
     begin
       update i m src ((src i)+1);
       inc3 m src (i+1)
     end
  let main n =
   if n>0 then inc3 n (make_array n) 0 else ()
")

(set-logic HORN)

(declare-fun |inc3$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:76| Int) (|$cond-alpha-rename:78| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:85| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (+ |$knormal:12| 1) (+ |$cond-alpha-rename:81| 1)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:76| |$alpha-9:m|)) (|inc3$unknown:4| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:85| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:83| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:81| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:78| |$cond-alpha-rename:76| |$alpha-9:m|) (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|) )
      (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:95| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (+ |$knormal:12| 1) (+ |$cond-alpha-rename:91| 1)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:86| |$alpha-9:m|)) (|inc3$unknown:4| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:95| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:93| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:91| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:88| |$cond-alpha-rename:86| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:2| |$alpha-10:src| |$alpha-9:m|) )
      (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:98| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (+ |$knormal:12| 1) (+ |$cond-alpha-rename:101| 1)) (not (>= |$cond-alpha-rename:96| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:96| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:96| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:96| |$alpha-9:m|)) (|inc3$unknown:5| |$knormal:11| (+ |$cond-alpha-rename:96| 1) |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:98| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:105| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:103| |$cond-alpha-rename:96| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:101| |$cond-alpha-rename:96| |$alpha-9:m|) )
      (|inc3$unknown:5| |$knormal:11| |$cond-alpha-rename:96| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:56| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:3| |$cond-alpha-rename:56| |$cond-alpha-rename:28| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:28| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:28| |$alpha-9:m|) (not (>= |$cond-alpha-rename:28| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:28| |$alpha-9:m|)) )
      (|inc3$unknown:2| |$cond-alpha-rename:28| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:115| Int) (|$knormal:12| Int) )
    (=>
      ( and (= (+ |$knormal:12| 1) (+ |$cond-alpha-rename:111| 1)) (not (>= |$cond-alpha-rename:106| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:106| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:106| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:106| |$alpha-9:m|)) (|inc3$unknown:4| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:115| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:113| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:111| |$cond-alpha-rename:106| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:108| |$cond-alpha-rename:106| |$alpha-9:m|) )
      (|inc3$unknown:4| (+ |$cond-alpha-rename:106| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (>= |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:5| 1 |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (not (>= |$alpha-11:i| |$alpha-9:m|)) )
      (|inc3$unknown:2| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) (<= 0 |$knormal:23|) (< |$knormal:23| |$alpha-13:n|) (> |$alpha-13:n| 0) (|inc3$unknown:2| |$knormal:23| |$alpha-13:n|) )
      (|inc3$unknown:3| 0 |$knormal:23| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (|inc3$unknown:2| |$alpha-2:i| |$alpha-1:n|) (> |$alpha-1:n| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) )
      (|inc3$unknown:4| 0 |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

