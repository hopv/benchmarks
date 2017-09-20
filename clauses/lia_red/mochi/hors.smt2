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

(declare-fun |f$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:71| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:159| 1 |$cond-alpha-rename:161|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$cond-alpha-rename:156| |$cond-alpha-rename:157|) (|f$unknown:16| |$cond-alpha-rename:160| |$cond-alpha-rename:161|) (|f$unknown:16| |$cond-alpha-rename:17| |$cond-alpha-rename:71|) (|f$unknown:16| |$cond-alpha-rename:21| (- |$cond-alpha-rename:157| 1)) (= |$cond-alpha-rename:17| 0) (not (<= |$cond-alpha-rename:161| 0)) (not (<= |$cond-alpha-rename:157| 0)) (not (<= (- |$cond-alpha-rename:157| 1) 0)) (not (<= |$cond-alpha-rename:71| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:16| 0 (- |$alpha-8:n| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:71| Int) )
    (=>
      ( and (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$cond-alpha-rename:17| |$cond-alpha-rename:71|) (|f$unknown:16| |$cond-alpha-rename:21| |$cond-alpha-rename:18|) (= |$cond-alpha-rename:17| 0) (not (<= |$cond-alpha-rename:18| 0)) (not (<= |$cond-alpha-rename:71| 0)) (not (<= |$alpha-8:n| 0)) )
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
  (forall ( (|$alpha-11:n| Int) )
    (=>
      ( and true )
      (|f$unknown:16| 0 |$alpha-11:n|)
    )
  )
)
(check-sat)

(get-model)

