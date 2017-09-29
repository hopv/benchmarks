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

(declare-fun |make_array$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |array_max$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |array_max$unknown:4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-5:a| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) true true true )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-5:a| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) true true true )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$knormal:3| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:29| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:29| |$knormal:9|) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) (|array_max$unknown:6| |$knormal:9| |$alpha-6:m| |$knormal:3| |$alpha-3:n|) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:6| |$V-reftype:29| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:27| |$knormal:9|) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) (|array_max$unknown:6| |$knormal:9| |$knormal:11| |$knormal:3| |$alpha-3:n|) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      (|array_max$unknown:6| |$V-reftype:27| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:10|)) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:3| Int) )
    (=>
      ( and (= |$knormal:3| (+ |$alpha-4:i| 1)) (= (not (= 0 |$knormal:10|)) (> |$knormal:11| |$alpha-6:m|)) (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:10|))) (not (not (= 0 |$knormal:1|))) true (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (= |$V-reftype:24| |$alpha-6:m|) (not (= 0 |$knormal:1|)) true true true )
      (|array_max$unknown:6| |$V-reftype:24| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (>= |$alpha-4:i| |$alpha-3:n|)) (not (not (= 0 |$knormal:1|))) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:18| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) (|make_array$unknown:9| |$V-reftype:21| |$knormal:18| |$alpha-9:n|) true )
      (|array_max$unknown:4| |$V-reftype:21| |$knormal:18| |$alpha-10:i| |$alpha-9:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:17| Int) (|$knormal:25| Int) (|$knormal:27| Int) )
    ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:17|)) (>= |$knormal:27| |$alpha-9:n|)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (not (= 0 |$knormal:17|))) (not (= 0 |$knormal:16|)) (|array_max$unknown:6| |$knormal:27| |$knormal:25| |$alpha-10:i| |$alpha-9:n|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    (=>
      ( and (= |$V-reftype:22| (- |$alpha-1:n| |$alpha-2:i|)) true true )
      (|make_array$unknown:9| |$V-reftype:22| |$alpha-2:i| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:12| Int) (|$knormal:13| Int) (|$knormal:14| Int) (|$knormal:15| Int) (|$knormal:16| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:25| (- 1)) (= (not (= 0 |$knormal:16|)) (and (not (= 0 |$knormal:12|)) (not (= 0 |$knormal:15|)))) (= (not (= 0 |$knormal:15|)) (and (not (= 0 |$knormal:13|)) (not (= 0 |$knormal:14|)))) (= (not (= 0 |$knormal:14|)) (<= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:13|)) (>= |$alpha-10:i| 0)) (= (not (= 0 |$knormal:12|)) (> |$alpha-9:n| 0)) (not (= 0 |$knormal:16|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

