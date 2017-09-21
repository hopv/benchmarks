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

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:15|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:89| Int) )
    (=>
      ( and (not (<= |$cond-alpha-rename:24| 0)) (not (<= |$alpha-8:n| 0)) (not (<= |$cond-alpha-rename:89| 0)) (|f$unknown:16| 0 |$cond-alpha-rename:89|) (|f$unknown:16| |$cond-alpha-rename:23| |$cond-alpha-rename:24|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$cond-alpha-rename:29| 0 |$cond-alpha-rename:24|) )
      (|f$unknown:16| 0 (- |$alpha-8:n| 1))
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:q| Int) (|$cond-alpha-rename:92| Int) )
    ( and (not (= |$alpha-6:q| 0)) (not (<= |$cond-alpha-rename:92| 0)) (|f$unknown:16| |$alpha-6:q| |$cond-alpha-rename:92|) )
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:139| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:132| 0 |$cond-alpha-rename:127|) (|f$unknown:15| |$cond-alpha-rename:139| 0 |$cond-alpha-rename:120|) (|f$unknown:16| 0 |$alpha-8:n|) (|f$unknown:16| 0 |$cond-alpha-rename:113|) (|f$unknown:16| |$cond-alpha-rename:119| |$cond-alpha-rename:120|) (|f$unknown:16| |$cond-alpha-rename:123| |$cond-alpha-rename:124|) (|f$unknown:16| 0 |$cond-alpha-rename:116|) (|f$unknown:16| |$cond-alpha-rename:126| |$cond-alpha-rename:127|) (|f$unknown:17| |$cond-alpha-rename:137| 0 (- |$cond-alpha-rename:124| 1)) (not (<= |$cond-alpha-rename:113| 0)) (not (<= |$cond-alpha-rename:116| 0)) (not (<= |$cond-alpha-rename:120| 0)) (not (<= |$cond-alpha-rename:127| 0)) (not (<= |$cond-alpha-rename:124| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:17| |$cond-alpha-rename:137| 0 |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:q| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:183| Int) (|$knormal:9| Int) )
    (=>
      ( and (|f$unknown:15| |$cond-alpha-rename:173| 1 |$cond-alpha-rename:183|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:16| |$cond-alpha-rename:182| |$cond-alpha-rename:183|) (not (<= |$cond-alpha-rename:183| 0)) (not (<= |$alpha-8:n| 0)) )
      (|f$unknown:15| |$cond-alpha-rename:173| |$knormal:9| (- |$alpha-8:n| 1))
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

