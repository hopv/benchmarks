(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as hors
  USED: PEPM2013 as hors
  *)
  
  let c q = ()
  (* c q -> .  for any q *)
  let b x q = x 1
  (* b q -> q1 for any q *)
  let a x y q = if q=0 then (x 0; y 0) else assert false
  (* a q0 -> q0 q0 *)
  
  let rec f n x q = if n <= 0 then x q else a x (f (n-1) (b x)) q
  (* F n x = if n<=0 then x else a x (f (n-1) (b x)) *)
  let s n q = f n c q
  (* S -> F n c *)
  
  let main n = s n 0
  (* check whether S: q0 *)
")

(set-logic HORN)

(declare-fun |s$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |c$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |b$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |b$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |a$unknown:3|
  ( Int ) Bool
)

(declare-fun |a$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |a$unknown:5|
  ( Int ) Bool
)

(declare-fun |a$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |s$unknown:19|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) )
      (|s$unknown:19| |$knormal:28| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$alpha-9:x| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$V-reftype:26| |$alpha-9:x| |$alpha-8:n|) true true )
      (|a$unknown:2| |$V-reftype:26| |$alpha-9:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-6:q| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:6| 0) (= |$knormal:4| 0) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:q| 0)) (= |$V-reftype:45| |$knormal:5|) (not (= 0 |$knormal:3|)) (|a$unknown:5| |$alpha-6:q|) (|a$unknown:4| |$knormal:5| |$knormal:4|) (|a$unknown:2| |$knormal:7| |$knormal:6|) )
      (|a$unknown:6| |$V-reftype:45| |$alpha-6:q|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:q| Int) (|$knormal:3| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:6| 0) (= |$knormal:4| 0) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:q| 0)) (not (= 0 |$knormal:3|)) (|a$unknown:5| |$alpha-6:q|) (|a$unknown:2| |$knormal:7| |$knormal:6|) )
      (|a$unknown:3| |$knormal:4|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true (|a$unknown:3| |$V-reftype:5|) )
      (|f$unknown:16| |$V-reftype:5| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:14| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:17| |$V-reftype:30| |$knormal:14| |$knormal:10|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true (|a$unknown:3| |$knormal:14|) )
      (|a$unknown:4| |$V-reftype:30| |$knormal:14|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:q| Int) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| 0) (= (not (= 0 |$knormal:3|)) (= |$alpha-6:q| 0)) (not (= 0 |$knormal:3|)) (|a$unknown:5| |$alpha-6:q|) )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:q| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-6:q| 0)) (not (not (= 0 |$knormal:3|))) (|a$unknown:5| |$alpha-6:q|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:20| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$V-reftype:50| |$knormal:20|) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true (|a$unknown:6| |$knormal:20| |$alpha-10:q|) )
      (|f$unknown:17| |$V-reftype:50| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true true (|b$unknown:10| |$V-reftype:18| |$knormal:9|) )
      (|f$unknown:15| |$V-reftype:18| |$knormal:9| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$alpha-9:x| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$V-reftype:26| |$alpha-9:x| |$alpha-8:n|) true true )
      (|b$unknown:8| |$V-reftype:26| |$alpha-9:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$alpha-3:q| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:41| |$knormal:2|) true (|b$unknown:8| |$knormal:2| |$knormal:1|) )
      (|b$unknown:10| |$V-reftype:41| |$alpha-3:q|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-1:q| Int) )
    (=>
      ( and (= |$V-reftype:39| 1) true )
      (|c$unknown:12| |$V-reftype:39| |$alpha-1:q|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-11:n| Int) (|$alpha-12:q| Int) (|c| Int) )
    (=>
      ( and (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) true true (|c$unknown:12| |$V-reftype:21| |c|) )
      (|f$unknown:15| |$V-reftype:21| |c| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:21| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$V-reftype:48| |$knormal:21|) (not (= 0 |$knormal:8|)) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$knormal:21| |$alpha-10:q| |$alpha-8:n|) true )
      (|f$unknown:17| |$V-reftype:48| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (not (= 0 |$knormal:8|)) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true )
      (|a$unknown:5| |$alpha-10:q|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (not (not (= 0 |$knormal:8|))) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-11:n| Int) (|$alpha-12:q| Int) (|$knormal:26| Int) )
    (=>
      ( and (= |$V-reftype:51| |$knormal:26|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) true (|f$unknown:17| |$knormal:26| |$alpha-12:q| |$alpha-11:n|) )
      (|s$unknown:20| |$V-reftype:51| |$alpha-12:q| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) true )
      (|f$unknown:16| |$alpha-12:q| |$alpha-11:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

