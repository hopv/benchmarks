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

(declare-fun |$innerFunc:3-loop$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:28|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:34|
  ( Int Int Int Int ) Bool
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

(declare-fun |$innerFunc:2-loopShift$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:19|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:20|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:49|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:140| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:161| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:164| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:293| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:415| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:424| Int) (|$cond-alpha-rename:425| Int) (|$cond-alpha-rename:427| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:432| Int) (|$knormal:200| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:131| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:133| (+ |$cond-alpha-rename:129| 1) |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:142| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:144| (+ |$cond-alpha-rename:140| 1) |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:153| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:155| (+ |$cond-alpha-rename:151| 1) |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:164| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:166| (+ |$cond-alpha-rename:162| 1) |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:285| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:287| (+ |$cond-alpha-rename:283| 1) |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:295| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:297| (+ |$cond-alpha-rename:293| 1) |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:305| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:307| (+ |$cond-alpha-rename:303| 1) |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:415| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:417| (+ |$cond-alpha-rename:413| 1) |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:427| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:429| (+ |$cond-alpha-rename:425| 1) |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:129| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:140| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:151| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:162| |$alpha-41:n| |$cond-alpha-rename:161|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:283| |$alpha-41:n| |$cond-alpha-rename:282|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:293| |$alpha-41:n| |$cond-alpha-rename:292|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:303| |$alpha-41:n| |$cond-alpha-rename:302|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:413| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:425| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-40:i| 1) |$cond-alpha-rename:420| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-40:i| 1) |$cond-alpha-rename:432| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:129| |$alpha-41:n| |$cond-alpha-rename:128|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:20| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:140| |$alpha-41:n| |$cond-alpha-rename:139|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:22| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:151| |$alpha-41:n| |$cond-alpha-rename:150|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:420| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:413| |$alpha-41:n| |$cond-alpha-rename:412|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:432| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:425| |$alpha-41:n| |$cond-alpha-rename:424|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:200| |$alpha-45:j| |$alpha-40:i| |$cond-alpha-rename:162| |$alpha-41:n| |$cond-alpha-rename:161|) (|update$unknown:49| |$alpha-40:i| |$alpha-41:n| |$alpha-40:i|) (|update$unknown:49| |$alpha-45:j| |$alpha-41:n| |$alpha-40:i|) (< (+ |$cond-alpha-rename:129| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:140| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:151| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:162| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:283| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:293| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:303| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:413| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:425| 1) |$alpha-40:i|) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:131| |$cond-alpha-rename:133|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:142| |$cond-alpha-rename:144|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:153| |$cond-alpha-rename:155|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:164| |$cond-alpha-rename:166|))) (not (= |$alpha-40:i| |$alpha-45:j|)) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:285| |$cond-alpha-rename:287|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:295| |$cond-alpha-rename:297|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:305| |$cond-alpha-rename:307|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:415| |$cond-alpha-rename:417|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:427| |$cond-alpha-rename:429|))) (not (= |$alpha-40:i| |$alpha-45:j|)) (= (+ |$cond-alpha-rename:283| 1) (+ |$cond-alpha-rename:413| 1)) (= (+ |$cond-alpha-rename:303| 1) (+ |$cond-alpha-rename:425| 1)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:200| |$alpha-45:j| |$alpha-44:$$tmp::2| (+ |$cond-alpha-rename:283| 1) |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:173| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:436| Int) (|$cond-alpha-rename:437| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:441| Int) (|$cond-alpha-rename:444| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:175| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:177| (+ |$cond-alpha-rename:173| 1) |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:315| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:317| (+ |$cond-alpha-rename:313| 1) |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:439| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:441| (+ |$cond-alpha-rename:437| 1) |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:173| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:313| |$alpha-41:n| |$cond-alpha-rename:312|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:437| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-40:i| 1) |$cond-alpha-rename:444| |$alpha-41:n| |$cond-alpha-rename:436|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:173| |$alpha-41:n| |$cond-alpha-rename:172|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:444| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:437| |$alpha-41:n| |$cond-alpha-rename:436|) (|update$unknown:49| |$alpha-40:i| |$alpha-41:n| |$alpha-40:i|) (< (+ |$cond-alpha-rename:173| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:313| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:437| 1) |$alpha-40:i|) (= |$alpha-40:i| |$alpha-45:j|) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:175| |$cond-alpha-rename:177|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:315| |$cond-alpha-rename:317|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:439| |$cond-alpha-rename:441|))) (= (+ |$cond-alpha-rename:313| 1) (+ |$cond-alpha-rename:437| 1)) )
      (|$innerFunc:1-a$unknown:8| (+ |$cond-alpha-rename:313| 1) |$alpha-45:j| |$alpha-44:$$tmp::2| (+ |$cond-alpha-rename:313| 1) |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:448| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:451| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:456| Int) (|$knormal:13| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:186| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:188| (+ |$cond-alpha-rename:184| 1) |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:197| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:199| (+ |$cond-alpha-rename:195| 1) |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:325| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:327| (+ |$cond-alpha-rename:323| 1) |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:335| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:337| (+ |$cond-alpha-rename:333| 1) |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:451| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:453| (+ |$cond-alpha-rename:449| 1) |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:184| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:195| |$alpha-6:n| |$cond-alpha-rename:194|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:323| |$alpha-6:n| |$cond-alpha-rename:322|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:333| |$alpha-6:n| |$cond-alpha-rename:332|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:449| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:5| (+ |$alpha-5:i| 1) |$cond-alpha-rename:456| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:10| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:184| |$alpha-6:n| |$cond-alpha-rename:183|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:456| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:449| |$alpha-6:n| |$cond-alpha-rename:448|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:13| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:195| |$alpha-6:n| |$cond-alpha-rename:194|) (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (< (+ |$cond-alpha-rename:184| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:195| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:323| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:333| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:449| 1) |$alpha-5:i|) (not (= |$alpha-5:i| |$V-reftype:5|)) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:186| |$cond-alpha-rename:188|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:197| |$cond-alpha-rename:199|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:325| |$cond-alpha-rename:327|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:335| |$cond-alpha-rename:337|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:451| |$cond-alpha-rename:453|))) (= (+ |$cond-alpha-rename:333| 1) (+ |$cond-alpha-rename:449| 1)) )
      (|update$unknown:49| |$V-reftype:5| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|kmpMatch$unknown:37| |$V-reftype:18| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:24| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:23| |$alpha-10:slen|) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:24| 0) (> |$alpha-10:slen| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:23| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:523| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:532| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:536| Int) (|$cond-alpha-rename:541| Int) (|$cond-alpha-rename:542| Int) (|$cond-alpha-rename:544| Int) (|$cond-alpha-rename:546| Int) (|$cond-alpha-rename:549| Int) (|$cond-alpha-rename:553| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:163| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:109| |$knormal:163| |$cond-alpha-rename:553| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-37:j|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:523| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:525| (+ |$cond-alpha-rename:521| 1) |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:534| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:536| (+ |$cond-alpha-rename:532| 1) |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:544| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:546| (+ |$cond-alpha-rename:542| 1) |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:521| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:532| |$alpha-33:plen| |$cond-alpha-rename:531|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:542| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$cond-alpha-rename:549| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:549| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:542| |$alpha-33:plen| |$cond-alpha-rename:541|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:553| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:521| |$alpha-33:plen| |$cond-alpha-rename:520|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|update$unknown:49| |$alpha-37:j| |$alpha-33:plen| |$alpha-37:j|) (< (+ |$cond-alpha-rename:521| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:532| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:542| 1) |$alpha-37:j|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:523| |$cond-alpha-rename:525|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:534| |$cond-alpha-rename:536|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:544| |$cond-alpha-rename:546|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:532| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:542| 1)) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:109| |$knormal:163| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:18| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:18| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:182| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|update$unknown:49| |$V-reftype:101| |$alpha-33:plen| |$alpha-37:j|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:101| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (>= |$alpha-36:i| 0) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$knormal:129| |$knormal:132|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (>= |$alpha-36:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:18| (+ |$alpha-37:j| 1) (- 1) |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) (|$knormal:132| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (< (+ |$alpha-36:i| 1) |$alpha-37:j|)) )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:129| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:13| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (= |$alpha-37:j| |$alpha-33:plen|) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (= |$alpha-37:j| |$alpha-33:plen|) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (not (= |$alpha-37:j| |$alpha-33:plen|)) )
      (|$innerFunc:2-loopShift$unknown:13| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|kmpMatch$unknown:40| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:93| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:93| |$alpha-12:plen|) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:93| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|make_array$unknown:45| |$V-reftype:28| (- 1) |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|make_array$unknown:45| |$V-reftype:36| (- 1) |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:47| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$knormal:47| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:31| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:42| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) (|$knormal:94| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:35| |$knormal:94| (+ |$knormal:77| 1) |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:35| |$knormal:94| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$knormal:77| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:34| (+ |$knormal:77| 1) |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:110| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:35| |$knormal:110| |$alpha-30:p| (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:35| |$knormal:110| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:127| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:35| |$knormal:127| (+ |$alpha-30:p| 1) (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:35| |$knormal:127| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$knormal:70| |$knormal:72|) )
      (|$innerFunc:3-loop$unknown:34| (+ |$alpha-30:p| 1) (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (= |$alpha-30:p| 0) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) (not (= |$alpha-30:p| 0)) )
      (|$innerFunc:3-loop$unknown:31| (- |$alpha-30:p| 1) |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:70| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:27| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:24| |$alpha-29:s| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (not (< |$alpha-29:s| |$alpha-23:slen|)) )
      (|$innerFunc:3-loop$unknown:35| (- 1) |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (not (< |$alpha-30:p| |$alpha-25:plen|)) )
      (|$innerFunc:3-loop$unknown:35| (- |$alpha-29:s| |$alpha-25:plen|) |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|kmpMatch$unknown:37| |$V-reftype:45| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:28| |$alpha-10:slen|) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:29| 0) (> |$alpha-10:slen| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:28| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|kmpMatch$unknown:40| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:97| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:97| |$alpha-12:plen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:97| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|make_array$unknown:45| |$V-reftype:55| (- 1) |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:51| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-12:plen| |$alpha-10:slen|) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:59| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:3-loop$unknown:34| 0 0 |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) )
      (|$innerFunc:2-loopShift$unknown:18| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-16:n| Int) (|$alpha-17:a| Int) (|$alpha-18:m| Int) )
    (=>
      ( and (|kmpMatch$unknown:37| |$V-reftype:70| |$alpha-16:n|) (> |$alpha-18:m| 0) (> |$alpha-16:n| 0) )
      (|make_array$unknown:45| |$V-reftype:70| |$alpha-17:a| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-16:n| Int) (|$alpha-18:m| Int) (|$alpha-19:b| Int) )
    (=>
      ( and (|kmpMatch$unknown:40| |$V-reftype:76| |$alpha-18:m| |$alpha-16:n|) (> |$alpha-18:m| 0) (> |$alpha-16:n| 0) )
      (|make_array$unknown:45| |$V-reftype:76| |$alpha-19:b| |$alpha-18:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:s| Int) (|$alpha-3:i| Int) )
    ( and (|make_array$unknown:45| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:355| Int) (|$cond-alpha-rename:357| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:355| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:352|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:357| (+ |$cond-alpha-rename:353| 1) |$alpha-6:n| |$cond-alpha-rename:352|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:353| |$alpha-6:n| |$cond-alpha-rename:352|) (< (+ |$cond-alpha-rename:353| 1) |$alpha-5:i|) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:355| |$cond-alpha-rename:357|))) )
      (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(check-sat)

(get-model)

