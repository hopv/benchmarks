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

(declare-fun |f$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:16|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:1| Int) (|$cond-alpha-rename:91| Bool) (|$cond-alpha-rename:89| Int) (|$alpha-8:n| Int) (|$alpha-10:q| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Bool) (|$knormal:8| Bool) (|$cond-alpha-rename:90| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$cond-alpha-rename:91| (<= |$cond-alpha-rename:89| 0)) (= |$cond-alpha-rename:90| (- |$cond-alpha-rename:89| 1)) (= |$cond-alpha-rename:2| (= |$cond-alpha-rename:1| 0)) (= |$V-reftype:1| 0) (not |$knormal:8|) (not |$cond-alpha-rename:91|) |$cond-alpha-rename:2| (|f$unknown:16| |$cond-alpha-rename:1| |$cond-alpha-rename:89|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) )
      (|f$unknown:14| |$V-reftype:1| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:105| Int) (|$knormal:8| Bool) (|$cond-alpha-rename:109| Bool) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:104| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:39| Int) (|$alpha-10:q| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Bool) (|$cond-alpha-rename:106| Bool) (|$cond-alpha-rename:37| Bool) (|$V-reftype:5| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$cond-alpha-rename:39| 0) (= |$cond-alpha-rename:38| (= |$cond-alpha-rename:31| 0)) (= |$cond-alpha-rename:37| (<= |$cond-alpha-rename:33| 0)) (= |$cond-alpha-rename:36| (- |$cond-alpha-rename:33| 1)) (= |$cond-alpha-rename:35| (= |$cond-alpha-rename:34| 0)) (= |$cond-alpha-rename:109| (<= |$cond-alpha-rename:107| 0)) (= |$cond-alpha-rename:108| (- |$cond-alpha-rename:107| 1)) (= |$cond-alpha-rename:106| (<= |$cond-alpha-rename:104| 0)) (= |$cond-alpha-rename:105| (- |$cond-alpha-rename:104| 1)) (= |$V-reftype:5| 0) (not |$knormal:8|) (not |$cond-alpha-rename:37|) (not |$cond-alpha-rename:109|) (not |$cond-alpha-rename:106|) |$cond-alpha-rename:38| |$cond-alpha-rename:35| (|f$unknown:16| |$cond-alpha-rename:34| |$cond-alpha-rename:107|) (|f$unknown:16| |$cond-alpha-rename:32| |$cond-alpha-rename:33|) (|f$unknown:16| |$cond-alpha-rename:31| |$cond-alpha-rename:104|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:33|) )
      (|f$unknown:16| |$V-reftype:5| |$knormal:10|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$cond-alpha-rename:110| Int) (|$alpha-6:q| Int) (|$cond-alpha-rename:112| Bool) (|$cond-alpha-rename:111| Int) )
    ( and (= |$knormal:3| (= |$alpha-6:q| 0)) (= |$cond-alpha-rename:112| (<= |$cond-alpha-rename:110| 0)) (= |$cond-alpha-rename:111| (- |$cond-alpha-rename:110| 1)) (not |$knormal:3|) (not |$cond-alpha-rename:112|) (|f$unknown:16| |$alpha-6:q| |$cond-alpha-rename:110|) )
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$knormal:20| Int) (|$knormal:8| Bool) (|$cond-alpha-rename:169| Bool) (|$cond-alpha-rename:154| Bool) (|$cond-alpha-rename:148| Bool) (|$cond-alpha-rename:175| Bool) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:155| Int) (|$alpha-10:q| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:179| Int) (|$cond-alpha-rename:156| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:158| Bool) (|$cond-alpha-rename:170| Bool) (|$cond-alpha-rename:145| Bool) (|$cond-alpha-rename:151| Bool) (|$cond-alpha-rename:160| Bool) (|$cond-alpha-rename:174| Bool) (|$V-reftype:50| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:168| Int) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$knormal:20| |$cond-alpha-rename:177|) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$cond-alpha-rename:178| 0) (= |$cond-alpha-rename:176| 0) (= |$cond-alpha-rename:175| (= |$alpha-10:q| 0)) (= |$cond-alpha-rename:174| (<= |$cond-alpha-rename:162| 0)) (= |$cond-alpha-rename:173| (- |$cond-alpha-rename:162| 1)) (= |$cond-alpha-rename:171| 0) (= |$cond-alpha-rename:170| (= |$cond-alpha-rename:163| 0)) (= |$cond-alpha-rename:169| (<= |$cond-alpha-rename:165| 0)) (= |$cond-alpha-rename:168| (- |$cond-alpha-rename:165| 1)) (= |$cond-alpha-rename:167| (= |$cond-alpha-rename:166| 0)) (= |$cond-alpha-rename:160| (<= |$cond-alpha-rename:156| 0)) (= |$cond-alpha-rename:159| (- |$cond-alpha-rename:156| 1)) (= |$cond-alpha-rename:158| (= |$cond-alpha-rename:157| 0)) (= |$cond-alpha-rename:154| (<= |$cond-alpha-rename:152| 0)) (= |$cond-alpha-rename:153| (- |$cond-alpha-rename:152| 1)) (= |$cond-alpha-rename:151| (<= |$cond-alpha-rename:149| 0)) (= |$cond-alpha-rename:150| (- |$cond-alpha-rename:149| 1)) (= |$cond-alpha-rename:148| (<= |$cond-alpha-rename:146| 0)) (= |$cond-alpha-rename:147| (- |$cond-alpha-rename:146| 1)) (= |$cond-alpha-rename:145| (<= |$cond-alpha-rename:143| 0)) (= |$cond-alpha-rename:144| (- |$cond-alpha-rename:143| 1)) (= |$V-reftype:50| |$knormal:20|) (not |$knormal:8|) (not |$cond-alpha-rename:174|) (not |$cond-alpha-rename:169|) (not |$cond-alpha-rename:160|) (not |$cond-alpha-rename:154|) (not |$cond-alpha-rename:151|) (not |$cond-alpha-rename:148|) (not |$cond-alpha-rename:145|) |$cond-alpha-rename:175| |$cond-alpha-rename:170| |$cond-alpha-rename:167| |$cond-alpha-rename:158| (|f$unknown:17| |$cond-alpha-rename:177| |$cond-alpha-rename:176| |$cond-alpha-rename:173|) (|f$unknown:16| |$cond-alpha-rename:166| |$cond-alpha-rename:149|) (|f$unknown:16| |$cond-alpha-rename:164| |$cond-alpha-rename:165|) (|f$unknown:16| |$cond-alpha-rename:163| |$cond-alpha-rename:146|) (|f$unknown:16| |$cond-alpha-rename:161| |$cond-alpha-rename:162|) (|f$unknown:16| |$cond-alpha-rename:157| |$cond-alpha-rename:152|) (|f$unknown:16| |$cond-alpha-rename:155| |$cond-alpha-rename:156|) (|f$unknown:16| |$alpha-10:q| |$cond-alpha-rename:143|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$cond-alpha-rename:179| |$cond-alpha-rename:178| |$cond-alpha-rename:156|) (|f$unknown:15| |$cond-alpha-rename:172| |$cond-alpha-rename:171| |$cond-alpha-rename:165|) )
      (|f$unknown:17| |$V-reftype:50| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$cond-alpha-rename:196| Bool) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:194| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:181| Int) (|$knormal:9| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:199| Int) (|$knormal:10| Int) (|$cond-alpha-rename:180| Int) (|$alpha-10:q| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:188| Bool) (|$cond-alpha-rename:200| Bool) (|$V-reftype:18| Int) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$knormal:10| (- |$alpha-8:n| 1)) (= |$cond-alpha-rename:200| (<= |$cond-alpha-rename:198| 0)) (= |$cond-alpha-rename:199| (- |$cond-alpha-rename:198| 1)) (= |$cond-alpha-rename:196| (<= |$cond-alpha-rename:194| 0)) (= |$cond-alpha-rename:195| (- |$cond-alpha-rename:194| 1)) (= |$cond-alpha-rename:188| (<= |$cond-alpha-rename:186| 0)) (= |$cond-alpha-rename:180| 1) (= |$V-reftype:18| |$cond-alpha-rename:181|) (not |$knormal:8|) (not |$cond-alpha-rename:200|) (not |$cond-alpha-rename:196|) (not |$cond-alpha-rename:188|) (|f$unknown:16| |$cond-alpha-rename:197| |$cond-alpha-rename:198|) (|f$unknown:16| |$cond-alpha-rename:193| |$cond-alpha-rename:194|) (|f$unknown:16| |$cond-alpha-rename:185| |$cond-alpha-rename:186|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$cond-alpha-rename:181| |$cond-alpha-rename:180| |$cond-alpha-rename:186|) (|f$unknown:14| |$knormal:9| |$knormal:10|) (|f$unknown:14| |$knormal:9| |$cond-alpha-rename:199|) (|f$unknown:14| |$cond-alpha-rename:187| |$cond-alpha-rename:195|) )
      (|f$unknown:15| |$V-reftype:18| |$knormal:9| |$knormal:10|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$cond-alpha-rename:204| Bool) (|$cond-alpha-rename:201| Int) (|$alpha-10:q| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:203| Int) (|$alpha-8:n| Int) (|$cond-alpha-rename:202| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$cond-alpha-rename:204| (<= |$cond-alpha-rename:202| 0)) (= |$cond-alpha-rename:203| (- |$cond-alpha-rename:202| 1)) (= |$V-reftype:12| 1) (not |$knormal:8|) (not |$cond-alpha-rename:204|) (|f$unknown:16| |$cond-alpha-rename:201| |$cond-alpha-rename:202|) (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:14| |$cond-alpha-rename:182| |$cond-alpha-rename:203|) )
      (|f$unknown:14| |$V-reftype:12| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:q| Int) (|$cond-alpha-rename:225| Int) (|$alpha-11:n| Int) (|c| Int) (|$V-reftype:21| Int) (|$cond-alpha-rename:226| Int) )
    (=>
      ( and (= |$cond-alpha-rename:226| 0) (= |$alpha-12:q| 0) (= |$V-reftype:21| 1) (|f$unknown:14| |c| |$cond-alpha-rename:225|) (|f$unknown:14| |c| |$alpha-11:n|) )
      (|f$unknown:15| |$V-reftype:21| |c| |$alpha-11:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-8:n| Int) (|$knormal:21| Int) (|$alpha-10:q| Int) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) (= |$V-reftype:48| |$knormal:21|) |$knormal:8| (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) (|f$unknown:15| |$knormal:21| |$alpha-10:q| |$alpha-8:n|) true )
      (|f$unknown:17| |$V-reftype:48| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Bool) (|$alpha-10:q| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (= |$knormal:8| (<= |$alpha-8:n| 0)) |$knormal:8| (|f$unknown:16| |$alpha-10:q| |$alpha-8:n|) true )
      (|f$unknown:14| |$alpha-10:q| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:n| Int) (|$alpha-12:q| Int) )
    (=>
      ( and (= |$alpha-12:q| 0) )
      (|f$unknown:16| |$alpha-12:q| |$alpha-11:n|)
    )
  )
)
(check-sat)

(get-model)

