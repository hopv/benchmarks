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

(declare-fun |f$unknown:17|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:71| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:24| 0 |$cond-alpha-rename:18|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$cond-alpha-rename:17| |$cond-alpha-rename:71|) (|f$unknown:16| |$cond-alpha-rename:21| |$cond-alpha-rename:18|) (= |$cond-alpha-rename:17| 0) (not (<= |$cond-alpha-rename:18| 0)) (not (<= |$cond-alpha-rename:71| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:16| 0 (- |$alpha-8:n| 1))
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:q| Int) (|$cond-alpha-rename:74| Int) )
    ( and (|f$unknown:16| |$alpha-6:q| |$cond-alpha-rename:74|) (not (<= |$cond-alpha-rename:74| 0)) (not (= |$alpha-6:q| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:93| Int) (|$cond-alpha-rename:94| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:96| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:102| 0 |$cond-alpha-rename:96|) (|f$unknown:15| |$cond-alpha-rename:115| 0 |$cond-alpha-rename:90|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$cond-alpha-rename:105|) (|f$unknown:16| |$cond-alpha-rename:89| |$cond-alpha-rename:90|) (|f$unknown:16| |$cond-alpha-rename:93| |$cond-alpha-rename:94|) (|f$unknown:16| |$cond-alpha-rename:95| |$cond-alpha-rename:108|) (|f$unknown:16| |$cond-alpha-rename:99| |$cond-alpha-rename:96|) (|f$unknown:17| |$cond-alpha-rename:113| 0 (- |$cond-alpha-rename:94| 1)) (= |$cond-alpha-rename:95| 0) (= |$alpha-10:q| 0) (not (<= |$cond-alpha-rename:94| 0)) (not (<= |$cond-alpha-rename:105| 0)) (not (<= |$cond-alpha-rename:108| 0)) (not (<= |$cond-alpha-rename:90| 0)) (not (<= |$cond-alpha-rename:96| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:17| |$cond-alpha-rename:113| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$knormal:9| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:117| 1 |$cond-alpha-rename:119|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$cond-alpha-rename:118| |$cond-alpha-rename:119|) (not (<= |$cond-alpha-rename:119| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:15| |$cond-alpha-rename:117| |$knormal:9| (- |$alpha-8:n| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|c| Int) )
    (=>
      ( and true )
      (|f$unknown:15| 1 |c| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$knormal:21| Int) )
    (=>
      ( and (|f$unknown:15| |$knormal:21| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (<= |$alpha-8:n| 0) )
      (|f$unknown:17| |$knormal:21| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) )
    (=>
      ( and true )
      (|f$unknown:16| 0 |$alpha-11:n|)
    )
  )
)
(check-sat)

(get-model)

