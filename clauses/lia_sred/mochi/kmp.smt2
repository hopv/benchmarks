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
  (forall ( (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:561| Int) (|$cond-alpha-rename:562| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:566| Int) (|$cond-alpha-rename:572| Int) (|$cond-alpha-rename:573| Int) (|$cond-alpha-rename:575| Int) (|$cond-alpha-rename:577| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:584| Int) (|$cond-alpha-rename:586| Int) (|$cond-alpha-rename:588| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:595| Int) (|$cond-alpha-rename:597| Int) (|$cond-alpha-rename:599| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:771| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:774| Int) (|$cond-alpha-rename:776| Int) (|$cond-alpha-rename:781| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:784| Int) (|$cond-alpha-rename:786| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:792| Int) (|$cond-alpha-rename:794| Int) (|$cond-alpha-rename:796| Int) (|$cond-alpha-rename:958| Int) (|$cond-alpha-rename:959| Int) (|$cond-alpha-rename:961| Int) (|$cond-alpha-rename:963| Int) (|$cond-alpha-rename:966| Int) (|$cond-alpha-rename:970| Int) (|$cond-alpha-rename:971| Int) (|$cond-alpha-rename:973| Int) (|$cond-alpha-rename:975| Int) (|$cond-alpha-rename:978| Int) (|$knormal:200| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:564| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:561|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:566| (+ |$cond-alpha-rename:562| 1) |$alpha-41:n| |$cond-alpha-rename:561|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:575| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:572|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:577| (+ |$cond-alpha-rename:573| 1) |$alpha-41:n| |$cond-alpha-rename:572|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:586| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:583|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:588| (+ |$cond-alpha-rename:584| 1) |$alpha-41:n| |$cond-alpha-rename:583|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:597| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:594|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:599| (+ |$cond-alpha-rename:595| 1) |$alpha-41:n| |$cond-alpha-rename:594|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:774| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:771|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:776| (+ |$cond-alpha-rename:772| 1) |$alpha-41:n| |$cond-alpha-rename:771|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:784| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:781|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:786| (+ |$cond-alpha-rename:782| 1) |$alpha-41:n| |$cond-alpha-rename:781|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:794| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:791|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:796| (+ |$cond-alpha-rename:792| 1) |$alpha-41:n| |$cond-alpha-rename:791|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:961| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:958|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:963| (+ |$cond-alpha-rename:959| 1) |$alpha-41:n| |$cond-alpha-rename:958|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:973| |$alpha-40:i| |$alpha-41:n| |$cond-alpha-rename:970|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:975| (+ |$cond-alpha-rename:971| 1) |$alpha-41:n| |$cond-alpha-rename:970|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:562| |$alpha-41:n| |$cond-alpha-rename:561|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:573| |$alpha-41:n| |$cond-alpha-rename:572|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:584| |$alpha-41:n| |$cond-alpha-rename:583|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:595| |$alpha-41:n| |$cond-alpha-rename:594|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:772| |$alpha-41:n| |$cond-alpha-rename:771|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:782| |$alpha-41:n| |$cond-alpha-rename:781|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:792| |$alpha-41:n| |$cond-alpha-rename:791|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:959| |$alpha-41:n| |$cond-alpha-rename:958|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-40:i| |$cond-alpha-rename:971| |$alpha-41:n| |$cond-alpha-rename:970|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-40:i| 1) |$cond-alpha-rename:966| |$alpha-41:n| |$cond-alpha-rename:958|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-40:i| 1) |$cond-alpha-rename:978| |$alpha-41:n| |$cond-alpha-rename:970|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:562| |$alpha-41:n| |$cond-alpha-rename:561|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:67| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:573| |$alpha-41:n| |$cond-alpha-rename:572|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:69| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:584| |$alpha-41:n| |$cond-alpha-rename:583|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:966| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:959| |$alpha-41:n| |$cond-alpha-rename:958|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:978| |$alpha-40:i| |$alpha-40:i| |$cond-alpha-rename:971| |$alpha-41:n| |$cond-alpha-rename:970|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:200| |$alpha-45:j| |$alpha-40:i| |$cond-alpha-rename:595| |$alpha-41:n| |$cond-alpha-rename:594|) (|update$unknown:49| |$alpha-40:i| |$alpha-41:n| |$alpha-40:i|) (|update$unknown:49| |$alpha-45:j| |$alpha-41:n| |$alpha-40:i|) (< (+ |$cond-alpha-rename:959| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:971| 1) |$alpha-40:i|) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:961| |$cond-alpha-rename:963|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:973| |$cond-alpha-rename:975|))) (not (not (= |$cond-alpha-rename:564| |$cond-alpha-rename:566|))) (not (not (= |$cond-alpha-rename:575| |$cond-alpha-rename:577|))) (not (not (= |$cond-alpha-rename:586| |$cond-alpha-rename:588|))) (not (not (= |$cond-alpha-rename:597| |$cond-alpha-rename:599|))) (not (not (= |$cond-alpha-rename:774| |$cond-alpha-rename:776|))) (not (not (= |$cond-alpha-rename:784| |$cond-alpha-rename:786|))) (not (not (= |$cond-alpha-rename:794| |$cond-alpha-rename:796|))) (not (= |$alpha-40:i| |$alpha-41:n|)) (not (= |$alpha-40:i| |$alpha-45:j|)) (= (+ |$cond-alpha-rename:772| 1) (+ |$cond-alpha-rename:959| 1)) (= (+ |$cond-alpha-rename:792| 1) (+ |$cond-alpha-rename:971| 1)) (< (+ |$cond-alpha-rename:562| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:573| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:584| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:595| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:772| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:782| 1) |$alpha-40:i|) (< (+ |$cond-alpha-rename:792| 1) |$alpha-40:i|) )
      (|$innerFunc:1-a$unknown:8| |$knormal:200| |$alpha-45:j| |$alpha-44:$$tmp::2| (+ |$cond-alpha-rename:792| 1) |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-41:n| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$cond-alpha-rename:605| Int) (|$cond-alpha-rename:606| Int) (|$cond-alpha-rename:608| Int) (|$cond-alpha-rename:610| Int) (|$cond-alpha-rename:801| Int) (|$cond-alpha-rename:802| Int) (|$cond-alpha-rename:804| Int) (|$cond-alpha-rename:806| Int) (|$cond-alpha-rename:982| Int) (|$cond-alpha-rename:983| Int) (|$cond-alpha-rename:985| Int) (|$cond-alpha-rename:987| Int) (|$cond-alpha-rename:990| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:608| |$alpha-45:j| |$alpha-41:n| |$cond-alpha-rename:605|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:610| (+ |$cond-alpha-rename:606| 1) |$alpha-41:n| |$cond-alpha-rename:605|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:804| |$alpha-45:j| |$alpha-41:n| |$cond-alpha-rename:801|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:806| (+ |$cond-alpha-rename:802| 1) |$alpha-41:n| |$cond-alpha-rename:801|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:985| |$alpha-45:j| |$alpha-41:n| |$cond-alpha-rename:982|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:987| (+ |$cond-alpha-rename:983| 1) |$alpha-41:n| |$cond-alpha-rename:982|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-45:j| |$cond-alpha-rename:606| |$alpha-41:n| |$cond-alpha-rename:605|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-45:j| |$cond-alpha-rename:802| |$alpha-41:n| |$cond-alpha-rename:801|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-45:j| |$cond-alpha-rename:983| |$alpha-41:n| |$cond-alpha-rename:982|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-45:j| (+ |$alpha-45:j| 1) |$cond-alpha-rename:990| |$alpha-41:n| |$cond-alpha-rename:982|) (|$innerFunc:2-loopShift$unknown:20| |$alpha-44:$$tmp::2| |$alpha-45:j| |$alpha-45:j| |$cond-alpha-rename:606| |$alpha-41:n| |$cond-alpha-rename:605|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:990| |$alpha-45:j| |$alpha-45:j| |$cond-alpha-rename:983| |$alpha-41:n| |$cond-alpha-rename:982|) (|update$unknown:49| |$alpha-45:j| |$alpha-41:n| |$alpha-45:j|) (< (+ |$cond-alpha-rename:983| 1) |$alpha-45:j|) (not (= |$alpha-45:j| |$alpha-41:n|)) (not (not (= |$cond-alpha-rename:985| |$cond-alpha-rename:987|))) (not (not (= |$cond-alpha-rename:608| |$cond-alpha-rename:610|))) (not (not (= |$cond-alpha-rename:804| |$cond-alpha-rename:806|))) (not (= |$alpha-45:j| |$alpha-41:n|)) (= (+ |$cond-alpha-rename:802| 1) (+ |$cond-alpha-rename:983| 1)) (< (+ |$cond-alpha-rename:606| 1) |$alpha-45:j|) (< (+ |$cond-alpha-rename:802| 1) |$alpha-45:j|) )
      (|$innerFunc:1-a$unknown:8| (+ |$cond-alpha-rename:802| 1) |$alpha-45:j| |$alpha-44:$$tmp::2| (+ |$cond-alpha-rename:802| 1) |$alpha-41:n| |$alpha-45:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:1002| Int) (|$cond-alpha-rename:616| Int) (|$cond-alpha-rename:617| Int) (|$cond-alpha-rename:619| Int) (|$cond-alpha-rename:621| Int) (|$cond-alpha-rename:627| Int) (|$cond-alpha-rename:628| Int) (|$cond-alpha-rename:630| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:811| Int) (|$cond-alpha-rename:812| Int) (|$cond-alpha-rename:814| Int) (|$cond-alpha-rename:816| Int) (|$cond-alpha-rename:821| Int) (|$cond-alpha-rename:822| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:826| Int) (|$cond-alpha-rename:994| Int) (|$cond-alpha-rename:995| Int) (|$cond-alpha-rename:997| Int) (|$cond-alpha-rename:999| Int) (|$knormal:13| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:619| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:616|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:621| (+ |$cond-alpha-rename:617| 1) |$alpha-6:n| |$cond-alpha-rename:616|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:630| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:627|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:632| (+ |$cond-alpha-rename:628| 1) |$alpha-6:n| |$cond-alpha-rename:627|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:814| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:811|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:816| (+ |$cond-alpha-rename:812| 1) |$alpha-6:n| |$cond-alpha-rename:811|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:824| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:821|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:826| (+ |$cond-alpha-rename:822| 1) |$alpha-6:n| |$cond-alpha-rename:821|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:997| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:994|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:999| (+ |$cond-alpha-rename:995| 1) |$alpha-6:n| |$cond-alpha-rename:994|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:617| |$alpha-6:n| |$cond-alpha-rename:616|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:628| |$alpha-6:n| |$cond-alpha-rename:627|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:812| |$alpha-6:n| |$cond-alpha-rename:811|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:822| |$alpha-6:n| |$cond-alpha-rename:821|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:995| |$alpha-6:n| |$cond-alpha-rename:994|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:5| (+ |$alpha-5:i| 1) |$cond-alpha-rename:1002| |$alpha-6:n| |$cond-alpha-rename:994|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:10| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:617| |$alpha-6:n| |$cond-alpha-rename:616|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1002| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:995| |$alpha-6:n| |$cond-alpha-rename:994|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:13| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:628| |$alpha-6:n| |$cond-alpha-rename:627|) (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (< (+ |$cond-alpha-rename:995| 1) |$alpha-5:i|) (not (not (= |$cond-alpha-rename:997| |$cond-alpha-rename:999|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:619| |$cond-alpha-rename:621|))) (not (not (= |$cond-alpha-rename:630| |$cond-alpha-rename:632|))) (not (not (= |$cond-alpha-rename:814| |$cond-alpha-rename:816|))) (not (not (= |$cond-alpha-rename:824| |$cond-alpha-rename:826|))) (not (= |$alpha-5:i| |$V-reftype:5|)) (not (= |$alpha-5:i| |$alpha-6:n|)) (= (+ |$cond-alpha-rename:812| 1) (+ |$cond-alpha-rename:995| 1)) (< (+ |$cond-alpha-rename:617| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:628| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:812| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:822| 1) |$alpha-5:i|) )
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:180| Int) (|$cond-alpha-rename:181| Int) )
    (=>
      ( and (> |$cond-alpha-rename:181| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$alpha-11:str|) (< |$alpha-11:str| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:180| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:180| |$alpha-11:str| |$alpha-10:slen|)
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
  (forall ( (|$V-reftype:109| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:1122| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:1125| Int) (|$cond-alpha-rename:1127| Int) (|$cond-alpha-rename:1130| Int) (|$cond-alpha-rename:1134| Int) (|$cond-alpha-rename:1135| Int) (|$cond-alpha-rename:1137| Int) (|$cond-alpha-rename:1139| Int) (|$cond-alpha-rename:1145| Int) (|$cond-alpha-rename:1146| Int) (|$cond-alpha-rename:1148| Int) (|$cond-alpha-rename:1150| Int) (|$cond-alpha-rename:1155| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:163| Int) )
    (=>
      ( and (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1146| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1123| 1)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$knormal:129| |$knormal:132|))) (not (not (= |$cond-alpha-rename:1148| |$cond-alpha-rename:1150|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1137| |$cond-alpha-rename:1139|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1125| |$cond-alpha-rename:1127|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (< (+ |$cond-alpha-rename:1146| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1135| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1123| 1) |$alpha-37:j|) (|update$unknown:49| |$alpha-37:j| |$alpha-33:plen| |$alpha-37:j|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1155| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1135| |$alpha-33:plen| |$cond-alpha-rename:1134|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1130| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1123| |$alpha-33:plen| |$cond-alpha-rename:1122|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$cond-alpha-rename:1130| |$alpha-33:plen| |$cond-alpha-rename:1122|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1146| |$alpha-33:plen| |$cond-alpha-rename:1145|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1135| |$alpha-33:plen| |$cond-alpha-rename:1134|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1123| |$alpha-33:plen| |$cond-alpha-rename:1122|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1150| (+ |$cond-alpha-rename:1146| 1) |$alpha-33:plen| |$cond-alpha-rename:1145|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1148| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1145|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1139| (+ |$cond-alpha-rename:1135| 1) |$alpha-33:plen| |$cond-alpha-rename:1134|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1137| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1134|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1127| (+ |$cond-alpha-rename:1123| 1) |$alpha-33:plen| |$cond-alpha-rename:1122|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1125| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1122|) (|$innerFunc:1-a$unknown:8| |$V-reftype:109| |$knormal:163| |$cond-alpha-rename:1155| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-37:j|) )
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
  (forall ( (|$V-reftype:37| Int) (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:18| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$V-reftype:37| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:37| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:38| |$V-reftype:37| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:18| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:40| |$alpha-33:plen| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:360| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$alpha-13:pat|) (< |$alpha-13:pat| |$alpha-12:plen|) (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:360| |$alpha-12:plen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:360| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
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
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$knormal:51|) (< |$knormal:51| |$alpha-12:plen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
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
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$knormal:51|) (< |$knormal:51| |$alpha-12:plen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) )
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
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
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
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:110| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:35| |$knormal:110| 0 (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:35| |$knormal:110| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:127| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:35| |$knormal:127| (+ |$alpha-30:p| 1) (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:35| |$knormal:127| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:72| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< |$alpha-30:p| |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) )
      (|$innerFunc:3-loop$unknown:34| (+ |$alpha-30:p| 1) (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$knormal:70| Int) (|$knormal:72| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| 0 |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| 0 |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (< 0 |$alpha-25:plen|) (< |$alpha-29:s| |$alpha-23:slen|) (not (= |$knormal:70| |$knormal:72|)) )
      (|$innerFunc:3-loop$unknown:34| 0 (+ |$alpha-29:s| 1) |$alpha-25:plen| |$alpha-23:slen|)
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:185| Int) (|$cond-alpha-rename:186| Int) )
    (=>
      ( and (> |$cond-alpha-rename:186| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$alpha-11:str|) (< |$alpha-11:str| |$alpha-10:slen|) (|make_array$unknown:45| |$alpha-11:str| |$cond-alpha-rename:185| |$alpha-10:slen|) (|kmpMatch$unknown:37| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:185| |$alpha-11:str| |$alpha-10:slen|)
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:364| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$alpha-13:pat|) (< |$alpha-13:pat| |$alpha-12:plen|) (|make_array$unknown:45| |$alpha-13:pat| |$cond-alpha-rename:364| |$alpha-12:plen|) (|kmpMatch$unknown:40| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:364| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
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
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (<= 0 |$knormal:51|) (< |$knormal:51| |$alpha-12:plen|) (|make_array$unknown:45| |$knormal:51| (- 1) |$alpha-12:plen|) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
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
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:841| Int) (|$cond-alpha-rename:842| Int) (|$cond-alpha-rename:844| Int) (|$cond-alpha-rename:846| Int) )
    (=>
      ( and (not (not (= |$cond-alpha-rename:844| |$cond-alpha-rename:846|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (< (+ |$cond-alpha-rename:842| 1) |$alpha-5:i|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:842| |$alpha-6:n| |$cond-alpha-rename:841|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:846| (+ |$cond-alpha-rename:842| 1) |$alpha-6:n| |$cond-alpha-rename:841|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:844| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:841|) )
      (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(check-sat)

(get-model)

