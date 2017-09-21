(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-cppr
  USED: PEPM2013 as a-cppr
  *)
  
  let make_array n i = assert (0 <= i && i < n); 0
  let update (i:int) (n:int) des x : int -> int =
    des i;
    let a j = if i=j then x else des j in a
  let print_int (n:int) = ()
  let f (m:int) src des =
    let rec bcopy (m:int) src des i =
      if i >= m then
        des
      else
        let des = update i m des (src i) in
        bcopy m src des (i+1)
    in
    let rec print_array m (array:int->int) i =
      if i >= m then
        ()
      else
        (print_int (array i);
         print_array m array (i + 1))
    in
    let array : int -> int = bcopy m src des 0 in
      print_array m array 0
  let main n =
    let array1 = make_array n in
    let array2 = make_array n in
      if n > 0 then f n array1 array2
")

(set-logic HORN)

(declare-fun |$innerFunc:3-print_array$unknown:31|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:26|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:25|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:23|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:30|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:29|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-print_array$unknown:28|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:20|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:35|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-bcopy$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:45|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:48|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-32:i| Int) (|$alpha-33:n| Int) (|$alpha-35:x| Int) (|$alpha-36:$$tmp::2| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:455| Int) (|$cond-alpha-rename:456| Int) (|$cond-alpha-rename:458| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:77| Int) (|$knormal:89| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$alpha-35:x| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:536|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:449| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:447|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:452| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:450|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:455| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:453|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:458| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:456|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:73| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:534|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:74| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:532|) (|$innerFunc:2-bcopy$unknown:18| |$alpha-36:$$tmp::2| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:456|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:75| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:453|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:77| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:450|) (|$innerFunc:2-bcopy$unknown:18| |$knormal:89| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:447|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:447|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:450|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:453|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:456|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:532|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:534|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-32:i| |$alpha-33:n| |$cond-alpha-rename:536|) (|update$unknown:45| |$alpha-32:i| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:45| |$alpha-37:j| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:48| |$alpha-37:j| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|) (|update$unknown:48| |$alpha-37:j| |$cond-alpha-rename:74| |$alpha-33:n| |$alpha-32:i|) (not (>= |$alpha-32:i| |$alpha-33:n|)) (not (>= |$alpha-32:i| |$alpha-33:n|)) (not (>= |$alpha-32:i| |$alpha-33:n|)) (not (= |$alpha-32:i| |$alpha-37:j|)) (not (>= |$alpha-32:i| |$alpha-33:n|)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:89| |$alpha-37:j| |$alpha-36:$$tmp::2| |$alpha-35:x| |$alpha-33:n| |$alpha-32:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-33:n| Int) (|$alpha-35:x| Int) (|$alpha-36:$$tmp::2| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:461| Int) (|$cond-alpha-rename:538| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$alpha-35:x| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:538|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:461| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:459|) (|$innerFunc:2-bcopy$unknown:18| |$alpha-36:$$tmp::2| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:459|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:459|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-37:j| |$alpha-33:n| |$cond-alpha-rename:538|) (|update$unknown:45| |$alpha-37:j| |$alpha-33:n| |$alpha-37:j|) (|update$unknown:48| |$alpha-37:j| |$alpha-35:x| |$alpha-33:n| |$alpha-37:j|) (not (>= |$alpha-37:j| |$alpha-33:n|)) (not (>= |$alpha-37:j| |$alpha-33:n|)) )
      (|$innerFunc:1-a$unknown:8| |$alpha-35:x| |$alpha-37:j| |$alpha-36:$$tmp::2| |$alpha-35:x| |$alpha-33:n| |$alpha-37:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:462| Int) (|$cond-alpha-rename:464| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:467| Int) (|$cond-alpha-rename:540| Int) (|$cond-alpha-rename:542| Int) (|$knormal:13| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:542|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:27| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:540|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:464| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:462|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:467| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:465|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:28| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:465|) (|$innerFunc:2-bcopy$unknown:18| |$knormal:13| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:462|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:462|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:465|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:540|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:542|) (|update$unknown:45| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:48| |$V-reftype:5| |$cond-alpha-rename:27| |$alpha-5:n| |$alpha-4:i|) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) (not (= |$alpha-4:i| |$V-reftype:5|)) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:45| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:18| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$V-reftype:18| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:18| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-11:src| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-11:src|) (< |$alpha-11:src| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:10| |$alpha-11:src| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:11| 0 |$alpha-11:src| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-28:src| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:10| |$alpha-28:src| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:11| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:2-bcopy$unknown:12| |$V-reftype:22| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:22| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:12| |$V-reftype:22| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|update$unknown:48| |$V-reftype:22| |$knormal:79| |$alpha-27:m| |$alpha-30:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-12:des| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-12:des|) (< |$alpha-12:des| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:12| |$alpha-12:des| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:13| 0 |$alpha-12:des| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:94| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$cond-alpha-rename:601| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:606| Int) (|$knormal:79| Int) (|$knormal:87| Int) )
    (=>
      ( and (not (>= |$alpha-30:i| |$alpha-27:m|)) (not (>= |$alpha-30:i| |$alpha-27:m|)) (not (>= |$alpha-30:i| |$alpha-27:m|)) (|update$unknown:48| |$knormal:87| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) (|update$unknown:45| |$alpha-30:i| |$alpha-27:m| |$alpha-30:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:604|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:601|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:606| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:601|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:604|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:603| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:601|) (|$innerFunc:2-bcopy$unknown:12| |$knormal:87| |$alpha-27:m|) (|$innerFunc:1-a$unknown:8| |$V-reftype:94| |$knormal:87| |$cond-alpha-rename:606| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) )
      (|$innerFunc:2-bcopy$unknown:13| |$V-reftype:94| |$knormal:87| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-28:src| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:15| |$alpha-28:src| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:16| |$V-reftype:30| |$alpha-28:src| |$alpha-27:m| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:32| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|update$unknown:48| |$V-reftype:32| |$knormal:79| |$alpha-27:m| |$alpha-30:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:94| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$cond-alpha-rename:607| Int) (|$cond-alpha-rename:609| Int) (|$cond-alpha-rename:610| Int) (|$cond-alpha-rename:612| Int) (|$knormal:79| Int) (|$knormal:87| Int) )
    (=>
      ( and (not (>= |$alpha-30:i| |$alpha-27:m|)) (not (>= |$alpha-30:i| |$alpha-27:m|)) (not (>= |$alpha-30:i| |$alpha-27:m|)) (|update$unknown:48| |$knormal:87| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) (|update$unknown:45| |$alpha-30:i| |$alpha-27:m| |$alpha-30:i|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:610|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:607|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:18| |$cond-alpha-rename:612| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:607|) (|$innerFunc:2-bcopy$unknown:17| |$knormal:87| |$alpha-27:m| |$alpha-27:m|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:610|) (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:16| |$cond-alpha-rename:609| |$alpha-30:i| |$alpha-27:m| |$cond-alpha-rename:607|) (|$innerFunc:1-a$unknown:8| |$V-reftype:94| |$knormal:87| |$cond-alpha-rename:612| |$knormal:79| |$alpha-27:m| |$alpha-30:i|) )
      (|$innerFunc:2-bcopy$unknown:18| |$V-reftype:94| |$knormal:87| |$alpha-27:m| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| (+ |$alpha-30:i| 1) |$alpha-27:m| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:40| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:39| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$V-reftype:39| (+ |$alpha-30:i| 1) |$alpha-27:m| |$alpha-27:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$V-reftype:39| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:86| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|update$unknown:45| |$V-reftype:86| |$alpha-27:m| |$alpha-30:i|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:86| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) (|$knormal:79| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$knormal:79| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:19| (+ |$alpha-30:i| 1) |$alpha-27:m| |$alpha-27:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:33| Int) (|$V-reftype:34| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:18| |$V-reftype:34| |$V-reftype:33| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:33| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (>= |$alpha-30:i| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:34| |$V-reftype:33| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:38| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (>= |$alpha-30:i| |$alpha-27:m|) )
      (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:38| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:m| Int) (|$alpha-27:m| Int) (|$alpha-30:i| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:19| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|) (not (>= |$alpha-30:i| |$alpha-27:m|)) )
      (|$innerFunc:2-bcopy$unknown:15| |$alpha-30:i| |$alpha-27:m| |$alpha-24:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:2-bcopy$unknown:15| |$V-reftype:28| |$alpha-10:m| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:28| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-11:src| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-11:src|) (< |$alpha-11:src| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:15| |$alpha-11:src| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:16| 0 |$alpha-11:src| |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:2-bcopy$unknown:17| |$V-reftype:32| |$alpha-10:m| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:32| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-12:des| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-12:des|) (< |$alpha-12:des| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:17| |$alpha-12:des| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:18| 0 |$alpha-12:des| |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-10:m| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:3-print_array$unknown:28| |$knormal:39| |$alpha-10:m| |$alpha-10:m|) (|$innerFunc:2-bcopy$unknown:21| |$V-reftype:40| |$knormal:39| 0 |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:29| |$V-reftype:40| |$knormal:39| |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-17:m| Int) (|$alpha-18:src| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:23| |$alpha-18:src| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:24| |$V-reftype:45| |$alpha-18:src| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:24| |$V-reftype:45| |$alpha-18:src| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$alpha-17:m| Int) (|$alpha-19:des| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:25| |$alpha-19:des| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:26| |$V-reftype:49| |$alpha-19:des| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:26| |$V-reftype:49| |$alpha-19:des| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-20:m| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-21:array| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:28| |$alpha-21:array| |$alpha-20:m| |$alpha-20:m|) (|$innerFunc:3-print_array$unknown:29| |$V-reftype:55| |$alpha-21:array| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:29| |$V-reftype:55| |$alpha-21:array| |$alpha-20:m| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:60| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:31| |$knormal:60| (+ |$alpha-22:i| 1) |$alpha-20:m| |$alpha-20:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:31| |$knormal:60| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) (|$knormal:61| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:29| |$knormal:61| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:30| (+ |$alpha-22:i| 1) |$alpha-20:m| |$alpha-20:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (>= |$alpha-22:i| |$alpha-20:m|) )
      (|$innerFunc:3-print_array$unknown:31| 1 |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:m| Int) (|$alpha-20:m| Int) (|$alpha-22:i| Int) )
    (=>
      ( and (|$innerFunc:3-print_array$unknown:30| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|) (not (>= |$alpha-22:i| |$alpha-20:m|)) )
      (|$innerFunc:3-print_array$unknown:28| |$alpha-22:i| |$alpha-20:m| |$alpha-17:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:3-print_array$unknown:23| |$V-reftype:43| |$alpha-10:m|) )
      (|f$unknown:33| |$V-reftype:43| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-11:src| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-11:src|) (< |$alpha-11:src| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-11:src| |$alpha-10:m|) (|f$unknown:33| |$alpha-11:src| |$alpha-10:m|) (|$innerFunc:3-print_array$unknown:23| |$alpha-11:src| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:24| 0 |$alpha-11:src| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:3-print_array$unknown:25| |$V-reftype:47| |$alpha-10:m|) )
      (|f$unknown:35| |$V-reftype:47| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) (|$alpha-12:des| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (<= 0 |$alpha-12:des|) (< |$alpha-12:des| |$alpha-10:m|) (|make_array$unknown:39| |$alpha-12:des| |$alpha-10:m|) (|f$unknown:35| |$alpha-12:des| |$alpha-10:m|) (|$innerFunc:3-print_array$unknown:25| |$alpha-12:des| |$alpha-10:m|) )
      (|$innerFunc:3-print_array$unknown:26| 0 |$alpha-12:des| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) (|$innerFunc:3-print_array$unknown:28| |$V-reftype:53| |$alpha-10:m| |$alpha-10:m|) )
      (|$innerFunc:2-bcopy$unknown:20| |$V-reftype:53| 0 |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) )
      (|$innerFunc:3-print_array$unknown:30| 0 |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:m| Int) )
    (=>
      ( and (> |$alpha-10:m| 0) )
      (|$innerFunc:2-bcopy$unknown:19| 0 |$alpha-10:m| |$alpha-10:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|f$unknown:33| |$V-reftype:62| |$alpha-14:n|) (> |$alpha-14:n| 0) )
      (|make_array$unknown:39| |$V-reftype:62| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:66| Int) (|$alpha-14:n| Int) )
    (=>
      ( and (|f$unknown:35| |$V-reftype:66| |$alpha-14:n|) (> |$alpha-14:n| 0) )
      (|make_array$unknown:39| |$V-reftype:66| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (|make_array$unknown:39| |$alpha-2:i| |$alpha-1:n|) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) (|$cond-alpha-rename:546| Int) )
    (=>
      ( and (|$innerFunc:2-bcopy$unknown:16| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:546|) (|$innerFunc:2-bcopy$unknown:19| |$alpha-4:i| |$alpha-5:n| |$cond-alpha-rename:546|) (not (>= |$alpha-4:i| |$alpha-5:n|)) )
      (|update$unknown:45| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(check-sat)

(get-model)

