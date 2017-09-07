(set-info :origin "Verification conditions for the caml program
  
  let make_array n s i = assert (0 <= i && i < n); s
  let update i n a x = a i; let a j = if i=j then x else a j in a
  
  let kmpMatch slen str plen pat =
    let shiftArray0 = make_array plen (-1) in
  
    let rec loopShift i j shiftArray1 =
      if j = plen then shiftArray1 else
        if not (pat j = pat (i+1)) then
          if (i >= 0) then
            loopShift (shiftArray1 i) j shiftArray1
          else loopShift (-1) (j+1) shiftArray1
        else
          let shiftArray2 = if i+1 < j then update j plen shiftArray1 (i+1) else shiftArray1 in
            loopShift (shiftArray1 j) (j+1) shiftArray2
    in
  
    let shiftArray3 = loopShift (-1) 1 shiftArray0 in
  
    let rec loop s p =
      if p < plen then
        if  s < slen then
          if str s = pat p then
            loop (s+1) (p+1)
          else
            if p = 0 then
              loop (s+1) p
            else
              loop s (shiftArray3 (p-1) + 1)
          else (-1)
      else (s - plen)
    in
      loop 0 0
  
  let main n a m b =
    let array1 = make_array n a in
    let array2 = make_array m b in
    if n>0 && m>0 then (kmpMatch n array1 m array2; ()) else ()
")

(set-logic HORN)

(declare-fun |$innerFunc:3-loop$unknown:35|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:28|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:40|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:22|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:45|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:49|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:20|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:19|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:14|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:430| Bool) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:308| Bool) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:288| Bool) (|$cond-alpha-rename:19| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:158| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:145| Bool) (|$cond-alpha-rename:136| Int) (|$alpha-43:x| Int) (|$V-reftype:154| Int) (|$cond-alpha-rename:431| Bool) (|$cond-alpha-rename:419| Bool) (|$cond-alpha-rename:309| Bool) (|$cond-alpha-rename:299| Bool) (|$cond-alpha-rename:289| Bool) (|$cond-alpha-rename:21| Bool) (|$cond-alpha-rename:163| Bool) (|$cond-alpha-rename:152| Bool) (|$cond-alpha-rename:141| Bool) (|$cond-alpha-rename:130| Bool) (|$cond-alpha-rename:423| Bool) (|$cond-alpha-rename:301| Bool) (|$cond-alpha-rename:170| Bool) (|$cond-alpha-rename:148| Bool) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:416| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:128| Int) (|$alpha-40:i| Int) (|$cond-alpha-rename:131| Int) (|$alpha-41:n| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:415| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:429| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:433| Int) (|$alpha-44:$$tmp::2| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:22| Int) (|$knormal:200| Int) (|$cond-alpha-rename:137| Bool) (|$cond-alpha-rename:159| Bool) (|$cond-alpha-rename:291| Bool) (|$cond-alpha-rename:311| Bool) (|$cond-alpha-rename:435| Bool) (|$cond-alpha-rename:135| Bool) (|$cond-alpha-rename:146| Bool) (|$cond-alpha-rename:157| Bool) (|$cond-alpha-rename:168| Bool) (|$cond-alpha-rename:284| Bool) (|$cond-alpha-rename:294| Bool) (|$cond-alpha-rename:304| Bool) (|$cond-alpha-rename:414| Bool) (|$cond-alpha-rename:426| Bool) (|$knormal:199| Bool) (|$cond-alpha-rename:134| Bool) (|$cond-alpha-rename:138| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:156| Bool) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:298| Bool) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:418| Bool) (|$cond-alpha-rename:434| Int) )
    (=>
      ( and (= |$knormal:199| (= |$alpha-40:i| |$alpha-45:j|)) (= |$cond-alpha-rename:435| (< |$cond-alpha-rename:434| |$alpha-40:i|)) (= |$cond-alpha-rename:434| (+ |$cond-alpha-rename:425| 1)) (= |$cond-alpha-rename:433| (+ |$alpha-40:i| 1)) (= |$cond-alpha-rename:431| (not |$cond-alpha-rename:430|)) (= |$cond-alpha-rename:430| (= |$cond-alpha-rename:427| |$cond-alpha-rename:429|)) (= |$cond-alpha-rename:428| (+ |$cond-alpha-rename:425| 1)) (= |$cond-alpha-rename:426| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:423| (< |$cond-alpha-rename:422| |$alpha-40:i|)) (= |$cond-alpha-rename:422| (+ |$cond-alpha-rename:413| 1)) (= |$cond-alpha-rename:421| (+ |$alpha-40:i| 1)) (= |$cond-alpha-rename:419| (not |$cond-alpha-rename:418|)) (= |$cond-alpha-rename:418| (= |$cond-alpha-rename:415| |$cond-alpha-rename:417|)) (= |$cond-alpha-rename:416| (+ |$cond-alpha-rename:413| 1)) (= |$cond-alpha-rename:414| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:311| (< |$cond-alpha-rename:310| |$alpha-40:i|)) (= |$cond-alpha-rename:310| (+ |$cond-alpha-rename:303| 1)) (= |$cond-alpha-rename:309| (not |$cond-alpha-rename:308|)) (= |$cond-alpha-rename:308| (= |$cond-alpha-rename:305| |$cond-alpha-rename:307|)) (= |$cond-alpha-rename:306| (+ |$cond-alpha-rename:303| 1)) (= |$cond-alpha-rename:304| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:301| (< |$cond-alpha-rename:300| |$alpha-40:i|)) (= |$cond-alpha-rename:300| (+ |$cond-alpha-rename:293| 1)) (= |$cond-alpha-rename:299| (not |$cond-alpha-rename:298|)) (= |$cond-alpha-rename:298| (= |$cond-alpha-rename:295| |$cond-alpha-rename:297|)) (= |$cond-alpha-rename:296| (+ |$cond-alpha-rename:293| 1)) (= |$cond-alpha-rename:294| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:291| (< |$cond-alpha-rename:290| |$alpha-40:i|)) (= |$cond-alpha-rename:290| (+ |$cond-alpha-rename:283| 1)) (= |$cond-alpha-rename:289| (not |$cond-alpha-rename:288|)) (= |$cond-alpha-rename:288| (= |$cond-alpha-rename:285| |$cond-alpha-rename:287|)) (= |$cond-alpha-rename:286| (+ |$cond-alpha-rename:283| 1)) (= |$cond-alpha-rename:284| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:21| (= |$alpha-40:i| |$alpha-45:j|)) (= |$cond-alpha-rename:19| (+ |$cond-alpha-rename:425| 1)) (= |$cond-alpha-rename:19| (+ |$cond-alpha-rename:303| 1)) (= |$cond-alpha-rename:18| (+ |$cond-alpha-rename:293| 1)) (= |$cond-alpha-rename:171| (+ |$cond-alpha-rename:162| 1)) (= |$cond-alpha-rename:170| (< |$cond-alpha-rename:169| |$alpha-40:i|)) (= |$cond-alpha-rename:169| (+ |$cond-alpha-rename:162| 1)) (= |$cond-alpha-rename:168| (not |$cond-alpha-rename:167|)) (= |$cond-alpha-rename:167| (= |$cond-alpha-rename:164| |$cond-alpha-rename:166|)) (= |$cond-alpha-rename:165| (+ |$cond-alpha-rename:162| 1)) (= |$cond-alpha-rename:163| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:160| (+ |$cond-alpha-rename:151| 1)) (= |$cond-alpha-rename:159| (< |$cond-alpha-rename:158| |$alpha-40:i|)) (= |$cond-alpha-rename:158| (+ |$cond-alpha-rename:151| 1)) (= |$cond-alpha-rename:157| (not |$cond-alpha-rename:156|)) (= |$cond-alpha-rename:156| (= |$cond-alpha-rename:153| |$cond-alpha-rename:155|)) (= |$cond-alpha-rename:154| (+ |$cond-alpha-rename:151| 1)) (= |$cond-alpha-rename:152| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:149| (+ |$cond-alpha-rename:140| 1)) (= |$cond-alpha-rename:148| (< |$cond-alpha-rename:147| |$alpha-40:i|)) (= |$cond-alpha-rename:147| (+ |$cond-alpha-rename:140| 1)) (= |$cond-alpha-rename:146| (not |$cond-alpha-rename:145|)) (= |$cond-alpha-rename:145| (= |$cond-alpha-rename:142| |$cond-alpha-rename:144|)) (= |$cond-alpha-rename:143| (+ |$cond-alpha-rename:140| 1)) (= |$cond-alpha-rename:141| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:138| (+ |$cond-alpha-rename:129| 1)) (= |$cond-alpha-rename:137| (< |$cond-alpha-rename:136| |$alpha-40:i|)) (= |$cond-alpha-rename:136| (+ |$cond-alpha-rename:129| 1)) (= |$cond-alpha-rename:135| (not |$cond-alpha-rename:134|)) (= |$cond-alpha-rename:134| (= |$cond-alpha-rename:131| |$cond-alpha-rename:133|)) (= |$cond-alpha-rename:132| (+ |$cond-alpha-rename:129| 1)) (= |$cond-alpha-rename:130| (= |$alpha-40:i| |$alpha-41:n|)) (= |$alpha-43:x| (+ |$cond-alpha-rename:413| 1)) (= |$alpha-43:x| (+ |$cond-alpha-rename:283| 1)) (= |$V-reftype:154| |$knormal:200|) (not |$knormal:199|) (not |$cond-alpha-rename:431|) (not |$cond-alpha-rename:426|) (not |$cond-alpha-rename:419|) (not |$cond-alpha-rename:414|) (not |$cond-alpha-rename:309|) (not |$cond-alpha-rename:304|) (not |$cond-alpha-rename:299|) (not |$cond-alpha-rename:294|) (not |$cond-alpha-rename:289|) (not |$cond-alpha-rename:284|) (not |$cond-alpha-rename:21|) (not |$cond-alpha-rename:168|) (not |$cond-alpha-rename:163|) (not |$cond-alpha-rename:157|) (not |$cond-alpha-rename:152|) (not |$cond-alpha-rename:146|) (not |$cond-alpha-rename:141|) (not |$cond-alpha-rename:135|) (not |$cond-alpha-rename:130|) |$cond-alpha-rename:435| |$cond-alpha-rename:423| |$cond-alpha-rename:311| |$cond-alpha-rename:301| |$cond-alpha-rename:291| |$cond-alpha-rename:170| |$cond-alpha-rename:159| |$cond-alpha-rename:148| |$cond-alpha-rename:137| (|update$unknown:49| |$alpha-45:j| |$alpha-41:n| |$alpha-40:i|) (|update$unknown:49| |$alpha-40:i| |$alpha-41:n| |$alpha-40:i|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:200| |$alpha-45:j| |$alpha-40:i| |$cond-alpha-rename:162| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:432| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:425| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:420| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:413| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:22| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:151| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:20| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:140| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:129| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| |$cond-alpha-rename:433| |$cond-alpha-rename:432| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| |$cond-alpha-rename:421| |$cond-alpha-rename:420| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:425| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:413| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:303| |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:293| |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:283| |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:162| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:151| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:140| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:129| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:429| |$cond-alpha-rename:428| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:427| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:417| |$cond-alpha-rename:416| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:415| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:307| |$cond-alpha-rename:306| |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:305| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:297| |$cond-alpha-rename:296| |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:295| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:287| |$cond-alpha-rename:286| |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:285| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:166| |$cond-alpha-rename:165| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:164| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:155| |$cond-alpha-rename:154| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:153| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:142| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:133| |$cond-alpha-rename:132| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:131| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:128|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:154| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:442| Bool) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:182| Int) (|$cond-alpha-rename:178| Bool) (|$alpha-43:x| Int) (|$cond-alpha-rename:443| Bool) (|$cond-alpha-rename:319| Bool) (|$cond-alpha-rename:179| Bool) (|$knormal:199| Bool) (|$cond-alpha-rename:321| Bool) (|$alpha-44:$$tmp::2| Int) (|$cond-alpha-rename:445| Int) (|$cond-alpha-rename:437| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:440| Int) (|$cond-alpha-rename:436| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:176| Int) (|$cond-alpha-rename:172| Int) (|$alpha-40:i| Int) (|$cond-alpha-rename:175| Int) (|$alpha-41:n| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:441| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:444| Int) (|$cond-alpha-rename:181| Bool) (|$cond-alpha-rename:447| Bool) (|$cond-alpha-rename:174| Bool) (|$cond-alpha-rename:314| Bool) (|$cond-alpha-rename:438| Bool) (|$V-reftype:153| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:318| Bool) (|$cond-alpha-rename:446| Int) )
    (=>
      ( and (= |$knormal:199| (= |$alpha-40:i| |$alpha-45:j|)) (= |$cond-alpha-rename:447| (< |$cond-alpha-rename:446| |$alpha-40:i|)) (= |$cond-alpha-rename:446| (+ |$cond-alpha-rename:437| 1)) (= |$cond-alpha-rename:445| (+ |$alpha-40:i| 1)) (= |$cond-alpha-rename:443| (not |$cond-alpha-rename:442|)) (= |$cond-alpha-rename:442| (= |$cond-alpha-rename:439| |$cond-alpha-rename:441|)) (= |$cond-alpha-rename:440| (+ |$cond-alpha-rename:437| 1)) (= |$cond-alpha-rename:438| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:321| (< |$cond-alpha-rename:320| |$alpha-40:i|)) (= |$cond-alpha-rename:320| (+ |$cond-alpha-rename:313| 1)) (= |$cond-alpha-rename:319| (not |$cond-alpha-rename:318|)) (= |$cond-alpha-rename:318| (= |$cond-alpha-rename:315| |$cond-alpha-rename:317|)) (= |$cond-alpha-rename:316| (+ |$cond-alpha-rename:313| 1)) (= |$cond-alpha-rename:314| (= |$alpha-40:i| |$alpha-41:n|)) (= |$cond-alpha-rename:182| (+ |$cond-alpha-rename:173| 1)) (= |$cond-alpha-rename:181| (< |$cond-alpha-rename:180| |$alpha-40:i|)) (= |$cond-alpha-rename:180| (+ |$cond-alpha-rename:173| 1)) (= |$cond-alpha-rename:179| (not |$cond-alpha-rename:178|)) (= |$cond-alpha-rename:178| (= |$cond-alpha-rename:175| |$cond-alpha-rename:177|)) (= |$cond-alpha-rename:176| (+ |$cond-alpha-rename:173| 1)) (= |$cond-alpha-rename:174| (= |$alpha-40:i| |$alpha-41:n|)) (= |$alpha-43:x| (+ |$cond-alpha-rename:437| 1)) (= |$alpha-43:x| (+ |$cond-alpha-rename:313| 1)) (= |$V-reftype:153| |$alpha-43:x|) (not |$cond-alpha-rename:443|) (not |$cond-alpha-rename:438|) (not |$cond-alpha-rename:319|) (not |$cond-alpha-rename:314|) (not |$cond-alpha-rename:179|) (not |$cond-alpha-rename:174|) |$knormal:199| |$cond-alpha-rename:447| |$cond-alpha-rename:321| |$cond-alpha-rename:181| (|update$unknown:49| |$alpha-40:i| |$alpha-41:n| |$alpha-40:i|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:444| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:437| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:173| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| |$cond-alpha-rename:445| |$cond-alpha-rename:444| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:437| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:313| |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:173| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:441| |$cond-alpha-rename:440| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:439| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:317| |$cond-alpha-rename:316| |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:315| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:177| |$cond-alpha-rename:176| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:175| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:172|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:153| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:9| Int) (|$cond-alpha-rename:454| Bool) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:328| Bool) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:189| Bool) (|$alpha-8:x| Int) (|$cond-alpha-rename:450| Bool) (|$cond-alpha-rename:334| Bool) (|$cond-alpha-rename:324| Bool) (|$cond-alpha-rename:196| Bool) (|$cond-alpha-rename:185| Bool) (|$cond-alpha-rename:459| Bool) (|$cond-alpha-rename:331| Bool) (|$cond-alpha-rename:192| Bool) (|$cond-alpha-rename:456| Int) (|$V-reftype:5| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:188| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:186| Int) (|$alpha-5:i| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:326| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:448| Int) (|$cond-alpha-rename:452| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:10| Int) (|$knormal:13| Int) (|$cond-alpha-rename:203| Bool) (|$cond-alpha-rename:341| Bool) (|$cond-alpha-rename:11| Bool) (|$cond-alpha-rename:190| Bool) (|$cond-alpha-rename:201| Bool) (|$cond-alpha-rename:329| Bool) (|$cond-alpha-rename:339| Bool) (|$cond-alpha-rename:455| Bool) (|$cond-alpha-rename:191| Int) (|$cond-alpha-rename:200| Bool) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:330| Int) (|$cond-alpha-rename:338| Bool) (|$cond-alpha-rename:458| Int) )
    (=>
      ( and (= |$cond-alpha-rename:9| (+ |$cond-alpha-rename:449| 1)) (= |$cond-alpha-rename:9| (+ |$cond-alpha-rename:333| 1)) (= |$cond-alpha-rename:459| (< |$cond-alpha-rename:458| |$alpha-5:i|)) (= |$cond-alpha-rename:458| (+ |$cond-alpha-rename:449| 1)) (= |$cond-alpha-rename:457| (+ |$alpha-5:i| 1)) (= |$cond-alpha-rename:455| (not |$cond-alpha-rename:454|)) (= |$cond-alpha-rename:454| (= |$cond-alpha-rename:451| |$cond-alpha-rename:453|)) (= |$cond-alpha-rename:452| (+ |$cond-alpha-rename:449| 1)) (= |$cond-alpha-rename:450| (= |$alpha-5:i| |$alpha-6:n|)) (= |$cond-alpha-rename:341| (< |$cond-alpha-rename:340| |$alpha-5:i|)) (= |$cond-alpha-rename:340| (+ |$cond-alpha-rename:333| 1)) (= |$cond-alpha-rename:339| (not |$cond-alpha-rename:338|)) (= |$cond-alpha-rename:338| (= |$cond-alpha-rename:335| |$cond-alpha-rename:337|)) (= |$cond-alpha-rename:336| (+ |$cond-alpha-rename:333| 1)) (= |$cond-alpha-rename:334| (= |$alpha-5:i| |$alpha-6:n|)) (= |$cond-alpha-rename:331| (< |$cond-alpha-rename:330| |$alpha-5:i|)) (= |$cond-alpha-rename:330| (+ |$cond-alpha-rename:323| 1)) (= |$cond-alpha-rename:329| (not |$cond-alpha-rename:328|)) (= |$cond-alpha-rename:328| (= |$cond-alpha-rename:325| |$cond-alpha-rename:327|)) (= |$cond-alpha-rename:326| (+ |$cond-alpha-rename:323| 1)) (= |$cond-alpha-rename:324| (= |$alpha-5:i| |$alpha-6:n|)) (= |$cond-alpha-rename:204| (+ |$cond-alpha-rename:195| 1)) (= |$cond-alpha-rename:203| (< |$cond-alpha-rename:202| |$alpha-5:i|)) (= |$cond-alpha-rename:202| (+ |$cond-alpha-rename:195| 1)) (= |$cond-alpha-rename:201| (not |$cond-alpha-rename:200|)) (= |$cond-alpha-rename:200| (= |$cond-alpha-rename:197| |$cond-alpha-rename:199|)) (= |$cond-alpha-rename:198| (+ |$cond-alpha-rename:195| 1)) (= |$cond-alpha-rename:196| (= |$alpha-5:i| |$alpha-6:n|)) (= |$cond-alpha-rename:193| (+ |$cond-alpha-rename:184| 1)) (= |$cond-alpha-rename:192| (< |$cond-alpha-rename:191| |$alpha-5:i|)) (= |$cond-alpha-rename:191| (+ |$cond-alpha-rename:184| 1)) (= |$cond-alpha-rename:190| (not |$cond-alpha-rename:189|)) (= |$cond-alpha-rename:189| (= |$cond-alpha-rename:186| |$cond-alpha-rename:188|)) (= |$cond-alpha-rename:187| (+ |$cond-alpha-rename:184| 1)) (= |$cond-alpha-rename:185| (= |$alpha-5:i| |$alpha-6:n|)) (= |$cond-alpha-rename:11| (= |$alpha-5:i| |$V-reftype:5|)) (= |$alpha-8:x| (+ |$cond-alpha-rename:323| 1)) (not |$cond-alpha-rename:455|) (not |$cond-alpha-rename:450|) (not |$cond-alpha-rename:339|) (not |$cond-alpha-rename:334|) (not |$cond-alpha-rename:329|) (not |$cond-alpha-rename:324|) (not |$cond-alpha-rename:201|) (not |$cond-alpha-rename:196|) (not |$cond-alpha-rename:190|) (not |$cond-alpha-rename:185|) (not |$cond-alpha-rename:11|) |$cond-alpha-rename:459| |$cond-alpha-rename:341| |$cond-alpha-rename:331| |$cond-alpha-rename:203| |$cond-alpha-rename:192| (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:13| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:195| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:456| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:449| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:10| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:184| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:5| |$cond-alpha-rename:457| |$cond-alpha-rename:456| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:449| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:333| |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:323| |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:195| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:184| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:453| |$cond-alpha-rename:452| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:451| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:335| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:327| |$cond-alpha-rename:326| |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:325| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:199| |$cond-alpha-rename:198| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:197| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:188| |$cond-alpha-rename:187| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:186| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:183|) )
      (|update$unknown:49| |$V-reftype:5| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:34| Bool) (|$cond-alpha-rename:33| Bool) (|$alpha-10:slen| Int) (|$V-reftype:18| Int) (|$cond-alpha-rename:35| Bool) (|$alpha-12:plen| Int) )
    (=>
      ( and (= |$cond-alpha-rename:35| (and |$cond-alpha-rename:33| |$cond-alpha-rename:34|)) (= |$cond-alpha-rename:34| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:33| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:35| (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-10:slen|) )
      (|kmpMatch$unknown:37| |$V-reftype:18| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$V-reftype:18| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:155| Bool) (|$knormal:135| Bool) (|$knormal:134| Bool) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:135| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$V-reftype:18| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$knormal:182| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:164| Bool) (|$knormal:135| Bool) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:plen| Int) (|$cond-alpha-rename:26| Bool) (|$cond-alpha-rename:25| Bool) (|$cond-alpha-rename:102| Bool) (|$cond-alpha-rename:101| Bool) (|$V-reftype:72| Int) (|$cond-alpha-rename:27| Bool) (|$alpha-11:str| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:103| Bool) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:36| Bool) (|$cond-alpha-rename:37| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:38| (and |$cond-alpha-rename:36| |$cond-alpha-rename:37|)) (= |$cond-alpha-rename:37| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:36| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:27| (and |$cond-alpha-rename:25| |$cond-alpha-rename:26|)) (= |$cond-alpha-rename:26| (> |$cond-alpha-rename:24| 0)) (= |$cond-alpha-rename:25| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:103| (and |$cond-alpha-rename:101| |$cond-alpha-rename:102|)) (= |$cond-alpha-rename:102| (< |$alpha-11:str| |$alpha-10:slen|)) (= |$cond-alpha-rename:101| (<= 0 |$alpha-11:str|)) (= |$V-reftype:72| |$cond-alpha-rename:23|) |$cond-alpha-rename:38| |$cond-alpha-rename:27| |$cond-alpha-rename:103| (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:23| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$knormal:136| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$V-reftype:20| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$knormal:136| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$V-reftype:20| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$V-reftype:20| Int) (|$alpha-32:str| Int) (|$alpha-31:slen| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:182| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:177| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$V-reftype:20| Int) (|$alpha-32:str| Int) (|$alpha-31:slen| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$knormal:136| Int) (|$knormal:132| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$knormal:136| Int) (|$knormal:132| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$V-reftype:24| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:177| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$V-reftype:24| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$alpha-34:pat| Int) (|$alpha-33:plen| Int) (|$V-reftype:26| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:155| Bool) (|$knormal:135| Bool) (|$knormal:134| Bool) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:135| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$alpha-34:pat| Int) (|$alpha-33:plen| Int) (|$V-reftype:26| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$knormal:182| Int) (|$knormal:132| Int) (|$knormal:129| Int) (|$V-reftype:26| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:164| Bool) (|$knormal:135| Bool) (|$knormal:132| Int) (|$knormal:129| Int) (|$V-reftype:26| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$knormal:136| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:28| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$knormal:136| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:28| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$alpha-36:i| Int) (|$V-reftype:28| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$knormal:182| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:177| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$V-reftype:28| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$alpha-35:shiftArray0| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$V-reftype:30| Int) (|$knormal:136| Int) (|$knormal:155| Bool) (|$knormal:135| Bool) (|$knormal:134| Bool) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:135| Bool) (|$alpha-36:i| Int) (|$alpha-35:shiftArray0| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$V-reftype:30| Int) (|$knormal:136| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$knormal:182| Int) (|$V-reftype:30| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:164| Bool) (|$knormal:135| Bool) (|$V-reftype:30| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$knormal:182| Int) (|$V-reftype:36| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$knormal:149| Int) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:36| Int) (|$knormal:136| Int) (|$knormal:135| Bool) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:164| Bool) (|$knormal:135| Bool) (|$knormal:177| Int) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:36| Int) (|$knormal:174| Int) (|$knormal:128| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$V-reftype:38| Int) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:182| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:135| Bool) (|$knormal:136| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:149| Int) (|$V-reftype:38| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:128| Bool) (|$knormal:174| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:177| Int) (|$V-reftype:38| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$cond-alpha-rename:547| Bool) (|$cond-alpha-rename:539| Int) (|$cond-alpha-rename:530| Int) (|$cond-alpha-rename:526| Bool) (|$knormal:135| Bool) (|$cond-alpha-rename:548| Bool) (|$cond-alpha-rename:538| Bool) (|$cond-alpha-rename:527| Bool) (|$knormal:155| Bool) (|$cond-alpha-rename:540| Bool) (|$knormal:149| Int) (|$cond-alpha-rename:549| Int) (|$knormal:132| Int) (|$knormal:129| Int) (|$cond-alpha-rename:546| Int) (|$cond-alpha-rename:544| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:523| Int) (|$alpha-33:plen| Int) (|$cond-alpha-rename:553| Int) (|$V-reftype:109| Int) (|$knormal:163| Int) (|$knormal:161| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:524| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:535| Int) (|$cond-alpha-rename:541| Int) (|$cond-alpha-rename:545| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:542| Int) (|$cond-alpha-rename:550| Int) (|$knormal:136| Int) (|$cond-alpha-rename:529| Bool) (|$cond-alpha-rename:552| Bool) (|$cond-alpha-rename:522| Bool) (|$cond-alpha-rename:533| Bool) (|$cond-alpha-rename:543| Bool) (|$knormal:128| Bool) (|$cond-alpha-rename:528| Int) (|$cond-alpha-rename:537| Bool) (|$cond-alpha-rename:551| Int) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:161| (+ |$cond-alpha-rename:542| 1)) (= |$knormal:161| (+ |$cond-alpha-rename:532| 1)) (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (= |$cond-alpha-rename:552| (< |$cond-alpha-rename:551| |$alpha-37:j|)) (= |$cond-alpha-rename:551| (+ |$cond-alpha-rename:542| 1)) (= |$cond-alpha-rename:550| (+ |$alpha-37:j| 1)) (= |$cond-alpha-rename:548| (not |$cond-alpha-rename:547|)) (= |$cond-alpha-rename:547| (= |$cond-alpha-rename:544| |$cond-alpha-rename:546|)) (= |$cond-alpha-rename:545| (+ |$cond-alpha-rename:542| 1)) (= |$cond-alpha-rename:543| (= |$alpha-37:j| |$alpha-33:plen|)) (= |$cond-alpha-rename:540| (< |$cond-alpha-rename:539| |$alpha-37:j|)) (= |$cond-alpha-rename:539| (+ |$cond-alpha-rename:532| 1)) (= |$cond-alpha-rename:538| (not |$cond-alpha-rename:537|)) (= |$cond-alpha-rename:537| (= |$cond-alpha-rename:534| |$cond-alpha-rename:536|)) (= |$cond-alpha-rename:535| (+ |$cond-alpha-rename:532| 1)) (= |$cond-alpha-rename:533| (= |$alpha-37:j| |$alpha-33:plen|)) (= |$cond-alpha-rename:530| (+ |$cond-alpha-rename:521| 1)) (= |$cond-alpha-rename:529| (< |$cond-alpha-rename:528| |$alpha-37:j|)) (= |$cond-alpha-rename:528| (+ |$cond-alpha-rename:521| 1)) (= |$cond-alpha-rename:527| (not |$cond-alpha-rename:526|)) (= |$cond-alpha-rename:526| (= |$cond-alpha-rename:523| |$cond-alpha-rename:525|)) (= |$cond-alpha-rename:524| (+ |$cond-alpha-rename:521| 1)) (= |$cond-alpha-rename:522| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) (not |$cond-alpha-rename:548|) (not |$cond-alpha-rename:543|) (not |$cond-alpha-rename:538|) (not |$cond-alpha-rename:533|) (not |$cond-alpha-rename:527|) (not |$cond-alpha-rename:522|) |$knormal:155| |$cond-alpha-rename:552| |$cond-alpha-rename:540| |$cond-alpha-rename:529| (|update$unknown:49| |$alpha-37:j| |$alpha-33:plen| |$alpha-37:j|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:553| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:521| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:549| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:542| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| |$cond-alpha-rename:550| |$cond-alpha-rename:549| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:542| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:532| |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:521| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:546| |$cond-alpha-rename:545| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:544| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:536| |$cond-alpha-rename:535| |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:534| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:525| |$cond-alpha-rename:524| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:523| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:1-a$unknown:8| |$V-reftype:109| |$knormal:163| |$cond-alpha-rename:553| |$knormal:161| |$alpha-33:plen| |$alpha-37:j|) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:109| |$knormal:163| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$V-reftype:40| Int) (|$knormal:128| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$V-reftype:40| Int) (|$knormal:135| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:128| Bool) (|$V-reftype:41| Int) (|$knormal:136| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$V-reftype:42| Int) (|$knormal:149| Int) (|$knormal:155| Bool) (|$knormal:135| Bool) (|$knormal:134| Bool) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:135| Bool) (|$V-reftype:41| Int) (|$knormal:136| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$V-reftype:42| Int) (|$knormal:149| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:155| Bool) (|$knormal:135| Bool) (|$knormal:134| Bool) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:154| Int) (|$knormal:149| Int) (|$knormal:135| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:128| Bool) (|$knormal:155| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$V-reftype:40| Int) (|$knormal:182| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$V-reftype:42| Int) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:182| Int) (|$V-reftype:41| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:128| Bool) (|$knormal:135| Bool) (|$knormal:182| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:177| Int) (|$knormal:134| Bool) (|$knormal:164| Bool) (|$knormal:135| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:40| Int) (|$knormal:128| Bool) (|$knormal:174| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:128| Bool) (|$knormal:174| Int) (|$V-reftype:41| Int) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$V-reftype:42| Int) (|$knormal:177| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$V-reftype:101| Int) (|$knormal:128| Bool) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| (|update$unknown:49| |$V-reftype:101| |$alpha-33:plen| |$alpha-37:j|) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:101| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$alpha-36:i| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:1| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:135| Bool) (|$knormal:128| Bool) (|$knormal:134| Bool) )
    (=>
      ( and (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) |$knormal:164| |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (= |$cond-alpha-rename:1| |$alpha-36:i|) (= |$cond-alpha-rename:2| |$alpha-36:i|) )
      (|$innerFunc:2-loopShift$unknown:19| |$cond-alpha-rename:1| |$alpha-37:j| |$cond-alpha-rename:2| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:174| Int) (|$knormal:128| Bool) (|$alpha-36:i| Int) (|$knormal:131| Int) (|$alpha-31:slen| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$alpha-33:plen| Int) (|$knormal:132| Int) (|$knormal:135| Bool) (|$knormal:164| Bool) (|$knormal:134| Bool) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= |$knormal:164| (>= |$alpha-36:i| 0)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:164|) (not |$knormal:128|) |$knormal:135| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:161| Int) (|$knormal:134| Bool) (|$knormal:135| Bool) (|$knormal:155| Bool) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:128| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:135|) (not |$knormal:128|) |$knormal:155| true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (= |$cond-alpha-rename:3| |$alpha-37:j|) (= |$cond-alpha-rename:4| |$alpha-37:j|) )
      (|$innerFunc:2-loopShift$unknown:19| |$cond-alpha-rename:3| |$cond-alpha-rename:4| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Bool) (|$knormal:155| Bool) (|$knormal:128| Bool) (|$knormal:132| Int) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$knormal:131| Int) (|$alpha-36:i| Int) (|$knormal:135| Bool) (|$knormal:149| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:155| (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= |$knormal:135| (not |$knormal:134|)) (= |$knormal:134| (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:155|) (not |$knormal:135|) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (= |$cond-alpha-rename:5| |$alpha-37:j|) (= |$cond-alpha-rename:6| |$alpha-37:j|) )
      (|$innerFunc:2-loopShift$unknown:19| |$cond-alpha-rename:5| |$cond-alpha-rename:6| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:131| Int) (|$knormal:128| Bool) (|$alpha-33:plen| Int) (|$knormal:129| Int) (|$alpha-37:j| Int) (|$alpha-31:slen| Int) (|$alpha-36:i| Int) )
    (=>
      ( and (= |$knormal:131| (+ |$alpha-36:i| 1)) (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-33:plen| Int) (|$alpha-37:j| Int) (|$alpha-36:i| Int) (|$alpha-31:slen| Int) (|$V-reftype:37| Int) (|$knormal:128| Bool) )
    (=>
      ( and (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) |$knormal:128| true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:128| Bool) (|$alpha-31:slen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-33:plen| Int) (|$V-reftype:40| Int) )
    (=>
      ( and (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) |$knormal:128| true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:128| Bool) (|$alpha-33:plen| Int) (|$alpha-37:j| Int) (|$alpha-36:i| Int) (|$alpha-31:slen| Int) )
    (=>
      ( and (= |$knormal:128| (= |$alpha-37:j| |$alpha-33:plen|)) (not |$knormal:128|) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:13| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:41| Bool) (|$alpha-12:plen| Int) (|$V-reftype:24| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:39| Bool) (|$cond-alpha-rename:40| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:41| (and |$cond-alpha-rename:39| |$cond-alpha-rename:40|)) (= |$cond-alpha-rename:40| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:39| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:41| (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|) )
      (|kmpMatch$unknown:40| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:95| Bool) (|$cond-alpha-rename:94| Bool) (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:106| Bool) (|$cond-alpha-rename:93| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:44| Bool) (|$V-reftype:78| Int) (|$cond-alpha-rename:104| Bool) (|$cond-alpha-rename:105| Bool) (|$cond-alpha-rename:42| Bool) (|$cond-alpha-rename:43| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:96| (and |$cond-alpha-rename:94| |$cond-alpha-rename:95|)) (= |$cond-alpha-rename:95| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:94| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:44| (and |$cond-alpha-rename:42| |$cond-alpha-rename:43|)) (= |$cond-alpha-rename:43| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:42| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:106| (and |$cond-alpha-rename:104| |$cond-alpha-rename:105|)) (= |$cond-alpha-rename:105| (< |$alpha-13:pat| |$alpha-12:plen|)) (= |$cond-alpha-rename:104| (<= 0 |$alpha-13:pat|)) (= |$V-reftype:78| |$cond-alpha-rename:93|) |$cond-alpha-rename:96| |$cond-alpha-rename:44| |$cond-alpha-rename:106| (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:93| |$alpha-12:plen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:46| Bool) (|$cond-alpha-rename:45| Bool) (|$alpha-10:slen| Int) (|$V-reftype:28| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:47| Bool) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$cond-alpha-rename:47| (and |$cond-alpha-rename:45| |$cond-alpha-rename:46|)) (= |$cond-alpha-rename:46| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:45| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:47| (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:28| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:50| Bool) (|$alpha-12:plen| Int) (|$knormal:51| Int) (|$alpha-10:slen| Int) (|$knormal:49| Int) (|$cond-alpha-rename:109| Bool) (|$V-reftype:96| Int) (|$cond-alpha-rename:107| Bool) (|$cond-alpha-rename:108| Bool) (|$cond-alpha-rename:48| Bool) (|$cond-alpha-rename:49| Bool) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$cond-alpha-rename:50| (and |$cond-alpha-rename:48| |$cond-alpha-rename:49|)) (= |$cond-alpha-rename:49| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:48| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:109| (and |$cond-alpha-rename:107| |$cond-alpha-rename:108|)) (= |$cond-alpha-rename:108| (< |$knormal:51| |$alpha-12:plen|)) (= |$cond-alpha-rename:107| (<= 0 |$knormal:51|)) (= |$V-reftype:96| |$knormal:49|) |$cond-alpha-rename:50| |$cond-alpha-rename:109| (|make_array$unknown:45| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:96| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:52| Bool) (|$cond-alpha-rename:51| Bool) (|$alpha-10:slen| Int) (|$knormal:40| Int) (|$V-reftype:36| Int) (|$knormal:43| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:53| Bool) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$cond-alpha-rename:53| (and |$cond-alpha-rename:51| |$cond-alpha-rename:52|)) (= |$cond-alpha-rename:52| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:51| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:53| (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:36| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:56| Bool) (|$alpha-12:plen| Int) (|$knormal:43| Int) (|$knormal:51| Int) (|$knormal:40| Int) (|$alpha-10:slen| Int) (|$knormal:49| Int) (|$cond-alpha-rename:112| Bool) (|$V-reftype:96| Int) (|$cond-alpha-rename:110| Bool) (|$cond-alpha-rename:111| Bool) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:55| Bool) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$cond-alpha-rename:56| (and |$cond-alpha-rename:54| |$cond-alpha-rename:55|)) (= |$cond-alpha-rename:55| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:54| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:112| (and |$cond-alpha-rename:110| |$cond-alpha-rename:111|)) (= |$cond-alpha-rename:111| (< |$knormal:51| |$alpha-12:plen|)) (= |$cond-alpha-rename:110| (<= 0 |$knormal:51|)) (= |$V-reftype:96| |$knormal:49|) |$cond-alpha-rename:56| |$cond-alpha-rename:112| (|make_array$unknown:45| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:96| |$knormal:51| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:57| Bool) (|$alpha-12:plen| Int) (|$knormal:43| Int) (|$V-reftype:42| Int) (|$knormal:47| Int) (|$knormal:40| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:59| Bool) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$cond-alpha-rename:59| (and |$cond-alpha-rename:57| |$cond-alpha-rename:58|)) (= |$cond-alpha-rename:58| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:57| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:59| (|$innerFunc:3-loop$unknown:31| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$knormal:47| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:42| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:77| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$alpha-23:slen| Int) (|$V-reftype:45| Int) (|$knormal:70| Int) (|$alpha-30:p| Int) (|$knormal:76| Int) (|$knormal:69| Bool) (|$knormal:75| Bool) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:125| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$knormal:75| Bool) (|$knormal:68| Bool) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$alpha-23:slen| Int) (|$V-reftype:45| Int) (|$knormal:70| Int) (|$alpha-30:p| Int) (|$knormal:69| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Int) (|$knormal:75| Bool) (|$knormal:69| Bool) (|$knormal:76| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$V-reftype:47| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:77| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$V-reftype:47| Int) (|$alpha-24:str| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-30:p| Int) (|$knormal:69| Bool) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$V-reftype:47| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) (|$knormal:75| Bool) (|$knormal:106| Int) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Int) (|$knormal:75| Bool) (|$knormal:69| Bool) (|$knormal:76| Int) (|$alpha-30:p| Int) (|$V-reftype:51| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$V-reftype:51| Int) (|$alpha-30:p| Int) (|$knormal:69| Bool) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$V-reftype:51| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$knormal:68| Bool) (|$knormal:75| Bool) (|$knormal:106| Int) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:77| Int) (|$knormal:72| Int) (|$V-reftype:53| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$alpha-26:pat| Int) (|$alpha-30:p| Int) (|$knormal:76| Int) (|$knormal:69| Bool) (|$knormal:75| Bool) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:125| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$V-reftype:53| Int) (|$knormal:72| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$knormal:75| Bool) (|$knormal:68| Bool) (|$knormal:72| Int) (|$V-reftype:53| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$alpha-26:pat| Int) (|$alpha-30:p| Int) (|$knormal:69| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Int) (|$knormal:75| Bool) (|$knormal:69| Bool) (|$knormal:76| Int) (|$V-reftype:55| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:77| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$V-reftype:55| Int) (|$knormal:69| Bool) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:69| Bool) (|$V-reftype:55| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:68| Bool) (|$knormal:75| Bool) (|$knormal:106| Int) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:77| Int) (|$V-reftype:57| Int) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$knormal:76| Int) (|$knormal:69| Bool) (|$knormal:75| Bool) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:125| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$alpha-27:shiftArray0| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$V-reftype:57| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$knormal:75| Bool) (|$knormal:68| Bool) (|$V-reftype:57| Int) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$knormal:69| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:92| Int) (|$knormal:75| Bool) (|$knormal:69| Bool) (|$knormal:76| Int) (|$V-reftype:59| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:77| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$V-reftype:59| Int) (|$knormal:69| Bool) (|$knormal:122| Int) (|$knormal:125| Int) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:69| Bool) (|$V-reftype:59| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:68| Bool) (|$knormal:75| Bool) (|$knormal:106| Int) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:77| Int) (|$V-reftype:61| Int) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$knormal:76| Int) (|$knormal:69| Bool) (|$knormal:75| Bool) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:125| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$alpha-28:shiftArray3| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$V-reftype:61| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$knormal:75| Bool) (|$knormal:68| Bool) (|$V-reftype:61| Int) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$knormal:69| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:75| Bool) (|$knormal:69| Bool) (|$knormal:94| Int) (|$knormal:77| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:76| Int) (|$knormal:92| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) (|$V-reftype:137| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:137| |$knormal:94|) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:35| |$knormal:94| |$knormal:92| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:137| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:77| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:76| Int) (|$knormal:69| Bool) (|$knormal:75| Bool) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$knormal:92| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:69| Bool) (|$knormal:106| Int) (|$knormal:110| Int) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:68| Bool) (|$knormal:75| Bool) (|$V-reftype:134| Int) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (= |$V-reftype:134| |$knormal:110|) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:35| |$knormal:110| |$alpha-30:p| |$knormal:106| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:134| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:74| Bool) (|$knormal:68| Bool) (|$knormal:125| Int) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:127| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$V-reftype:131| Int) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (= |$V-reftype:131| |$knormal:127|) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:35| |$knormal:127| |$knormal:125| |$knormal:122| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:131| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:125| Int) (|$knormal:122| Int) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) |$knormal:74| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$knormal:125| |$knormal:122| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$knormal:75| Bool) (|$knormal:68| Bool) (|$alpha-25:plen| Int) (|$knormal:72| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$alpha-30:p| Int) (|$knormal:69| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not |$knormal:74|) |$knormal:75| |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$knormal:106| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:76| Int) (|$knormal:75| Bool) (|$knormal:69| Bool) (|$alpha-30:p| Int) (|$alpha-23:slen| Int) (|$knormal:70| Int) (|$alpha-29:s| Int) (|$knormal:72| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) (|$knormal:74| Bool) )
    (=>
      ( and (= |$knormal:76| (- |$alpha-30:p| 1)) (= |$knormal:75| (= |$alpha-30:p| 0)) (= |$knormal:74| (= |$knormal:70| |$knormal:72|)) (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (not |$knormal:75|) (not |$knormal:74|) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:68| Bool) (|$alpha-25:plen| Int) (|$alpha-30:p| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$alpha-23:slen| Int) (|$knormal:69| Bool) )
    (=>
      ( and (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:69| Bool) (|$alpha-23:slen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) )
    (=>
      ( and (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) |$knormal:69| |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:24| |$alpha-29:s| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:69| Bool) (|$alpha-23:slen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) (|$V-reftype:138| Int) )
    (=>
      ( and (= |$knormal:69| (< |$alpha-29:s| |$alpha-23:slen|)) (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:138| (- 1)) (not |$knormal:69|) |$knormal:68| (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:138| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$alpha-23:slen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$alpha-25:plen| Int) (|$knormal:68| Bool) )
    (=>
      ( and (= |$knormal:68| (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:139| (- |$alpha-29:s| |$alpha-25:plen|)) (not |$knormal:68|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:139| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:61| Bool) (|$cond-alpha-rename:60| Bool) (|$alpha-10:slen| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:62| Bool) (|$alpha-12:plen| Int) )
    (=>
      ( and (= |$cond-alpha-rename:62| (and |$cond-alpha-rename:60| |$cond-alpha-rename:61|)) (= |$cond-alpha-rename:61| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:60| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:62| (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-10:slen|) )
      (|kmpMatch$unknown:37| |$V-reftype:45| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:plen| Int) (|$cond-alpha-rename:31| Bool) (|$cond-alpha-rename:30| Bool) (|$cond-alpha-rename:114| Bool) (|$cond-alpha-rename:113| Bool) (|$V-reftype:72| Int) (|$cond-alpha-rename:32| Bool) (|$alpha-11:str| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:115| Bool) (|$cond-alpha-rename:65| Bool) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:63| Bool) (|$cond-alpha-rename:64| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:65| (and |$cond-alpha-rename:63| |$cond-alpha-rename:64|)) (= |$cond-alpha-rename:64| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:63| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:32| (and |$cond-alpha-rename:30| |$cond-alpha-rename:31|)) (= |$cond-alpha-rename:31| (> |$cond-alpha-rename:29| 0)) (= |$cond-alpha-rename:30| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:115| (and |$cond-alpha-rename:113| |$cond-alpha-rename:114|)) (= |$cond-alpha-rename:114| (< |$alpha-11:str| |$alpha-10:slen|)) (= |$cond-alpha-rename:113| (<= 0 |$alpha-11:str|)) (= |$V-reftype:72| |$cond-alpha-rename:28|) |$cond-alpha-rename:65| |$cond-alpha-rename:32| |$cond-alpha-rename:115| (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:28| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:68| Bool) (|$alpha-12:plen| Int) (|$V-reftype:51| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:66| Bool) (|$cond-alpha-rename:67| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:68| (and |$cond-alpha-rename:66| |$cond-alpha-rename:67|)) (= |$cond-alpha-rename:67| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:66| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:68| (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|kmpMatch$unknown:40| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:69| Bool) (|$cond-alpha-rename:117| Bool) (|$cond-alpha-rename:116| Bool) (|$cond-alpha-rename:98| Bool) (|$cond-alpha-rename:71| Bool) (|$cond-alpha-rename:100| Bool) (|$cond-alpha-rename:97| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:118| Bool) (|$V-reftype:78| Int) (|$cond-alpha-rename:99| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:99| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:98| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:71| (and |$cond-alpha-rename:69| |$cond-alpha-rename:70|)) (= |$cond-alpha-rename:70| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:69| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:118| (and |$cond-alpha-rename:116| |$cond-alpha-rename:117|)) (= |$cond-alpha-rename:117| (< |$alpha-13:pat| |$alpha-12:plen|)) (= |$cond-alpha-rename:116| (<= 0 |$alpha-13:pat|)) (= |$cond-alpha-rename:100| (and |$cond-alpha-rename:98| |$cond-alpha-rename:99|)) (= |$V-reftype:78| |$cond-alpha-rename:97|) |$cond-alpha-rename:71| |$cond-alpha-rename:118| |$cond-alpha-rename:100| (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:97| |$alpha-12:plen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:73| Bool) (|$cond-alpha-rename:72| Bool) (|$alpha-10:slen| Int) (|$V-reftype:55| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:74| Bool) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$cond-alpha-rename:74| (and |$cond-alpha-rename:72| |$cond-alpha-rename:73|)) (= |$cond-alpha-rename:73| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:72| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:74| (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:55| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:77| Bool) (|$alpha-12:plen| Int) (|$knormal:51| Int) (|$alpha-10:slen| Int) (|$knormal:49| Int) (|$cond-alpha-rename:121| Bool) (|$V-reftype:96| Int) (|$cond-alpha-rename:119| Bool) (|$cond-alpha-rename:120| Bool) (|$cond-alpha-rename:75| Bool) (|$cond-alpha-rename:76| Bool) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$cond-alpha-rename:77| (and |$cond-alpha-rename:75| |$cond-alpha-rename:76|)) (= |$cond-alpha-rename:76| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:75| (> |$alpha-10:slen| 0)) (= |$cond-alpha-rename:121| (and |$cond-alpha-rename:119| |$cond-alpha-rename:120|)) (= |$cond-alpha-rename:120| (< |$knormal:51| |$alpha-12:plen|)) (= |$cond-alpha-rename:119| (<= 0 |$knormal:51|)) (= |$V-reftype:96| |$knormal:49|) |$cond-alpha-rename:77| |$cond-alpha-rename:121| (|make_array$unknown:45| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:96| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:40| Int) (|$cond-alpha-rename:80| Bool) (|$alpha-12:plen| Int) (|$V-reftype:59| Int) (|$alpha-10:slen| Int) (|$cond-alpha-rename:78| Bool) (|$cond-alpha-rename:79| Bool) (|$knormal:43| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$cond-alpha-rename:80| (and |$cond-alpha-rename:78| |$cond-alpha-rename:79|)) (= |$cond-alpha-rename:79| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:78| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:80| (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:59| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:28| Int) (|$cond-alpha-rename:85| Bool) (|$cond-alpha-rename:84| Bool) (|$cond-alpha-rename:86| Bool) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) )
    (=>
      ( and (= |$knormal:28| 0) (= |$knormal:25| 0) (= |$cond-alpha-rename:86| (and |$cond-alpha-rename:84| |$cond-alpha-rename:85|)) (= |$cond-alpha-rename:85| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:84| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:86| )
      (|$innerFunc:3-loop$unknown:34| |$knormal:28| |$knormal:25| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Int) (|$cond-alpha-rename:88| Bool) (|$cond-alpha-rename:87| Bool) (|$cond-alpha-rename:89| Bool) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) )
    (=>
      ( and (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$cond-alpha-rename:89| (and |$cond-alpha-rename:87| |$cond-alpha-rename:88|)) (= |$cond-alpha-rename:88| (> |$alpha-12:plen| 0)) (= |$cond-alpha-rename:87| (> |$alpha-10:slen| 0)) |$cond-alpha-rename:89| )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$knormal:54| Bool) (|$V-reftype:70| Int) (|$alpha-16:n| Int) (|$knormal:52| Bool) (|$knormal:53| Bool) (|$alpha-17:a| Int) )
    (=>
      ( and (= |$knormal:54| (and |$knormal:52| |$knormal:53|)) (= |$knormal:53| (> |$alpha-18:m| 0)) (= |$knormal:52| (> |$alpha-16:n| 0)) |$knormal:54| (|kmpMatch$unknown:37| |$V-reftype:70| |$alpha-16:n|) )
      (|make_array$unknown:45| |$V-reftype:70| |$alpha-17:a| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:54| Bool) (|$alpha-18:m| Int) (|$V-reftype:76| Int) (|$alpha-16:n| Int) (|$knormal:52| Bool) (|$knormal:53| Bool) (|$alpha-19:b| Int) )
    (=>
      ( and (= |$knormal:54| (and |$knormal:52| |$knormal:53|)) (= |$knormal:53| (> |$alpha-18:m| 0)) (= |$knormal:52| (> |$alpha-16:n| 0)) |$knormal:54| (|kmpMatch$unknown:40| |$V-reftype:76| |$alpha-18:m| |$alpha-16:n|) )
      (|make_array$unknown:45| |$V-reftype:76| |$alpha-19:b| |$alpha-18:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:s| Int) (|$alpha-3:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-3:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-3:i|)) (not |$knormal:3|) (|make_array$unknown:45| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) true true )
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:8| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:358| Bool) (|$cond-alpha-rename:359| Bool) (|$cond-alpha-rename:361| Bool) (|$cond-alpha-rename:357| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:355| Int) (|$alpha-5:i| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:356| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:354| Bool) (|$alpha-8:x| Int) (|$cond-alpha-rename:360| Int) )
    (=>
      ( and (= |$cond-alpha-rename:8| |$alpha-5:i|) (= |$cond-alpha-rename:7| |$alpha-5:i|) (= |$cond-alpha-rename:361| (< |$cond-alpha-rename:360| |$alpha-5:i|)) (= |$cond-alpha-rename:360| (+ |$cond-alpha-rename:353| 1)) (= |$cond-alpha-rename:359| (not |$cond-alpha-rename:358|)) (= |$cond-alpha-rename:358| (= |$cond-alpha-rename:355| |$cond-alpha-rename:357|)) (= |$cond-alpha-rename:356| (+ |$cond-alpha-rename:353| 1)) (= |$cond-alpha-rename:354| (= |$alpha-5:i| |$alpha-6:n|)) (= |$alpha-8:x| (+ |$cond-alpha-rename:353| 1)) (not |$cond-alpha-rename:359|) (not |$cond-alpha-rename:354|) |$cond-alpha-rename:361| (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:353| |$alpha-6:n| |$cond-alpha-rename:352|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:357| |$cond-alpha-rename:356| |$alpha-6:n| |$cond-alpha-rename:352|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:355| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:352|) )
      (|update$unknown:49| |$cond-alpha-rename:7| |$alpha-6:n| |$cond-alpha-rename:8|)
    )
  )
)
(check-sat)

(get-model)

