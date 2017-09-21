(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert(0<=i && i<n); 0
  let update i n des x = des i; let a j = if i=j then x else des i in a
  let rec inc3 m a i =
   if i>=m
   then ()
   else
     let a = update i m a ((a i)+1) in
       inc3 m a (i+1)
  let main n i =
    if i=0 && n>0 then inc3 n (make_array n) i else ()
")

(set-logic HORN)

(declare-fun |inc3$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |inc3$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |inc3$unknown:11|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) (|$knormal:13| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:213| 1) (+ |$cond-alpha-rename:270| 1)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (= |$cond-alpha-rename:5| |$cond-alpha-rename:8|)) (not (>= |$cond-alpha-rename:427| |$alpha-5:n|)) (|update$unknown:19| |$cond-alpha-rename:8| |$alpha-5:n| |$cond-alpha-rename:427|) (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|) (|inc3$unknown:12| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:12| |$cond-alpha-rename:427| |$alpha-5:n|) (|inc3$unknown:11| |$knormal:13| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:7| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:429| |$cond-alpha-rename:427| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:270| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:215| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:213| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:146| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:143| |$cond-alpha-rename:5| |$alpha-5:n|) )
      (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) (|$knormal:13| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:213| 1) (+ |$cond-alpha-rename:270| 1)) (not (>= |$cond-alpha-rename:5| |$alpha-5:n|)) (not (= |$cond-alpha-rename:5| |$cond-alpha-rename:8|)) (not (>= |$cond-alpha-rename:8| |$alpha-5:n|)) (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|) (|inc3$unknown:12| |$cond-alpha-rename:8| |$alpha-5:n|) (|inc3$unknown:12| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$knormal:13| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:7| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:270| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:215| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:213| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:146| |$cond-alpha-rename:5| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:143| |$cond-alpha-rename:5| |$alpha-5:n|) )
      (|update$unknown:19| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:5|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:434| Int) (|$cond-alpha-rename:437| Int) (|$cond-alpha-rename:439| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:354| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:347| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (= (+ |$cond-alpha-rename:351| 1) (+ |$cond-alpha-rename:357| 1)) (not (>= |$cond-alpha-rename:359| |$alpha-9:m|)) (not (= |$cond-alpha-rename:359| |$knormal:30|)) (not (= |$cond-alpha-rename:359| |$cond-alpha-rename:362|)) (not (>= |$cond-alpha-rename:437| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:432| |$alpha-9:m|)) (|update$unknown:19| |$knormal:30| |$alpha-9:m| |$cond-alpha-rename:432|) (|update$unknown:19| |$cond-alpha-rename:362| |$alpha-9:m| |$cond-alpha-rename:437|) (|update$unknown:19| |$cond-alpha-rename:359| |$alpha-9:m| |$cond-alpha-rename:359|) (|inc3$unknown:12| |$cond-alpha-rename:437| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:432| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:439| |$cond-alpha-rename:437| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:434| |$cond-alpha-rename:432| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:366| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:364| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:361| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:357| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:354| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:351| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:349| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:347| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:344| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:341| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:338| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$cond-alpha-rename:359| |$alpha-9:m|) )
      (|inc3$unknown:11| |$cond-alpha-rename:366| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:434| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:354| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:347| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (= (+ |$cond-alpha-rename:351| 1) (+ |$cond-alpha-rename:357| 1)) (not (>= |$cond-alpha-rename:359| |$alpha-9:m|)) (not (= |$cond-alpha-rename:359| |$knormal:30|)) (not (= |$cond-alpha-rename:359| |$cond-alpha-rename:362|)) (not (>= |$cond-alpha-rename:362| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:432| |$alpha-9:m|)) (|update$unknown:19| |$knormal:30| |$alpha-9:m| |$cond-alpha-rename:432|) (|update$unknown:19| |$cond-alpha-rename:359| |$alpha-9:m| |$cond-alpha-rename:359|) (|inc3$unknown:12| |$cond-alpha-rename:432| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:362| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:434| |$cond-alpha-rename:432| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:366| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:364| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:361| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:357| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:354| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:351| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:349| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:347| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:344| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:341| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:338| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$cond-alpha-rename:359| |$alpha-9:m|) )
      (|inc3$unknown:11| |$cond-alpha-rename:366| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:442| Int) (|$cond-alpha-rename:444| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:354| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:347| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (= (+ |$cond-alpha-rename:351| 1) (+ |$cond-alpha-rename:357| 1)) (not (>= |$cond-alpha-rename:359| |$alpha-9:m|)) (not (= |$cond-alpha-rename:359| |$knormal:30|)) (not (= |$cond-alpha-rename:359| |$cond-alpha-rename:362|)) (not (>= |$cond-alpha-rename:442| |$alpha-9:m|)) (not (>= |$knormal:30| |$alpha-9:m|)) (|update$unknown:19| |$cond-alpha-rename:362| |$alpha-9:m| |$cond-alpha-rename:442|) (|update$unknown:19| |$cond-alpha-rename:359| |$alpha-9:m| |$cond-alpha-rename:359|) (|inc3$unknown:12| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:442| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:444| |$cond-alpha-rename:442| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:366| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:364| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:361| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:357| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:354| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:351| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:349| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:347| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:344| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:341| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:338| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$cond-alpha-rename:359| |$alpha-9:m|) )
      (|inc3$unknown:11| |$cond-alpha-rename:366| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:347| Int) (|$cond-alpha-rename:349| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:359| Int) (|$cond-alpha-rename:361| Int) (|$cond-alpha-rename:362| Int) (|$cond-alpha-rename:364| Int) (|$cond-alpha-rename:366| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:354| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:347| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (= (+ |$cond-alpha-rename:351| 1) (+ |$cond-alpha-rename:357| 1)) (not (>= |$cond-alpha-rename:359| |$alpha-9:m|)) (not (= |$cond-alpha-rename:359| |$knormal:30|)) (not (= |$cond-alpha-rename:359| |$cond-alpha-rename:362|)) (not (>= |$cond-alpha-rename:362| |$alpha-9:m|)) (not (>= |$knormal:30| |$alpha-9:m|)) (|update$unknown:19| |$cond-alpha-rename:359| |$alpha-9:m| |$cond-alpha-rename:359|) (|inc3$unknown:12| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:362| |$alpha-9:m|) (|inc3$unknown:12| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:366| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:364| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:361| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:357| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:354| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:351| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:349| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:347| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:344| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:341| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:338| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:335| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$cond-alpha-rename:359| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$cond-alpha-rename:359| |$alpha-9:m|) )
      (|inc3$unknown:11| |$cond-alpha-rename:366| |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:374| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:449| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:374| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:371| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (not (>= |$knormal:30| |$alpha-9:m|)) (not (>= |$cond-alpha-rename:447| |$alpha-9:m|)) (|update$unknown:19| |$knormal:30| |$alpha-9:m| |$cond-alpha-rename:447|) (|update$unknown:19| |$knormal:30| |$alpha-9:m| |$knormal:30|) (|inc3$unknown:12| |$cond-alpha-rename:447| |$alpha-9:m|) (|inc3$unknown:12| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:449| |$cond-alpha-rename:447| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:374| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:371| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:368| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$knormal:30| |$alpha-9:m|) )
      (|inc3$unknown:11| (+ |$knormal:21| 1) |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:368| Int) (|$cond-alpha-rename:371| Int) (|$cond-alpha-rename:374| Int) (|$knormal:21| Int) (|$knormal:30| Int) )
    (=>
      ( and (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:374| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:371| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:319| 1)) (= (+ |$knormal:21| 1) (+ |$cond-alpha-rename:316| 1)) (not (>= |$knormal:30| |$alpha-9:m|)) (not (>= |$knormal:30| |$alpha-9:m|)) (|update$unknown:19| |$knormal:30| |$alpha-9:m| |$knormal:30|) (|inc3$unknown:12| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:12| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:374| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:371| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:368| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:320| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:319| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:316| |$knormal:30| |$alpha-9:m|) (|inc3$unknown:11| |$cond-alpha-rename:313| |$knormal:30| |$alpha-9:m|) )
      (|inc3$unknown:11| (+ |$knormal:21| 1) |$knormal:30| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:454| Int) (|$knormal:34| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) (< |$knormal:34| |$alpha-13:n|) (<= 0 |$knormal:34|) (not (>= |$cond-alpha-rename:452| |$alpha-13:n|)) (|update$unknown:19| |$knormal:34| |$alpha-13:n| |$cond-alpha-rename:452|) (|inc3$unknown:12| |$cond-alpha-rename:452| |$alpha-13:n|) (|inc3$unknown:11| |$cond-alpha-rename:454| |$cond-alpha-rename:452| |$alpha-13:n|) )
      (|inc3$unknown:11| 0 |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) (|$knormal:34| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) (< |$knormal:34| |$alpha-13:n|) (<= 0 |$knormal:34|) (not (>= |$knormal:34| |$alpha-13:n|)) (|inc3$unknown:12| |$knormal:34| |$alpha-13:n|) )
      (|inc3$unknown:11| 0 |$knormal:34| |$alpha-13:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:20| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|inc3$unknown:13| |$knormal:20| (+ |$alpha-11:i| 1) |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| |$knormal:20| |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) (|$knormal:21| Int) )
    (=>
      ( and (not (>= |$alpha-11:i| |$alpha-9:m|)) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:11| |$knormal:21| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:12| (+ |$alpha-11:i| 1) |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:i| Int) (|$alpha-9:m| Int) )
    (=>
      ( and (>= |$alpha-11:i| |$alpha-9:m|) (|inc3$unknown:12| |$alpha-11:i| |$alpha-9:m|) )
      (|inc3$unknown:13| 1 |$alpha-11:i| |$alpha-9:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:459| Int) )
    ( and (> |$alpha-1:n| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (not (>= |$cond-alpha-rename:457| |$alpha-1:n|)) (|update$unknown:19| |$alpha-2:i| |$alpha-1:n| |$cond-alpha-rename:457|) (|inc3$unknown:12| |$cond-alpha-rename:457| |$alpha-1:n|) (|inc3$unknown:11| |$cond-alpha-rename:459| |$cond-alpha-rename:457| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) )
    ( and (> |$alpha-1:n| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) (not (>= |$alpha-2:i| |$alpha-1:n|)) (|inc3$unknown:12| |$alpha-2:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:219| Int) )
    (=>
      ( and (not (>= |$alpha-4:i| |$alpha-5:n|)) (|inc3$unknown:12| |$alpha-4:i| |$alpha-5:n|) (|inc3$unknown:11| |$cond-alpha-rename:219| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:19| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-13:n| Int) )
    (=>
      ( and (> |$alpha-13:n| 0) )
      (|inc3$unknown:12| 0 |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

