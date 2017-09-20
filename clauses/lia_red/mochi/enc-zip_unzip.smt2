(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as l-zipunzip
  USED: PEPM2013 as l-zipunzip
  *)
  
  let f g x y = g (x+1) (y+1)
  let rec unzip x k =
   if x=0 then k 0 0
   else
     unzip (x-1) (f k)
  
  let rec zip x y =
   if x=0 then
    if y=0 then 0
      else assert false
   else if y=0 then assert false
    else 1 + zip (x-1) (y-1)
  
  let main n =
   let x = unzip n zip in ()
")

(set-logic HORN)

(declare-fun |zip$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |zip$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |unzip$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |unzip$unknown:9|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ (+ |$cond-alpha-rename:116| 1) 1) (+ (+ |$cond-alpha-rename:115| 1) 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (- |$cond-alpha-rename:112| 1)) (|unzip$unknown:9| |$cond-alpha-rename:123| |$cond-alpha-rename:122| (- |$cond-alpha-rename:119| 1)) (|unzip$unknown:9| |$cond-alpha-rename:130| |$cond-alpha-rename:129| (- |$cond-alpha-rename:126| 1)) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:112| 0)) (not (= (- |$cond-alpha-rename:75| 1) 0)) (not (= |$cond-alpha-rename:119| 0)) (not (= (- |$cond-alpha-rename:67| 1) 0)) (not (= |$cond-alpha-rename:126| 0)) (not (= (- |$cond-alpha-rename:72| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ (+ |$cond-alpha-rename:115| 1) 1) (+ 0 1)) (= (+ (+ |$cond-alpha-rename:116| 1) 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:122| 1)) (= 0 (+ |$cond-alpha-rename:129| 1)) (= 0 (+ |$cond-alpha-rename:123| 1)) (= 0 (+ |$cond-alpha-rename:130| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ (+ |$cond-alpha-rename:116| 1) 1) (+ (+ |$cond-alpha-rename:115| 1) 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (- |$cond-alpha-rename:112| 1)) (|unzip$unknown:9| |$cond-alpha-rename:123| |$cond-alpha-rename:122| (- |$cond-alpha-rename:119| 1)) (= (- |$cond-alpha-rename:72| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:112| 0)) (not (= (- |$cond-alpha-rename:75| 1) 0)) (not (= |$cond-alpha-rename:119| 0)) (not (= (- |$cond-alpha-rename:67| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ (+ |$cond-alpha-rename:115| 1) 1) (+ 0 1)) (= (+ (+ |$cond-alpha-rename:116| 1) 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:122| 1)) (= 0 (+ |$cond-alpha-rename:123| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ (+ |$cond-alpha-rename:116| 1) 1) (+ (+ |$cond-alpha-rename:115| 1) 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (- |$cond-alpha-rename:112| 1)) (|unzip$unknown:9| |$cond-alpha-rename:137| |$cond-alpha-rename:136| (- |$cond-alpha-rename:133| 1)) (= (- |$cond-alpha-rename:67| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:112| 0)) (not (= (- |$cond-alpha-rename:75| 1) 0)) (not (= |$cond-alpha-rename:133| 0)) (not (= (- |$cond-alpha-rename:72| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ (+ |$cond-alpha-rename:115| 1) 1) (+ 0 1)) (= (+ (+ |$cond-alpha-rename:116| 1) 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:136| 1)) (= 0 (+ |$cond-alpha-rename:137| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ (+ |$cond-alpha-rename:116| 1) 1) (+ (+ |$cond-alpha-rename:115| 1) 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:116| |$cond-alpha-rename:115| (- |$cond-alpha-rename:112| 1)) (= (- |$cond-alpha-rename:67| 1) 0) (= (- |$cond-alpha-rename:72| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:112| 0)) (not (= (- |$cond-alpha-rename:75| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ (+ |$cond-alpha-rename:115| 1) 1) (+ 0 1)) (= (+ (+ |$cond-alpha-rename:116| 1) 1) (+ 0 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ 0 1) (+ 0 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:144| |$cond-alpha-rename:143| (- |$cond-alpha-rename:140| 1)) (|unzip$unknown:9| |$cond-alpha-rename:151| |$cond-alpha-rename:150| (- |$cond-alpha-rename:147| 1)) (= (- |$cond-alpha-rename:75| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:140| 0)) (not (= (- |$cond-alpha-rename:67| 1) 0)) (not (= |$cond-alpha-rename:147| 0)) (not (= (- |$cond-alpha-rename:72| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ 0 1) (+ 0 1)) (= (+ 0 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:143| 1)) (= 0 (+ |$cond-alpha-rename:150| 1)) (= 0 (+ |$cond-alpha-rename:144| 1)) (= 0 (+ |$cond-alpha-rename:151| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ 0 1) (+ 0 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:144| |$cond-alpha-rename:143| (- |$cond-alpha-rename:140| 1)) (= (- |$cond-alpha-rename:75| 1) 0) (= (- |$cond-alpha-rename:72| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:140| 0)) (not (= (- |$cond-alpha-rename:67| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ 0 1) (+ 0 1)) (= (+ 0 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:143| 1)) (= 0 (+ |$cond-alpha-rename:144| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ 0 1) (+ 0 1) |$cond-alpha-rename:68|) (|unzip$unknown:9| |$cond-alpha-rename:158| |$cond-alpha-rename:157| (- |$cond-alpha-rename:154| 1)) (= (- |$cond-alpha-rename:75| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:154| 0)) (not (= (- |$cond-alpha-rename:72| 1) 0)) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ 0 1) (+ 0 1)) (= (+ 0 1) (+ 0 1)) (= 0 (+ |$cond-alpha-rename:157| 1)) (= 0 (+ |$cond-alpha-rename:158| 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:80| Int) )
    (=>
      ( and (|unzip$unknown:10| |$cond-alpha-rename:80| (+ 0 1) (+ 0 1) |$cond-alpha-rename:68|) (= (- |$cond-alpha-rename:75| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (= (- |$cond-alpha-rename:72| 1) 0) (= (- |$cond-alpha-rename:67| 1) 0) (not (= |$cond-alpha-rename:68| 0)) (not (= |$cond-alpha-rename:72| 0)) (not (= |$cond-alpha-rename:75| 0)) (not (= |$cond-alpha-rename:67| 0)) (= (+ 0 1) (+ 0 1)) (= (+ 0 1) (+ 0 1)) )
      (|unzip$unknown:11| |$cond-alpha-rename:80| (- |$cond-alpha-rename:67| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:165| Int) (|$knormal:17| Int) )
    (=>
      ( and (|unzip$unknown:9| |$cond-alpha-rename:165| |$cond-alpha-rename:164| (- |$cond-alpha-rename:161| 1)) (|zip$unknown:14| |$knormal:17| 0 0) (= |$alpha-4:x| 0) (not (= |$cond-alpha-rename:161| 0)) (not (= |$alpha-4:x| 0)) (= 0 (+ |$cond-alpha-rename:164| 1)) (= 0 (+ |$cond-alpha-rename:165| 1)) )
      (|unzip$unknown:11| |$knormal:17| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:17| Int) )
    (=>
      ( and (|zip$unknown:14| |$knormal:17| 0 0) (= |$alpha-4:x| 0) (= |$alpha-4:x| 0) )
      (|unzip$unknown:11| |$knormal:17| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$knormal:12| Int) )
    (=>
      ( and (|unzip$unknown:11| |$knormal:12| (- |$alpha-4:x| 1)) (not (= |$alpha-4:x| 0)) )
      (|unzip$unknown:11| |$knormal:12| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) )
    (=>
      ( and (|unzip$unknown:9| |$cond-alpha-rename:172| |$cond-alpha-rename:171| (- |$cond-alpha-rename:168| 1)) (not (= |$cond-alpha-rename:168| 0)) (not (= |$alpha-8:n| 0)) )
      (|zip$unknown:13| (+ |$cond-alpha-rename:172| 1) (+ |$cond-alpha-rename:171| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-8:n| Int) )
    (=>
      ( and (= |$alpha-8:n| 0) )
      (|zip$unknown:13| 0 0)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:24| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:14| |$knormal:24| (- |$alpha-7:y| 1) (- |$alpha-6:x| 1)) (not (= |$alpha-6:x| 0)) (not (= |$alpha-7:y| 0)) )
      (|zip$unknown:14| (+ 1 |$knormal:24|) |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-6:x| 0) (= |$alpha-7:y| 0) )
      (|zip$unknown:14| 0 |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-6:x| 0) (not (= |$alpha-7:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (= |$alpha-7:y| 0) (not (= |$alpha-6:x| 0)) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:x| Int) (|$alpha-7:y| Int) )
    (=>
      ( and (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (not (= |$alpha-6:x| 0)) (not (= |$alpha-7:y| 0)) )
      (|zip$unknown:13| (- |$alpha-7:y| 1) (- |$alpha-6:x| 1))
    )
  )
)
(check-sat)

(get-model)

