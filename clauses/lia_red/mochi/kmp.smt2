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

(declare-fun |$innerFunc:2-loopShift$unknown:22|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:21|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:10|
  ( Int Int ) Bool
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
  (forall ( (|$V-reftype:5| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:10| Int) (|$cond-alpha-rename:1170| Int) (|$cond-alpha-rename:1171| Int) (|$cond-alpha-rename:1173| Int) (|$cond-alpha-rename:1175| Int) (|$cond-alpha-rename:1178| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:648| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:918| Int) (|$cond-alpha-rename:920| Int) (|$cond-alpha-rename:922| Int) (|$cond-alpha-rename:927| Int) (|$cond-alpha-rename:928| Int) (|$cond-alpha-rename:930| Int) (|$cond-alpha-rename:932| Int) (|$knormal:13| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1173| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:1170|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1175| (+ |$cond-alpha-rename:1171| 1) |$alpha-6:n| |$cond-alpha-rename:1170|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:648| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:645|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:650| (+ |$cond-alpha-rename:646| 1) |$alpha-6:n| |$cond-alpha-rename:645|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:659| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:656|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:661| (+ |$cond-alpha-rename:657| 1) |$alpha-6:n| |$cond-alpha-rename:656|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:920| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:917|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:922| (+ |$cond-alpha-rename:918| 1) |$alpha-6:n| |$cond-alpha-rename:917|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:930| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:927|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:932| (+ |$cond-alpha-rename:928| 1) |$alpha-6:n| |$cond-alpha-rename:927|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:1171| |$alpha-6:n| |$cond-alpha-rename:1170|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:646| |$alpha-6:n| |$cond-alpha-rename:645|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:657| |$alpha-6:n| |$cond-alpha-rename:656|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:918| |$alpha-6:n| |$cond-alpha-rename:917|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:928| |$alpha-6:n| |$cond-alpha-rename:927|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:5| (+ |$alpha-5:i| 1) |$cond-alpha-rename:1178| |$alpha-6:n| |$cond-alpha-rename:1170|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:10| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:646| |$alpha-6:n| |$cond-alpha-rename:645|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1178| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:1171| |$alpha-6:n| |$cond-alpha-rename:1170|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:13| |$alpha-5:i| |$alpha-5:i| |$cond-alpha-rename:657| |$alpha-6:n| |$cond-alpha-rename:656|) (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (< (+ |$cond-alpha-rename:1171| 1) |$alpha-5:i|) (not (= |$alpha-5:i| |$alpha-6:n|)) (not (not (= |$cond-alpha-rename:1173| |$cond-alpha-rename:1175|))) (not (not (= |$cond-alpha-rename:648| |$cond-alpha-rename:650|))) (not (not (= |$cond-alpha-rename:659| |$cond-alpha-rename:661|))) (not (not (= |$cond-alpha-rename:920| |$cond-alpha-rename:922|))) (not (not (= |$cond-alpha-rename:930| |$cond-alpha-rename:932|))) (not (= |$alpha-5:i| |$V-reftype:5|)) (not (= |$alpha-5:i| |$alpha-6:n|)) (= (+ |$cond-alpha-rename:918| 1) (+ |$cond-alpha-rename:1171| 1)) (< (+ |$cond-alpha-rename:646| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:657| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:918| 1) |$alpha-5:i|) (< (+ |$cond-alpha-rename:928| 1) |$alpha-5:i|) )
      (|update$unknown:49| |$V-reftype:5| |$alpha-6:n| |$alpha-5:i|)
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1941| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1941| 0) (> |$alpha-10:slen| 0) (|$innerFunc:2-loopShift$unknown:15| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1941|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1945| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1945| 0) (> |$alpha-10:slen| 0) (|$innerFunc:2-loopShift$unknown:19| |$alpha-11:str| 1 (- 1) |$alpha-10:slen| |$cond-alpha-rename:1945|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1951| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1951| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1951|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1955| Int) (|$cond-alpha-rename:1956| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1955| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1956| 0) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1963| Int) (|$cond-alpha-rename:1964| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1963| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1964| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1971| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1971| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1971| 0) (> |$alpha-10:slen| 0) (|$innerFunc:2-loopShift$unknown:13| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1971|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1765| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1978| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1765| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1978| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1978| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1978|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1985| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1985| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1985|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1989| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1989| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-11:str| 1 (- 1) |$alpha-10:slen| |$cond-alpha-rename:1989|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1995| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:1995| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:1995|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:1999| Int) (|$cond-alpha-rename:2000| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:1999| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2000| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2008| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2007| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2008| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:2015| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2015| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2015| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2015|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1769| Int) (|$cond-alpha-rename:188| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:2022| Int) )
    (=>
      ( and (> |$cond-alpha-rename:189| 0) (> |$cond-alpha-rename:1769| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2022| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2022| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2022|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$cond-alpha-rename:188| |$alpha-11:str| |$alpha-10:slen|)
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
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$cond-alpha-rename:1346| Int) (|$cond-alpha-rename:1347| Int) (|$cond-alpha-rename:1349| Int) (|$cond-alpha-rename:1351| Int) (|$cond-alpha-rename:1356| Int) (|$cond-alpha-rename:1357| Int) (|$cond-alpha-rename:1359| Int) (|$cond-alpha-rename:1361| Int) (|$cond-alpha-rename:1364| Int) (|$cond-alpha-rename:1368| Int) (|$cond-alpha-rename:1369| Int) (|$cond-alpha-rename:1371| Int) (|$cond-alpha-rename:1373| Int) (|$cond-alpha-rename:1379| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1436| Int) (|$cond-alpha-rename:1438| Int) (|$cond-alpha-rename:1440| Int) (|$cond-alpha-rename:1445| Int) (|$cond-alpha-rename:1446| Int) (|$cond-alpha-rename:1448| Int) (|$cond-alpha-rename:1450| Int) (|$cond-alpha-rename:1455| Int) (|$cond-alpha-rename:1456| Int) (|$cond-alpha-rename:1458| Int) (|$cond-alpha-rename:1460| Int) (|$cond-alpha-rename:1467| Int) (|$cond-alpha-rename:1468| Int) (|$cond-alpha-rename:1469| Int) (|$cond-alpha-rename:1471| Int) (|$cond-alpha-rename:1473| Int) (|$cond-alpha-rename:1476| Int) (|$cond-alpha-rename:1481| Int) (|$cond-alpha-rename:1482| Int) (|$cond-alpha-rename:1484| Int) (|$cond-alpha-rename:1486| Int) (|$cond-alpha-rename:1489| Int) (|$cond-alpha-rename:1491| Int) (|$cond-alpha-rename:1494| Int) (|$cond-alpha-rename:1495| Int) (|$cond-alpha-rename:1497| Int) (|$cond-alpha-rename:1499| Int) (|$cond-alpha-rename:1505| Int) (|$cond-alpha-rename:1506| Int) (|$cond-alpha-rename:1508| Int) (|$cond-alpha-rename:1510| Int) (|$cond-alpha-rename:1516| Int) (|$cond-alpha-rename:1517| Int) (|$cond-alpha-rename:1519| Int) (|$cond-alpha-rename:1521| Int) (|$cond-alpha-rename:1527| Int) (|$cond-alpha-rename:1528| Int) (|$cond-alpha-rename:1530| Int) (|$cond-alpha-rename:1532| Int) (|$cond-alpha-rename:1539| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:163| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1349| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1351| (+ |$cond-alpha-rename:1347| 1) |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1359| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1361| (+ |$cond-alpha-rename:1357| 1) |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1371| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1373| (+ |$cond-alpha-rename:1369| 1) |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1438| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1435|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1440| (+ |$cond-alpha-rename:1436| 1) |$alpha-33:plen| |$cond-alpha-rename:1435|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1448| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1445|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1450| (+ |$cond-alpha-rename:1446| 1) |$alpha-33:plen| |$cond-alpha-rename:1445|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1458| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1455|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1460| (+ |$cond-alpha-rename:1456| 1) |$alpha-33:plen| |$cond-alpha-rename:1455|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1471| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1467|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1473| (+ |$cond-alpha-rename:1468| 1) |$alpha-33:plen| |$cond-alpha-rename:1467|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1484| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1481|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1486| (+ |$cond-alpha-rename:1482| 1) |$alpha-33:plen| |$cond-alpha-rename:1481|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1497| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1494|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1499| (+ |$cond-alpha-rename:1495| 1) |$alpha-33:plen| |$cond-alpha-rename:1494|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1508| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1505|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1510| (+ |$cond-alpha-rename:1506| 1) |$alpha-33:plen| |$cond-alpha-rename:1505|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1519| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1516|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1521| (+ |$cond-alpha-rename:1517| 1) |$alpha-33:plen| |$cond-alpha-rename:1516|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1530| |$alpha-37:j| |$alpha-33:plen| |$cond-alpha-rename:1527|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1532| (+ |$cond-alpha-rename:1528| 1) |$alpha-33:plen| |$cond-alpha-rename:1527|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1347| |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1357| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1369| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1436| |$alpha-33:plen| |$cond-alpha-rename:1435|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1446| |$alpha-33:plen| |$cond-alpha-rename:1445|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1456| |$alpha-33:plen| |$cond-alpha-rename:1455|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1468| |$alpha-33:plen| |$cond-alpha-rename:1467|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1482| |$alpha-33:plen| |$cond-alpha-rename:1481|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1495| |$alpha-33:plen| |$cond-alpha-rename:1494|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1506| |$alpha-33:plen| |$cond-alpha-rename:1505|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1517| |$alpha-33:plen| |$cond-alpha-rename:1516|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$cond-alpha-rename:1528| |$alpha-33:plen| |$cond-alpha-rename:1527|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$cond-alpha-rename:1476| |$alpha-33:plen| |$cond-alpha-rename:1467|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$cond-alpha-rename:1489| |$alpha-33:plen| |$cond-alpha-rename:1481|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$cond-alpha-rename:1364| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1364| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1357| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1379| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1369| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1379| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1495| |$alpha-33:plen| |$cond-alpha-rename:1494|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1469| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1528| |$alpha-33:plen| |$cond-alpha-rename:1527|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1476| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1468| |$alpha-33:plen| |$cond-alpha-rename:1467|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1489| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1482| |$alpha-33:plen| |$cond-alpha-rename:1481|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1491| |$alpha-37:j| |$alpha-37:j| |$cond-alpha-rename:1506| |$alpha-33:plen| |$cond-alpha-rename:1505|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1539| |$knormal:163| |$alpha-37:j| |$cond-alpha-rename:1517| |$alpha-33:plen| |$cond-alpha-rename:1516|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|update$unknown:49| |$alpha-37:j| |$alpha-33:plen| |$alpha-37:j|) (|update$unknown:49| |$knormal:163| |$alpha-33:plen| |$alpha-37:j|) (< (+ |$cond-alpha-rename:1436| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1446| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1456| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1468| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1482| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1495| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1506| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1517| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1528| 1) |$alpha-37:j|) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1438| |$cond-alpha-rename:1440|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1448| |$cond-alpha-rename:1450|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1458| |$cond-alpha-rename:1460|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1471| |$cond-alpha-rename:1473|))) (not (= |$alpha-37:j| |$knormal:163|)) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1484| |$cond-alpha-rename:1486|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1497| |$cond-alpha-rename:1499|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1508| |$cond-alpha-rename:1510|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1519| |$cond-alpha-rename:1521|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1530| |$cond-alpha-rename:1532|))) (not (= |$alpha-37:j| |$knormal:163|)) (not (not (= |$cond-alpha-rename:1349| |$cond-alpha-rename:1351|))) (not (not (= |$cond-alpha-rename:1359| |$cond-alpha-rename:1361|))) (not (not (= |$cond-alpha-rename:1371| |$cond-alpha-rename:1373|))) (not (not (= |$knormal:129| |$knormal:132|))) (not (= |$alpha-37:j| |$alpha-33:plen|)) (= (+ |$cond-alpha-rename:1456| 1) (+ |$cond-alpha-rename:1482| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1347| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1357| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1436| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1468| 1)) (< (+ |$alpha-36:i| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1347| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1357| 1) |$alpha-37:j|) (< (+ |$cond-alpha-rename:1369| 1) |$alpha-37:j|) )
      (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1539| |$knormal:163| (+ |$alpha-37:j| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$cond-alpha-rename:1346| Int) (|$cond-alpha-rename:1347| Int) (|$cond-alpha-rename:1349| Int) (|$cond-alpha-rename:1351| Int) (|$cond-alpha-rename:1356| Int) (|$cond-alpha-rename:1357| Int) (|$cond-alpha-rename:1359| Int) (|$cond-alpha-rename:1361| Int) (|$cond-alpha-rename:1364| Int) (|$cond-alpha-rename:1368| Int) (|$cond-alpha-rename:1369| Int) (|$cond-alpha-rename:1371| Int) (|$cond-alpha-rename:1373| Int) (|$cond-alpha-rename:1379| Int) (|$cond-alpha-rename:1540| Int) (|$cond-alpha-rename:1541| Int) (|$cond-alpha-rename:1543| Int) (|$cond-alpha-rename:1545| Int) (|$cond-alpha-rename:1550| Int) (|$cond-alpha-rename:1551| Int) (|$cond-alpha-rename:1553| Int) (|$cond-alpha-rename:1555| Int) (|$cond-alpha-rename:1558| Int) (|$cond-alpha-rename:1562| Int) (|$cond-alpha-rename:1563| Int) (|$cond-alpha-rename:1565| Int) (|$cond-alpha-rename:1567| Int) (|$knormal:129| Int) (|$knormal:132| Int) (|$knormal:136| Int) (|$knormal:163| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1349| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1351| (+ |$cond-alpha-rename:1347| 1) |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1359| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1361| (+ |$cond-alpha-rename:1357| 1) |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1371| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1373| (+ |$cond-alpha-rename:1369| 1) |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1543| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1540|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1545| (+ |$cond-alpha-rename:1541| 1) |$alpha-33:plen| |$cond-alpha-rename:1540|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1553| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1550|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1555| (+ |$cond-alpha-rename:1551| 1) |$alpha-33:plen| |$cond-alpha-rename:1550|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1565| |$knormal:163| |$alpha-33:plen| |$cond-alpha-rename:1562|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:1567| (+ |$cond-alpha-rename:1563| 1) |$alpha-33:plen| |$cond-alpha-rename:1562|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$knormal:163| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| (+ |$alpha-36:i| 1) |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1347| |$alpha-33:plen| |$cond-alpha-rename:1346|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1357| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1369| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1541| |$alpha-33:plen| |$cond-alpha-rename:1540|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1551| |$alpha-33:plen| |$cond-alpha-rename:1550|) (|$innerFunc:2-loopShift$unknown:18| |$knormal:163| |$cond-alpha-rename:1563| |$alpha-33:plen| |$cond-alpha-rename:1562|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$knormal:163| 1) |$cond-alpha-rename:1558| |$alpha-33:plen| |$cond-alpha-rename:1550|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$knormal:163| 1) |$cond-alpha-rename:1364| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| (+ |$knormal:163| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1364| |$knormal:163| |$knormal:163| |$cond-alpha-rename:1357| |$alpha-33:plen| |$cond-alpha-rename:1356|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1379| |$knormal:163| |$knormal:163| |$cond-alpha-rename:1369| |$alpha-33:plen| |$cond-alpha-rename:1368|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1379| |$knormal:163| |$knormal:163| |$cond-alpha-rename:1563| |$alpha-33:plen| |$cond-alpha-rename:1562|) (|$innerFunc:2-loopShift$unknown:20| |$cond-alpha-rename:1558| |$knormal:163| |$knormal:163| |$cond-alpha-rename:1551| |$alpha-33:plen| |$cond-alpha-rename:1550|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$knormal:163| |$knormal:163| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|update$unknown:49| |$knormal:163| |$alpha-33:plen| |$knormal:163|) (< (+ |$cond-alpha-rename:1541| 1) |$knormal:163|) (< (+ |$cond-alpha-rename:1551| 1) |$knormal:163|) (< (+ |$cond-alpha-rename:1563| 1) |$knormal:163|) (not (= |$knormal:163| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1543| |$cond-alpha-rename:1545|))) (not (= |$knormal:163| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1553| |$cond-alpha-rename:1555|))) (not (= |$knormal:163| |$alpha-33:plen|)) (not (not (= |$cond-alpha-rename:1565| |$cond-alpha-rename:1567|))) (not (not (= |$cond-alpha-rename:1349| |$cond-alpha-rename:1351|))) (not (not (= |$cond-alpha-rename:1359| |$cond-alpha-rename:1361|))) (not (not (= |$cond-alpha-rename:1371| |$cond-alpha-rename:1373|))) (not (not (= |$knormal:129| |$knormal:132|))) (not (= |$knormal:163| |$alpha-33:plen|)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1347| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1357| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1541| 1)) (= (+ |$alpha-36:i| 1) (+ |$cond-alpha-rename:1551| 1)) (< (+ |$alpha-36:i| 1) |$knormal:163|) (< (+ |$cond-alpha-rename:1347| 1) |$knormal:163|) (< (+ |$cond-alpha-rename:1357| 1) |$knormal:163|) (< (+ |$cond-alpha-rename:1369| 1) |$knormal:163|) )
      (|$innerFunc:2-loopShift$unknown:20| (+ |$alpha-36:i| 1) |$knormal:163| (+ |$knormal:163| 1) |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2029| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2029| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:15| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2029|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2033| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2033| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:19| |$alpha-13:pat| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2033|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2039| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2039| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2039|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2043| Int) (|$cond-alpha-rename:2044| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2043| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2044| 0) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-13:pat| |$alpha-12:plen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2051| Int) (|$cond-alpha-rename:2052| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2051| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2052| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-13:pat| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2059| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2059| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2059| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2059|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2066| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2066| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2066| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2066|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2073| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2073| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2073|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2077| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2077| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-13:pat| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2077|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2083| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2083| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2083|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2087| Int) (|$cond-alpha-rename:2088| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2087| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2088| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-13:pat| |$alpha-12:plen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2095| Int) (|$cond-alpha-rename:2096| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2095| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2096| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-13:pat| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2103| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2103| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2103| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2103|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2110| Int) (|$cond-alpha-rename:389| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2110| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2110| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2110|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:389| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2117| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2117| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2117|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2121| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2121| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2121|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2127| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2127| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2127|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2131| Int) (|$cond-alpha-rename:2132| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2131| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2132| 0) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$knormal:51| |$alpha-12:plen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2139| Int) (|$cond-alpha-rename:2140| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2139| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2140| 0) (|$innerFunc:3-loop$unknown:24| |$knormal:51| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2147| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2147| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2147| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2147|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2154| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2154| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2154| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2154|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2161| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2161| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2161|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2165| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2165| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2165|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2171| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2171| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2171|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2175| Int) (|$cond-alpha-rename:2176| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2175| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2176| 0) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$knormal:51| |$alpha-12:plen|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2183| Int) (|$cond-alpha-rename:2184| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2183| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2184| 0) (|$innerFunc:3-loop$unknown:24| |$knormal:51| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2191| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2191| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2191| 0) (> |$alpha-12:plen| 0) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2191|) )
      (|$innerFunc:2-loopShift$unknown:20| (- 1) |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2198| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2198| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2198| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2198|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$alpha-10:slen|) )
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
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2205| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2205| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2205|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2209| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2209| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-11:str| 1 (- 1) |$alpha-10:slen| |$cond-alpha-rename:2209|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2215| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2215| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2215|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2219| Int) (|$cond-alpha-rename:2220| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2219| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2220| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2227| Int) (|$cond-alpha-rename:2228| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2227| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2228| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2235| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2235| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2235| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2235|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2242| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1773| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2242| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2242| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2242|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2249| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2249| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2249|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2253| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2253| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-11:str| 1 (- 1) |$alpha-10:slen| |$cond-alpha-rename:2253|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2259| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2259| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2259|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| (- 1) |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2263| Int) (|$cond-alpha-rename:2264| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2263| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2264| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2271| Int) (|$cond-alpha-rename:2272| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2271| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2272| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2279| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2279| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2279| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2279|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:1777| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:2286| Int) )
    (=>
      ( and (> |$cond-alpha-rename:194| 0) (> |$cond-alpha-rename:1777| 0) (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-11:str| |$alpha-10:slen|) (<= 0 |$alpha-11:str|) (> |$cond-alpha-rename:2286| 0) (> |$alpha-10:slen| 0) (> |$cond-alpha-rename:2286| 0) (> |$alpha-10:slen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-11:str| |$alpha-10:slen| |$cond-alpha-rename:2286|) (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$cond-alpha-rename:193| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2293| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2293| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2293|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2297| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2297| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-13:pat| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2297|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2303| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2303| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2303|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2307| Int) (|$cond-alpha-rename:2308| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2307| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2308| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-13:pat| |$alpha-12:plen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2315| Int) (|$cond-alpha-rename:2316| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2315| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2316| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-13:pat| |$alpha-12:plen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2323| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2323| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2323| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2323|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2330| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2330| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2330| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2330|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2337| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2337| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2337|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2341| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2341| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-13:pat| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2341|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2347| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2347| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2347|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| (- 1) |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2351| Int) (|$cond-alpha-rename:2352| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2351| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2352| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-13:pat| |$alpha-12:plen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2359| Int) (|$cond-alpha-rename:2360| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2359| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2360| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-13:pat| |$alpha-12:plen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2367| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2367| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2367| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2367|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$cond-alpha-rename:2374| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$alpha-13:pat| |$alpha-12:plen|) (<= 0 |$alpha-13:pat|) (> |$cond-alpha-rename:2374| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2374| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$cond-alpha-rename:2374|) (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$cond-alpha-rename:393| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2381| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2381| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2381|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2385| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2385| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| 1 (- 1) |$alpha-12:plen| |$cond-alpha-rename:2385|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2391| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (= (- 1) (- 1)) (> |$cond-alpha-rename:2391| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2391|) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2395| Int) (|$cond-alpha-rename:2396| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2395| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2396| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:10| |$knormal:51| |$alpha-12:plen|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2403| Int) (|$cond-alpha-rename:2404| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2403| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2404| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:24| |$knormal:51| |$alpha-12:plen|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2411| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2411| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2411| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2411|) )
      (|$innerFunc:3-loop$unknown:30| (- 1) |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$cond-alpha-rename:2418| Int) (|$knormal:51| Int) )
    (=>
      ( and (> |$alpha-12:plen| 0) (> |$alpha-10:slen| 0) (< |$knormal:51| |$alpha-12:plen|) (<= 0 |$knormal:51|) (> |$cond-alpha-rename:2418| 0) (> |$alpha-12:plen| 0) (> |$cond-alpha-rename:2418| 0) (> |$alpha-12:plen| 0) (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:3-loop$unknown:27| |$knormal:51| |$alpha-12:plen| |$cond-alpha-rename:2418|) )
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
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2425| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$cond-alpha-rename:2425| 0) (> |$alpha-1:n| 0) (|$innerFunc:2-loopShift$unknown:15| |$alpha-3:i| |$alpha-1:n| |$cond-alpha-rename:2425|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2429| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$cond-alpha-rename:2429| 0) (> |$alpha-1:n| 0) (|$innerFunc:2-loopShift$unknown:19| |$alpha-3:i| 1 (- 1) |$alpha-1:n| |$cond-alpha-rename:2429|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2435| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$cond-alpha-rename:2435| 0) (> |$alpha-1:n| 0) (|$innerFunc:3-loop$unknown:29| |$alpha-3:i| |$alpha-1:n| |$cond-alpha-rename:2435|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2439| Int) (|$cond-alpha-rename:2440| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2439| 0) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2440| 0) (|$innerFunc:2-loopShift$unknown:10| |$alpha-3:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2447| Int) (|$cond-alpha-rename:2448| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2447| 0) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2448| 0) (|$innerFunc:3-loop$unknown:24| |$alpha-3:i| |$alpha-1:n|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2455| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$cond-alpha-rename:2455| 0) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2455| 0) (> |$alpha-1:n| 0) (|$innerFunc:2-loopShift$unknown:13| |$alpha-3:i| |$alpha-1:n| |$cond-alpha-rename:2455|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-3:i| Int) (|$cond-alpha-rename:2462| Int) )
    ( and (not (and (<= 0 |$alpha-3:i|) (< |$alpha-3:i| |$alpha-1:n|))) (> |$cond-alpha-rename:2462| 0) (> |$alpha-1:n| 0) (> |$cond-alpha-rename:2462| 0) (> |$alpha-1:n| 0) (|$innerFunc:3-loop$unknown:27| |$alpha-3:i| |$alpha-1:n| |$cond-alpha-rename:2462|) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$cond-alpha-rename:947| Int) (|$cond-alpha-rename:948| Int) (|$cond-alpha-rename:950| Int) (|$cond-alpha-rename:952| Int) )
    (=>
      ( and (not (not (= |$cond-alpha-rename:950| |$cond-alpha-rename:952|))) (not (= |$alpha-5:i| |$alpha-6:n|)) (< (+ |$cond-alpha-rename:948| 1) |$alpha-5:i|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-5:i| |$cond-alpha-rename:948| |$alpha-6:n| |$cond-alpha-rename:947|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:952| (+ |$cond-alpha-rename:948| 1) |$alpha-6:n| |$cond-alpha-rename:947|) (|$innerFunc:2-loopShift$unknown:14| |$cond-alpha-rename:950| |$alpha-5:i| |$alpha-6:n| |$cond-alpha-rename:947|) )
      (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(check-sat)

(get-model)

