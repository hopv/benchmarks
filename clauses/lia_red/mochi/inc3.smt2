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
  (forall ( (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:48| Bool) (|$cond-alpha-rename:44| Bool) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:45| Int) (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$V-reftype:3| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:47| Int) (|$knormal:12| Int) (|$cond-alpha-rename:46| Bool) (|$knormal:5| Bool) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:21| 1) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:19| (+ |$cond-alpha-rename:45| 1)) (= |$cond-alpha-rename:48| (>= |$cond-alpha-rename:40| |$alpha-9:m|)) (= |$cond-alpha-rename:46| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:44| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:43| (+ |$cond-alpha-rename:42| 1)) (= |$cond-alpha-rename:41| (+ |$cond-alpha-rename:47| 1)) (= |$alpha-11:i| |$cond-alpha-rename:40|) (not |$knormal:5|) (not |$cond-alpha-rename:48|) (not |$cond-alpha-rename:46|) (not |$cond-alpha-rename:44|) (|inc3$unknown:4| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:49| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:47| |$cond-alpha-rename:40| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:45| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:42| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|) )
      (|inc3$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:21| Int) (|$knormal:19| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:56| Bool) (|$knormal:12| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:52| Int) (|$alpha-9:m| Int) (|$alpha-10:src| Int) (|$V-reftype:5| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:55| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:53| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:21| 1) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:19| (+ |$cond-alpha-rename:55| 1)) (= |$cond-alpha-rename:58| (>= |$cond-alpha-rename:50| |$alpha-9:m|)) (= |$cond-alpha-rename:56| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:54| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:53| (+ |$cond-alpha-rename:52| 1)) (= |$cond-alpha-rename:51| (+ |$cond-alpha-rename:57| 1)) (= |$alpha-11:i| |$cond-alpha-rename:50|) (not |$knormal:5|) (not |$cond-alpha-rename:58|) (not |$cond-alpha-rename:56|) (not |$cond-alpha-rename:54|) (|inc3$unknown:4| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:59| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:57| |$cond-alpha-rename:50| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:55| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:52| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|inc3$unknown:2| |$alpha-10:src| |$alpha-9:m|) )
      (|inc3$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$knormal:19| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:66| Bool) (|$knormal:11| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:65| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:62| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:67| Int) (|$knormal:12| Int) (|$knormal:9| Int) (|$cond-alpha-rename:64| Bool) (|$cond-alpha-rename:68| Bool) (|$V-reftype:39| Int) (|$cond-alpha-rename:61| Int) (|$cond-alpha-rename:63| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:21| 1) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:19| (+ |$cond-alpha-rename:65| 1)) (= |$cond-alpha-rename:68| (>= |$cond-alpha-rename:60| |$alpha-9:m|)) (= |$cond-alpha-rename:66| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:64| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:63| (+ |$cond-alpha-rename:62| 1)) (= |$cond-alpha-rename:61| (+ |$cond-alpha-rename:67| 1)) (= |$alpha-11:i| |$cond-alpha-rename:60|) (= |$V-reftype:39| |$knormal:11|) (not |$knormal:5|) (not |$cond-alpha-rename:68|) (not |$cond-alpha-rename:66|) (not |$cond-alpha-rename:64|) (|inc3$unknown:5| |$knormal:11| |$knormal:9| |$alpha-9:m|) (|inc3$unknown:4| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:69| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:67| |$cond-alpha-rename:60| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:65| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:62| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:5| |$V-reftype:39| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Int) (|$knormal:5| Bool) (|$knormal:12| Int) (|$cond-alpha-rename:12| Int) (|$cond-alpha-rename:26| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:27| Bool) (|$V-reftype:22| Int) (|$cond-alpha-rename:13| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$cond-alpha-rename:27| (>= |$cond-alpha-rename:12| |$alpha-9:m|)) (= |$cond-alpha-rename:13| (+ |$cond-alpha-rename:26| 1)) (= |$alpha-11:i| |$cond-alpha-rename:12|) (= |$V-reftype:22| |$cond-alpha-rename:12|) (not |$knormal:5|) (not |$cond-alpha-rename:27|) (|inc3$unknown:4| |$cond-alpha-rename:12| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:26| |$cond-alpha-rename:12| |$alpha-9:m|) )
      (|inc3$unknown:2| |$V-reftype:22| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:74| Bool) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:75| Int) (|$alpha-11:i| Int) (|$cond-alpha-rename:72| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:77| Int) (|$knormal:12| Int) (|$cond-alpha-rename:76| Bool) (|$knormal:5| Bool) (|$knormal:19| Int) (|$knormal:21| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:9| (+ |$alpha-11:i| 1)) (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$knormal:21| 1) (= |$knormal:19| (+ |$knormal:12| 1)) (= |$knormal:19| (+ |$cond-alpha-rename:75| 1)) (= |$cond-alpha-rename:78| (>= |$cond-alpha-rename:70| |$alpha-9:m|)) (= |$cond-alpha-rename:76| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:74| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$cond-alpha-rename:73| (+ |$cond-alpha-rename:72| 1)) (= |$cond-alpha-rename:71| (+ |$cond-alpha-rename:77| 1)) (= |$alpha-11:i| |$cond-alpha-rename:70|) (not |$knormal:5|) (not |$cond-alpha-rename:78|) (not |$cond-alpha-rename:76|) (not |$cond-alpha-rename:74|) (|inc3$unknown:4| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$knormal:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:79| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:77| |$cond-alpha-rename:70| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:75| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:3| |$cond-alpha-rename:72| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:4| |$knormal:9| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (= |$V-reftype:36| 1) |$knormal:5| (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:5| |$V-reftype:36| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-11:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-11:i| |$alpha-9:m|)) (not |$knormal:5|) (|inc3$unknown:4| |$alpha-11:i| |$alpha-9:m|) true )
      (|inc3$unknown:2| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:7| Bool) (|$knormal:22| Bool) (|$cond-alpha-rename:6| Bool) (|$knormal:23| Int) (|$alpha-13:n| Int) (|$cond-alpha-rename:9| Bool) (|$V-reftype:17| Int) )
    (=>
      ( and (= |$knormal:22| (> |$alpha-13:n| 0)) (= |$cond-alpha-rename:9| (and |$cond-alpha-rename:7| |$cond-alpha-rename:8|)) (= |$cond-alpha-rename:8| (< |$knormal:23| |$alpha-13:n|)) (= |$cond-alpha-rename:7| (<= 0 |$knormal:23|)) (= |$cond-alpha-rename:6| (> |$alpha-13:n| 0)) (= |$V-reftype:17| 0) |$knormal:22| |$cond-alpha-rename:9| |$cond-alpha-rename:6| (|inc3$unknown:2| |$knormal:23| |$alpha-13:n|) )
      (|inc3$unknown:3| |$V-reftype:17| |$knormal:23| |$alpha-13:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:4| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:4| (> |$alpha-1:n| 0)) (not |$knormal:3|) |$cond-alpha-rename:4| (|inc3$unknown:2| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$knormal:22| Bool) (|$alpha-13:n| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:22| (> |$alpha-13:n| 0)) |$knormal:22| )
      (|inc3$unknown:4| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

