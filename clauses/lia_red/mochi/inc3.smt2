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

(declare-fun |inc3$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:4|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:49| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:42| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:45| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:47| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:49| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:40| |$alpha-9:m|) (not (>= |$cond-alpha-rename:40| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:40| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:40| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:40| |$alpha-9:m|)) (= (+ |$cond-alpha-rename:45| 1) (+ |$knormal:12| 1)) )
      (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:59| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:2| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:52| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:55| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:57| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:59| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:50| |$alpha-9:m|) (not (>= |$cond-alpha-rename:50| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:50| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:50| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:50| |$alpha-9:m|)) (= (+ |$cond-alpha-rename:55| 1) (+ |$knormal:12| 1)) )
      (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:69| Int) (|$knormal:11| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:3| |$cond-alpha-rename:62| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:65| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:67| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:69| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:5| |$knormal:11| (+ |$cond-alpha-rename:60| 1) |$alpha-9:m|) (not (>= |$cond-alpha-rename:60| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:60| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:60| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:60| |$alpha-9:m|)) (= (+ |$cond-alpha-rename:65| 1) (+ |$knormal:12| 1)) )
      (|inc3$unknown:5| |$knormal:11| |$cond-alpha-rename:60| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:26| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:3| |$cond-alpha-rename:26| |$cond-alpha-rename:12| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:12| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:12| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:12| |$alpha-9:m|) (not (>= |$cond-alpha-rename:12| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:12| |$alpha-9:m|)) )
      (|inc3$unknown:2| |$cond-alpha-rename:12| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:79| Int) (|$knormal:12| Int) )
    (=>
      ( and (|inc3$unknown:3| |$cond-alpha-rename:72| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:75| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:77| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:79| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:70| |$alpha-9:m|) (not (>= |$cond-alpha-rename:70| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:70| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:70| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:70| |$alpha-9:m|)) (= (+ |$cond-alpha-rename:75| 1) (+ |$knormal:12| 1)) )
      (|inc3$unknown:4| (+ |$cond-alpha-rename:70| 1) |$alpha-9:m|)
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
      ( and (|inc3$unknown:2| |$knormal:23| |$alpha-13:n|) (> |$alpha-13:n| 0) (< |$knormal:23| |$alpha-13:n|) (<= 0 |$knormal:23|) (> |$alpha-13:n| 0) )
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

