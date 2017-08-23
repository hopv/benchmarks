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

(declare-fun |c$unknown:11|
  ( Int ) Bool
)

(declare-fun |b$unknown:9|
  ( Int ) Bool
)

(declare-fun |b$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |b$unknown:7|
  ( Int ) Bool
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

(declare-fun |f$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:13|
  ( Int ) Bool
)

(declare-fun |a$unknown:1|
  ( Int ) Bool
)

(declare-fun |s$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |s$unknown:18|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:28| Int) )
    (=>
      ( and (= |$knormal:28| 0) )
      (|s$unknown:18| |$alpha-13:n|)
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
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$V-reftype:1| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (|a$unknown:1| |$V-reftype:1|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:14| |$V-reftype:1| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$alpha-9:x| Int) (|$V-reftype:26| Int) (|$knormal:10| Int) )
    (=>
      ( and (|a$unknown:1| |$alpha-9:x|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:15| |$V-reftype:26| |$alpha-9:x| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|a$unknown:2| |$V-reftype:26| |$alpha-9:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:5| Int) (|$alpha-6:q| Int) (|$V-reftype:45| Int) )
    (=>
      ( and (|a$unknown:2| |$knormal:7| |$knormal:6|) (|a$unknown:4| |$knormal:5| |$knormal:4|) (|a$unknown:5| |$alpha-6:q|) |$knormal:3| (= |$V-reftype:45| |$knormal:5|) (= |$knormal:3| (= |$alpha-6:q| 0)) (= |$knormal:4| 0) (= |$knormal:6| 0) )
      (|a$unknown:6| |$V-reftype:45| |$alpha-6:q|)
    )
  )
)
(assert
  (forall ( (|$knormal:4| Int) (|$alpha-6:q| Int) (|$knormal:7| Int) (|$knormal:6| Int) (|$knormal:3| Bool) )
    (=>
      ( and (|a$unknown:2| |$knormal:7| |$knormal:6|) (|a$unknown:5| |$alpha-6:q|) |$knormal:3| (= |$knormal:3| (= |$alpha-6:q| 0)) (= |$knormal:4| 0) (= |$knormal:6| 0) )
      (|a$unknown:3| |$knormal:4|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$V-reftype:5| Int) (|$alpha-8:n| Int) (|$knormal:10| Int) )
    (=>
      ( and (|a$unknown:3| |$V-reftype:5|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:16| |$V-reftype:5| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-8:n| Int) (|$knormal:14| Int) (|$alpha-10:q| Int) (|$V-reftype:30| Int) (|$knormal:10| Int) )
    (=>
      ( and (|a$unknown:3| |$knormal:14|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:17| |$V-reftype:30| |$knormal:14| |$knormal:10|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|a$unknown:4| |$V-reftype:30| |$knormal:14|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Bool) (|$alpha-6:q| Int) (|$knormal:6| Int) )
    (=>
      ( and (|a$unknown:5| |$alpha-6:q|) |$knormal:3| (= |$knormal:3| (= |$alpha-6:q| 0)) (= |$knormal:6| 0) )
      (|a$unknown:1| |$knormal:6|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-6:q| Int) )
    ( and (|a$unknown:5| |$alpha-6:q|) (not |$knormal:3|) (= |$knormal:3| (= |$alpha-6:q| 0)) )
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$V-reftype:50| Int) (|$alpha-8:n| Int) (|$knormal:20| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|a$unknown:6| |$knormal:20| |$alpha-10:q|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$V-reftype:50| |$knormal:20|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:17| |$V-reftype:50| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-8:n| Int) (|$V-reftype:18| Int) (|$knormal:9| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|b$unknown:10| |$V-reftype:18| |$knormal:9|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:14| |$knormal:9| |$knormal:10|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:15| |$V-reftype:18| |$knormal:9| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$V-reftype:12| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|b$unknown:7| |$V-reftype:12|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:14| |$V-reftype:12| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$alpha-9:x| Int) (|$V-reftype:26| Int) )
    (=>
      ( and (|b$unknown:7| |$alpha-9:x|) (|f$unknown:13| |$alpha-8:n|) (|f$unknown:15| |$V-reftype:26| |$alpha-9:x| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|b$unknown:8| |$V-reftype:26| |$alpha-9:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$alpha-3:q| Int) )
    (=>
      ( and (|b$unknown:8| |$knormal:2| |$knormal:1|) (|b$unknown:9| |$alpha-3:q|) (= |$V-reftype:41| |$knormal:2|) (= |$knormal:1| 1) )
      (|b$unknown:10| |$V-reftype:41| |$alpha-3:q|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:q| Int) (|$knormal:1| Int) )
    (=>
      ( and (|b$unknown:9| |$alpha-3:q|) (= |$knormal:1| 1) )
      (|b$unknown:7| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-1:q| Int) )
    (=>
      ( and (|c$unknown:11| |$alpha-1:q|) (= |$V-reftype:39| 1) )
      (|c$unknown:12| |$V-reftype:39| |$alpha-1:q|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:q| Int) (|$alpha-11:n| Int) (|c| Int) (|$V-reftype:21| Int) )
    (=>
      ( and (|c$unknown:12| |$V-reftype:21| |c|) (|f$unknown:14| |c| |$alpha-11:n|) (|s$unknown:18| |$alpha-11:n|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) )
      (|f$unknown:15| |$V-reftype:21| |c| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-8:n| Int) (|$V-reftype:24| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|f$unknown:13| |$alpha-8:n|) (|f$unknown:14| |$V-reftype:24| |$knormal:10|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|b$unknown:9| |$V-reftype:24|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$knormal:21| Int) (|$alpha-8:n| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|f$unknown:13| |$alpha-8:n|) (|f$unknown:15| |$knormal:21| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) |$knormal:8| (= |$V-reftype:48| |$knormal:21|) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:17| |$V-reftype:48| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) |$knormal:8| (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:14| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-8:n| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|a$unknown:5| |$alpha-10:q|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$alpha-8:n| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (|f$unknown:13| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (not |$knormal:8|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$knormal:8| (<= |$alpha-8:n| 0)) )
      (|f$unknown:13| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:q| Int) (|$alpha-11:n| Int) (|$V-reftype:24| Int) )
    (=>
      ( and (|f$unknown:14| |$V-reftype:24| |$alpha-11:n|) (|s$unknown:18| |$alpha-11:n|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) )
      (|c$unknown:11| |$V-reftype:24|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-11:n| Int) (|$knormal:26| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (|f$unknown:17| |$knormal:26| |$alpha-12:q| |$alpha-11:n|) (|s$unknown:18| |$alpha-11:n|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) (= |$V-reftype:51| |$knormal:26|) )
      (|s$unknown:20| |$V-reftype:51| |$alpha-12:q| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:q| Int) (|$alpha-11:n| Int) )
    (=>
      ( and (|s$unknown:18| |$alpha-11:n|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) )
      (|f$unknown:13| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (|s$unknown:18| |$alpha-11:n|) (|s$unknown:19| |$alpha-12:q| |$alpha-11:n|) )
      (|f$unknown:16| |$alpha-12:q| |$alpha-11:n|)
    )
  )
)
(check-sat)

