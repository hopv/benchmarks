(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-max
  *)
  
  let make_array n i = n - i
  let rec array_max (n:int) i (a:int->int) m =
    if i >= n then
      m
    else
      let x = a i in
      let z = if x>m then x else m in
      array_max n (i+1) a z
  let main n i =
    if n>0 && i>=0 && i<=0 then
      let m = array_max n i (make_array n) (-1) in
      assert (m >= n)
")

(set-logic HORN)

(declare-fun |array_max$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |array_max$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |array_max$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |array_max$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:10| Bool) (|$alpha-4:i| Int) (|$alpha-3:n| Int) (|$V-reftype:5| Int) (|$knormal:3| Int) (|$knormal:11| Int) (|$alpha-6:m| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:1|) |$knormal:10| (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:3| |$V-reftype:5| |$knormal:3| |$alpha-3:n|) true true )
      (|array_max$unknown:3| |$V-reftype:5| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-4:i| Int) (|$alpha-3:n| Int) (|$V-reftype:5| Int) (|$knormal:3| Int) (|$knormal:11| Int) (|$alpha-6:m| Int) (|$knormal:10| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:10|) (not |$knormal:1|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:3| |$V-reftype:5| |$knormal:3| |$alpha-3:n|) true true )
      (|array_max$unknown:3| |$V-reftype:5| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$alpha-4:i| Int) (|$V-reftype:7| Int) (|$knormal:3| Int) (|$alpha-5:a| Int) (|$alpha-3:n| Int) (|$knormal:10| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:1|) |$knormal:10| (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:3| |$alpha-5:a| |$knormal:3| |$alpha-3:n|) true true )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Bool) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$alpha-4:i| Int) (|$V-reftype:7| Int) (|$knormal:3| Int) (|$alpha-5:a| Int) (|$alpha-3:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:10|) (not |$knormal:1|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:3| |$alpha-5:a| |$knormal:3| |$alpha-3:n|) true true )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Bool) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$alpha-4:i| Int) (|$alpha-3:n| Int) (|$knormal:9| Int) (|$knormal:3| Int) (|$knormal:1| Bool) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:10|) (not |$knormal:1|) (|array_max$unknown:6| |$knormal:9| |$alpha-6:m| |$knormal:3| |$alpha-3:n|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:6| |$V-reftype:29| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$alpha-4:i| Int) (|$alpha-3:n| Int) (|$knormal:9| Int) (|$knormal:3| Int) (|$knormal:10| Bool) (|$V-reftype:27| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:27| |$knormal:9|) (not |$knormal:1|) |$knormal:10| (|array_max$unknown:6| |$knormal:9| |$knormal:11| |$knormal:3| |$alpha-3:n|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:6| |$V-reftype:27| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:10| Bool) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$knormal:11| Int) (|$alpha-6:m| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:1|) |$knormal:10| (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:5| |$knormal:11| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:1| Bool) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$knormal:11| Int) (|$alpha-6:m| Int) (|$knormal:10| Bool) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= |$knormal:10| (> |$knormal:11| |$alpha-6:m|)) (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:10|) (not |$knormal:1|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:5| |$alpha-6:m| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-3:n| Int) (|$alpha-6:m| Int) (|$alpha-4:i| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:24| |$alpha-6:m|) |$knormal:1| (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:6| |$V-reftype:24| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$alpha-4:i| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$alpha-6:m| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$knormal:1| (>= |$alpha-4:i| |$alpha-3:n|)) (not |$knormal:1|) (|array_max$unknown:5| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|) true true (= |$cond-alpha-rename:1| |$alpha-4:i|) (= |$cond-alpha-rename:2| |$alpha-4:i|) )
      (|array_max$unknown:3| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:20| Int) (|$alpha-9:n| Int) (|$knormal:18| Int) (|$alpha-10:i| Int) (|$knormal:16| Bool) (|$cond-alpha-rename:15| Bool) (|$cond-alpha-rename:16| Bool) (|$cond-alpha-rename:17| Bool) (|$cond-alpha-rename:18| Bool) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Bool) (|$knormal:15| Bool) )
    (=>
      ( and (= |$knormal:16| (and |$knormal:12| |$knormal:15|)) (= |$knormal:15| (and |$knormal:13| |$knormal:14|)) (= |$knormal:14| (<= |$alpha-10:i| 0)) (= |$knormal:13| (>= |$alpha-10:i| 0)) (= |$knormal:12| (> |$alpha-9:n| 0)) (= |$cond-alpha-rename:19| (and |$cond-alpha-rename:15| |$cond-alpha-rename:18|)) (= |$cond-alpha-rename:18| (and |$cond-alpha-rename:16| |$cond-alpha-rename:17|)) (= |$cond-alpha-rename:17| (<= |$cond-alpha-rename:20| 0)) (= |$cond-alpha-rename:16| (>= |$cond-alpha-rename:20| 0)) (= |$cond-alpha-rename:15| (> |$alpha-9:n| 0)) (= |$V-reftype:21| (- |$alpha-9:n| |$knormal:18|)) |$knormal:16| |$cond-alpha-rename:19| (|array_max$unknown:3| |$knormal:18| |$cond-alpha-rename:20| |$alpha-9:n|) (|array_max$unknown:3| |$knormal:18| |$alpha-10:i| |$alpha-9:n|) )
      (|array_max$unknown:4| |$V-reftype:21| |$knormal:18| |$alpha-10:i| |$alpha-9:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:17| Bool) (|$alpha-9:n| Int) (|$knormal:25| Int) (|$knormal:27| Int) (|$alpha-10:i| Int) (|$knormal:16| Bool) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Bool) (|$knormal:15| Bool) )
    ( and (= |$knormal:25| (- 1)) (= |$knormal:17| (>= |$knormal:27| |$alpha-9:n|)) (= |$knormal:16| (and |$knormal:12| |$knormal:15|)) (= |$knormal:15| (and |$knormal:13| |$knormal:14|)) (= |$knormal:14| (<= |$alpha-10:i| 0)) (= |$knormal:13| (>= |$alpha-10:i| 0)) (= |$knormal:12| (> |$alpha-9:n| 0)) (not |$knormal:17|) |$knormal:16| (|array_max$unknown:6| |$knormal:27| |$knormal:25| |$alpha-10:i| |$alpha-9:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:16| Bool) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Bool) (|$knormal:15| Bool) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= |$knormal:16| (and |$knormal:12| |$knormal:15|)) (= |$knormal:15| (and |$knormal:13| |$knormal:14|)) (= |$knormal:14| (<= |$alpha-10:i| 0)) (= |$knormal:13| (>= |$alpha-10:i| 0)) (= |$knormal:12| (> |$alpha-9:n| 0)) |$knormal:16| )
      (|array_max$unknown:5| |$knormal:25| |$alpha-10:i| |$alpha-9:n|)
    )
  )
)
(check-sat)

(get-model)

