(set-info :origin "Verification conditions for the caml program
  let rec m x k =
    if x > 100
    then k (x-10)
    else
      let f r = m r k in
      m (x+11) f
  
  let main n =
    let k r = if n <= 101 then assert (r = 91) in
    m n k
")

(set-logic HORN)

(declare-fun |m$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |m$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |m$unknown:10|
  ( Int Int ) Bool
)

(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:18| Bool) (|$cond-alpha-rename:131| Bool) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:133| Int) (|$alpha-5:r| Int) (|$knormal:17| Bool) (|$cond-alpha-rename:134| Bool) )
    ( and (= |$knormal:18| (= |$alpha-5:r| 91)) (= |$knormal:17| (<= |$alpha-4:n| 101)) (= |$cond-alpha-rename:134| (> |$alpha-4:n| 100)) (= |$cond-alpha-rename:132| (+ |$alpha-4:n| 11)) (= |$cond-alpha-rename:131| (> |$alpha-4:n| 100)) (not |$knormal:18|) (not |$cond-alpha-rename:134|) (not |$cond-alpha-rename:131|) |$knormal:17| (|m$unknown:10| |$cond-alpha-rename:133| |$cond-alpha-rename:132|) (|m$unknown:10| |$alpha-5:r| |$cond-alpha-rename:133|) )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:261| Int) (|$alpha-1:x| Int) (|$cond-alpha-rename:263| Bool) (|$cond-alpha-rename:258| Bool) (|$cond-alpha-rename:254| Bool) (|$cond-alpha-rename:250| Bool) (|$cond-alpha-rename:246| Bool) (|$cond-alpha-rename:242| Bool) (|$cond-alpha-rename:241| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$cond-alpha-rename:262| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:256| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:244| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:247| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:255| Int) (|$knormal:1| Bool) (|$cond-alpha-rename:245| Bool) (|$cond-alpha-rename:249| Bool) (|$cond-alpha-rename:253| Bool) (|$cond-alpha-rename:257| Bool) (|$cond-alpha-rename:260| Bool) (|$V-reftype:27| Int) )
    (=>
      ( and (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:263| (> |$cond-alpha-rename:241| 100)) (= |$cond-alpha-rename:261| (+ |$cond-alpha-rename:241| 11)) (= |$cond-alpha-rename:260| (> |$cond-alpha-rename:241| 100)) (= |$cond-alpha-rename:259| (+ |$cond-alpha-rename:241| 11)) (= |$cond-alpha-rename:258| (> |$cond-alpha-rename:241| 100)) (= |$cond-alpha-rename:257| (> |$cond-alpha-rename:261| 100)) (= |$cond-alpha-rename:255| (+ |$cond-alpha-rename:261| 11)) (= |$cond-alpha-rename:254| (> |$cond-alpha-rename:261| 100)) (= |$cond-alpha-rename:253| (> |$cond-alpha-rename:262| 100)) (= |$cond-alpha-rename:251| (+ |$cond-alpha-rename:262| 11)) (= |$cond-alpha-rename:250| (> |$cond-alpha-rename:262| 100)) (= |$cond-alpha-rename:249| (> |$cond-alpha-rename:259| 100)) (= |$cond-alpha-rename:247| (+ |$cond-alpha-rename:259| 11)) (= |$cond-alpha-rename:246| (> |$cond-alpha-rename:259| 100)) (= |$cond-alpha-rename:245| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:243| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:242| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:263|) (not |$cond-alpha-rename:260|) (not |$cond-alpha-rename:258|) (not |$cond-alpha-rename:257|) (not |$cond-alpha-rename:254|) (not |$cond-alpha-rename:253|) (not |$cond-alpha-rename:250|) (not |$cond-alpha-rename:249|) (not |$cond-alpha-rename:246|) (not |$cond-alpha-rename:245|) (not |$cond-alpha-rename:242|) |$knormal:1| (|m$unknown:11| |$knormal:11| |$knormal:10| |$cond-alpha-rename:241|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:252|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:244|) (|m$unknown:10| |$cond-alpha-rename:262| |$cond-alpha-rename:256|) (|m$unknown:10| |$cond-alpha-rename:259| |$cond-alpha-rename:248|) (|m$unknown:10| |$cond-alpha-rename:256| |$cond-alpha-rename:255|) (|m$unknown:10| |$cond-alpha-rename:252| |$cond-alpha-rename:251|) (|m$unknown:10| |$cond-alpha-rename:248| |$cond-alpha-rename:247|) (|m$unknown:10| |$cond-alpha-rename:244| |$cond-alpha-rename:243|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$cond-alpha-rename:270| Int) (|$alpha-1:x| Int) (|$cond-alpha-rename:274| Bool) (|$cond-alpha-rename:269| Bool) (|$cond-alpha-rename:268| Bool) (|$cond-alpha-rename:266| Bool) (|$cond-alpha-rename:264| Int) (|$knormal:11| Int) (|$knormal:10| Int) (|$cond-alpha-rename:265| Bool) (|$cond-alpha-rename:267| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:271| Bool) (|$V-reftype:27| Int) )
    (=>
      ( and (= |$knormal:10| (- |$cond-alpha-rename:273| 10)) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:274| (> |$cond-alpha-rename:264| 100)) (= |$cond-alpha-rename:273| (- |$cond-alpha-rename:272| 10)) (= |$cond-alpha-rename:272| (+ |$cond-alpha-rename:264| 11)) (= |$cond-alpha-rename:271| (> |$cond-alpha-rename:264| 100)) (= |$cond-alpha-rename:270| (- |$cond-alpha-rename:270| 10)) (= |$cond-alpha-rename:270| (+ |$cond-alpha-rename:264| 11)) (= |$cond-alpha-rename:269| (> |$cond-alpha-rename:264| 100)) (= |$cond-alpha-rename:268| (> |$cond-alpha-rename:272| 100)) (= |$cond-alpha-rename:267| (> |$cond-alpha-rename:273| 100)) (= |$cond-alpha-rename:266| (> |$cond-alpha-rename:270| 100)) (= |$cond-alpha-rename:265| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:274|) (not |$cond-alpha-rename:271|) (not |$cond-alpha-rename:269|) |$knormal:1| |$cond-alpha-rename:268| |$cond-alpha-rename:267| |$cond-alpha-rename:266| |$cond-alpha-rename:265| (|m$unknown:11| |$knormal:11| |$knormal:10| |$cond-alpha-rename:264|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:275| Int) (|$knormal:11| Int) (|$cond-alpha-rename:287| Bool) (|$cond-alpha-rename:283| Bool) (|$cond-alpha-rename:279| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:286| Int) (|$knormal:10| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:277| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:276| Bool) (|$cond-alpha-rename:280| Bool) (|$cond-alpha-rename:284| Bool) (|$V-reftype:27| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:11| |$cond-alpha-rename:286|) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:287| (> |$cond-alpha-rename:275| 100)) (= |$cond-alpha-rename:285| (+ |$cond-alpha-rename:275| 11)) (= |$cond-alpha-rename:284| (> |$cond-alpha-rename:275| 100)) (= |$cond-alpha-rename:283| (> |$cond-alpha-rename:285| 100)) (= |$cond-alpha-rename:281| (+ |$cond-alpha-rename:285| 11)) (= |$cond-alpha-rename:280| (> |$cond-alpha-rename:285| 100)) (= |$cond-alpha-rename:279| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:277| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:276| (> |$alpha-1:x| 100)) (= |$alpha-1:x| (+ |$cond-alpha-rename:275| 11)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:287|) (not |$cond-alpha-rename:284|) (not |$cond-alpha-rename:283|) (not |$cond-alpha-rename:280|) (not |$cond-alpha-rename:279|) (not |$cond-alpha-rename:276|) |$knormal:1| (|m$unknown:12| |$cond-alpha-rename:286| |$knormal:10|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:282|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:278|) (|m$unknown:10| |$cond-alpha-rename:282| |$cond-alpha-rename:281|) (|m$unknown:10| |$cond-alpha-rename:278| |$cond-alpha-rename:277|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:288| Int) (|$knormal:11| Int) (|$cond-alpha-rename:294| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:289| Bool) (|$cond-alpha-rename:293| Int) (|$knormal:10| Int) (|$cond-alpha-rename:290| Bool) (|$cond-alpha-rename:291| Bool) (|$V-reftype:27| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:11| |$cond-alpha-rename:293|) (= |$knormal:10| (- |$cond-alpha-rename:292| 10)) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:294| (> |$cond-alpha-rename:288| 100)) (= |$cond-alpha-rename:292| (+ |$cond-alpha-rename:288| 11)) (= |$cond-alpha-rename:291| (> |$cond-alpha-rename:288| 100)) (= |$cond-alpha-rename:290| (> |$cond-alpha-rename:292| 100)) (= |$cond-alpha-rename:289| (> |$alpha-1:x| 100)) (= |$alpha-1:x| (+ |$cond-alpha-rename:288| 11)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:294|) (not |$cond-alpha-rename:291|) |$knormal:1| |$cond-alpha-rename:290| |$cond-alpha-rename:289| (|m$unknown:12| |$cond-alpha-rename:293| |$knormal:10|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$cond-alpha-rename:299| Bool) (|$cond-alpha-rename:295| Bool) (|$cond-alpha-rename:304| Bool) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:301| Int) (|$knormal:10| Int) (|$cond-alpha-rename:303| Bool) (|$knormal:1| Bool) (|$cond-alpha-rename:298| Bool) (|$cond-alpha-rename:302| Bool) (|$knormal:11| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:304| (= |$knormal:10| 91)) (= |$cond-alpha-rename:303| (<= |$alpha-1:x| 101)) (= |$cond-alpha-rename:302| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:300| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:299| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:298| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:296| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:295| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:302|) (not |$cond-alpha-rename:299|) (not |$cond-alpha-rename:298|) (not |$cond-alpha-rename:295|) |$knormal:1| |$cond-alpha-rename:304| |$cond-alpha-rename:303| (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:301|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:297|) (|m$unknown:10| |$cond-alpha-rename:301| |$cond-alpha-rename:300|) (|m$unknown:10| |$cond-alpha-rename:297| |$cond-alpha-rename:296|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$cond-alpha-rename:308| Bool) (|$cond-alpha-rename:306| Bool) (|$cond-alpha-rename:305| Bool) (|$cond-alpha-rename:307| Bool) (|$knormal:1| Bool) (|$knormal:11| Int) (|$alpha-1:x| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:308| (= |$knormal:10| 91)) (= |$cond-alpha-rename:307| (<= |$alpha-1:x| 101)) (= |$cond-alpha-rename:306| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:305| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) |$knormal:1| |$cond-alpha-rename:308| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$cond-alpha-rename:305| )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$cond-alpha-rename:316| Bool) (|$cond-alpha-rename:312| Bool) (|$knormal:1| Bool) (|$knormal:10| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:309| Bool) (|$cond-alpha-rename:313| Bool) (|$cond-alpha-rename:317| Bool) (|$knormal:11| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:317| (<= |$alpha-1:x| 101)) (= |$cond-alpha-rename:316| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:314| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:313| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:312| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:310| (+ |$alpha-1:x| 11)) (= |$cond-alpha-rename:309| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:317|) (not |$cond-alpha-rename:316|) (not |$cond-alpha-rename:313|) (not |$cond-alpha-rename:312|) (not |$cond-alpha-rename:309|) |$knormal:1| (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:315|) (|m$unknown:10| |$knormal:10| |$cond-alpha-rename:311|) (|m$unknown:10| |$cond-alpha-rename:315| |$cond-alpha-rename:314|) (|m$unknown:10| |$cond-alpha-rename:311| |$cond-alpha-rename:310|) )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:10| Int) (|$V-reftype:27| Int) (|$knormal:1| Bool) (|$cond-alpha-rename:318| Bool) (|$cond-alpha-rename:319| Bool) (|$cond-alpha-rename:320| Bool) (|$knormal:11| Int) (|$alpha-1:x| Int) )
    (=>
      ( and (= |$knormal:11| 1) (= |$knormal:10| (- |$alpha-1:x| 10)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:320| (<= |$alpha-1:x| 101)) (= |$cond-alpha-rename:319| (> |$alpha-1:x| 100)) (= |$cond-alpha-rename:318| (> |$alpha-1:x| 100)) (= |$V-reftype:27| |$knormal:11|) (not |$cond-alpha-rename:320|) |$knormal:1| |$cond-alpha-rename:319| |$cond-alpha-rename:318| )
      (|m$unknown:12| |$V-reftype:27| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Bool) (|$knormal:9| Int) (|$knormal:5| Int) (|$V-reftype:29| Int) )
    (=>
      ( and (= |$knormal:5| (+ |$alpha-1:x| 11)) (= |$knormal:1| (> |$alpha-1:x| 100)) (= |$V-reftype:29| |$knormal:9|) (not |$knormal:1|) true (|m$unknown:12| |$knormal:9| |$knormal:5|) )
      (|m$unknown:12| |$V-reftype:29| |$alpha-1:x|)
    )
  )
)
(check-sat)

(get-model)

