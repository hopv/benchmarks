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

(declare-fun |kmpMatch$unknown:42|
  ( Int Int Int ) Bool
)

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

(declare-fun |make_array$unknown:46|
  ( Int Int Int Int ) Bool
)

(declare-fun |make_array$unknown:45|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:41|
  ( Int Int Int Int ) Bool
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

(declare-fun |$innerFunc:2-loopShift$unknown:19|
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

(declare-fun |kmpMatch$unknown:38|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:20|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:18|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:53|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:52|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:49|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:51|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:50|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:154| Int) (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-43:x| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$knormal:199| Int) (|$knormal:200| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:199|)) (= |$alpha-40:i| |$alpha-45:j|)) (= |$V-reftype:154| |$knormal:200|) (not (not (= 0 |$knormal:199|))) (|$innerFunc:1-a$unknown:7| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|) true true (|$innerFunc:1-a$unknown:4| |$knormal:200| |$alpha-45:j| |$alpha-41:n| |$alpha-40:i|) true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:154| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:153| Int) (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-43:x| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$knormal:199| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:199|)) (= |$alpha-40:i| |$alpha-45:j|)) (= |$V-reftype:153| |$alpha-43:x|) (not (= 0 |$knormal:199|)) (|$innerFunc:1-a$unknown:7| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|) true true true true )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:153| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-40:i| Int) (|$alpha-41:n| Int) (|$alpha-43:x| Int) (|$alpha-44:$$tmp::2| Int) (|$alpha-45:j| Int) (|$knormal:199| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:199|)) (= |$alpha-40:i| |$alpha-45:j|)) (not (not (= 0 |$knormal:199|))) (|$innerFunc:1-a$unknown:7| |$alpha-45:j| |$alpha-44:$$tmp::2| |$alpha-43:x| |$alpha-41:n| |$alpha-40:i|) true true true true )
      (|$innerFunc:1-a$unknown:3| |$alpha-45:j| |$alpha-41:n| |$alpha-40:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:5| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-6:n| |$alpha-5:i|) )
      (|update$unknown:49| |$V-reftype:5| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:103| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-7:a| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$V-reftype:103| |$alpha-7:a| |$alpha-6:n| |$alpha-5:i|) true true (|$innerFunc:1-a$unknown:3| |$alpha-7:a| |$alpha-6:n| |$alpha-5:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:103| |$alpha-7:a| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:14| Int) (|$V-reftype:15| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:52| |$V-reftype:14| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:13| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|update$unknown:53| |$V-reftype:15| |$V-reftype:14| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-10:slen|) )
      (|kmpMatch$unknown:37| |$V-reftype:18| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:10| |$V-reftype:18| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:72| Int) (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:38| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:10| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Int) (|$alpha-31:slen| Int) (|$alpha-32:str| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:str| |$alpha-31:slen|) )
      (|$innerFunc:2-loopShift$unknown:11| |$V-reftype:20| |$alpha-32:str| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-34:pat| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:13| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-34:pat| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-35:shiftArray0| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:15| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:30| |$alpha-35:shiftArray0| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|update$unknown:52| |$V-reftype:36| |$knormal:161| |$alpha-33:plen| |$alpha-37:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$alpha-38:shiftArray1| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) (|$knormal:163| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) (|update$unknown:53| |$V-reftype:109| |$knormal:163| |$knormal:161| |$alpha-33:plen| |$alpha-37:j|) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:19| |$knormal:163| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:109| |$knormal:163| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$alpha-38:shiftArray1| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) (|update$unknown:49| |$alpha-38:shiftArray1| |$alpha-33:plen| |$alpha-37:j|) true (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|update$unknown:50| |$V-reftype:38| |$alpha-38:shiftArray1| |$alpha-33:plen| |$alpha-37:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:149| |$knormal:136| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:136| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:136| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$knormal:182| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:182| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:20| |$knormal:182| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:42| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$V-reftype:41| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) (|update$unknown:49| |$V-reftype:101| |$alpha-33:plen| |$alpha-37:j|) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:101| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:164|)) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-36:i| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:177| |$knormal:174| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:164| Int) (|$knormal:174| Int) (|$knormal:177| Int) )
    (=>
      ( and (= |$knormal:177| (+ |$alpha-37:j| 1)) (= |$knormal:174| (- 1)) (= (not (= 0 |$knormal:164|)) (>= |$alpha-36:i| 0)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:164|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:135|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:154| Int) (|$knormal:155| Int) (|$knormal:161| Int) )
    (=>
      ( and (= |$knormal:161| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) (not (= 0 |$knormal:155|)) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|update$unknown:51| |$knormal:161| |$alpha-33:plen| |$alpha-37:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:135| Int) (|$knormal:149| Int) (|$knormal:154| Int) (|$knormal:155| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:155|)) (< |$knormal:154| |$alpha-37:j|)) (= |$knormal:154| (+ |$alpha-36:i| 1)) (= |$knormal:149| (+ |$alpha-37:j| 1)) (= (not (= 0 |$knormal:135|)) (not (not (= 0 |$knormal:134|)))) (= (not (= 0 |$knormal:134|)) (= |$knormal:129| |$knormal:132|)) (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:155|))) (not (not (= 0 |$knormal:135|))) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:132| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:19| |$alpha-37:j| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) (|$knormal:129| Int) (|$knormal:131| Int) )
    (=>
      ( and (= |$knormal:131| (+ |$alpha-36:i| 1)) (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true (|$innerFunc:2-loopShift$unknown:14| |$knormal:129| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|) true )
      (|$innerFunc:2-loopShift$unknown:13| |$knormal:131| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$V-reftype:38| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (= 0 |$knormal:128|)) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:38| |$V-reftype:37| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:40| Int) (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (= 0 |$knormal:128|)) true (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:40| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:slen| Int) (|$alpha-33:plen| Int) (|$alpha-36:i| Int) (|$alpha-37:j| Int) (|$knormal:128| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:128|)) (= |$alpha-37:j| |$alpha-33:plen|)) (not (not (= 0 |$knormal:128|))) true (|$innerFunc:2-loopShift$unknown:18| |$alpha-37:j| |$alpha-36:i| |$alpha-33:plen| |$alpha-31:slen|) true true )
      (|$innerFunc:2-loopShift$unknown:13| |$alpha-37:j| |$alpha-33:plen| |$alpha-31:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|) )
      (|kmpMatch$unknown:40| |$V-reftype:24| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:41| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:13| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:28| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|make_array$unknown:46| |$V-reftype:96| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:15| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:16| |$V-reftype:96| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:36| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:19| |$V-reftype:36| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:36| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|make_array$unknown:46| |$V-reftype:96| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:2-loopShift$unknown:19| |$knormal:51| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:20| |$V-reftype:96| |$knormal:51| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:31| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|) (|$innerFunc:2-loopShift$unknown:22| |$V-reftype:42| |$knormal:47| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:42| |$knormal:47| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-24:str| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:47| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:53| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:27| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:53| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-27:shiftArray0| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:29| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:57| |$alpha-27:shiftArray0| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-28:shiftArray3| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:31| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:32| |$V-reftype:61| |$alpha-28:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:137| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) (|$knormal:94| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:137| |$knormal:94|) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:35| |$knormal:94| |$knormal:92| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:137| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) (|$knormal:77| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:92| (+ |$knormal:77| 1)) (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:32| |$knormal:77| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$knormal:92| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:134| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:110| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (= |$V-reftype:134| |$knormal:110|) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:35| |$knormal:110| |$alpha-30:p| |$knormal:106| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:134| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:131| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:127| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (= |$V-reftype:131| |$knormal:127|) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:35| |$knormal:127| |$knormal:125| |$knormal:122| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:131| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:122| Int) (|$knormal:125| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:125| (+ |$alpha-30:p| 1)) (= |$knormal:122| (+ |$alpha-29:s| 1)) (not (= 0 |$knormal:74|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$knormal:125| |$knormal:122| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:106| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$knormal:106| (+ |$alpha-29:s| 1)) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:75|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$knormal:106| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) (|$knormal:72| Int) (|$knormal:74| Int) (|$knormal:75| Int) (|$knormal:76| Int) )
    (=>
      ( and (= |$knormal:76| (- |$alpha-30:p| 1)) (= (not (= 0 |$knormal:75|)) (= |$alpha-30:p| 0)) (= (not (= 0 |$knormal:74|)) (= |$knormal:70| |$knormal:72|)) (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (not (= 0 |$knormal:75|))) (not (not (= 0 |$knormal:74|))) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:28| |$knormal:72| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|) true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:31| |$knormal:76| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) (|$knormal:70| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true (|$innerFunc:3-loop$unknown:25| |$knormal:70| |$alpha-29:s| |$alpha-23:slen|) true )
      (|$innerFunc:3-loop$unknown:27| |$alpha-30:p| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (not (= 0 |$knormal:69|)) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:24| |$alpha-29:s| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:138| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) (|$knormal:69| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:69|)) (< |$alpha-29:s| |$alpha-23:slen|)) (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:138| (- 1)) (not (not (= 0 |$knormal:69|))) (not (= 0 |$knormal:68|)) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:138| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$alpha-23:slen| Int) (|$alpha-25:plen| Int) (|$alpha-29:s| Int) (|$alpha-30:p| Int) (|$knormal:68| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:68|)) (< |$alpha-30:p| |$alpha-25:plen|)) (= |$V-reftype:139| (- |$alpha-29:s| |$alpha-25:plen|)) (not (not (= 0 |$knormal:68|))) (|$innerFunc:3-loop$unknown:34| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|) true true true )
      (|$innerFunc:3-loop$unknown:35| |$V-reftype:139| |$alpha-30:p| |$alpha-29:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:24| |$V-reftype:45| |$alpha-10:slen|) )
      (|kmpMatch$unknown:37| |$V-reftype:45| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:72| Int) (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:38| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:24| |$alpha-11:str| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:25| |$V-reftype:72| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:27| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|kmpMatch$unknown:40| |$V-reftype:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:78| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$alpha-13:pat| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:41| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:27| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:28| |$V-reftype:78| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:55| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:29| |$V-reftype:55| |$alpha-12:plen| |$alpha-10:slen|) )
      (|make_array$unknown:45| |$V-reftype:55| |$knormal:49| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:51| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|make_array$unknown:46| |$V-reftype:96| |$knormal:51| |$knormal:49| |$alpha-12:plen|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:29| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:3-loop$unknown:30| |$V-reftype:96| |$knormal:51| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:31| |$V-reftype:59| |$alpha-12:plen| |$alpha-10:slen|) )
      (|$innerFunc:2-loopShift$unknown:21| |$V-reftype:59| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:120| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:30| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (= |$V-reftype:120| |$knormal:30|) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true (|$innerFunc:3-loop$unknown:35| |$knormal:30| |$knormal:28| |$knormal:25| |$alpha-12:plen| |$alpha-10:slen|) )
      (|kmpMatch$unknown:42| |$V-reftype:120| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (= |$knormal:28| 0) (= |$knormal:25| 0) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      (|$innerFunc:3-loop$unknown:34| |$knormal:28| |$knormal:25| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      (|$innerFunc:2-loopShift$unknown:18| |$knormal:43| |$knormal:40| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:40| Int) (|$knormal:43| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (= |$knormal:43| 1) (= |$knormal:40| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| (- 1)) (|kmpMatch$unknown:39| |$alpha-12:plen| |$alpha-10:slen|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-16:n| Int) (|$alpha-17:a| Int) (|$alpha-18:m| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) (|kmpMatch$unknown:37| |$V-reftype:70| |$alpha-16:n|) )
      (|make_array$unknown:45| |$V-reftype:70| |$alpha-17:a| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-16:n| Int) (|$alpha-17:a| Int) (|$alpha-18:m| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:67| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) (|make_array$unknown:46| |$V-reftype:96| |$knormal:67| |$alpha-17:a| |$alpha-16:n|) (|kmpMatch$unknown:37| |$knormal:67| |$alpha-16:n|) )
      (|kmpMatch$unknown:38| |$V-reftype:96| |$knormal:67| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-16:n| Int) (|$alpha-18:m| Int) (|$alpha-19:b| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) (|kmpMatch$unknown:40| |$V-reftype:76| |$alpha-18:m| |$alpha-16:n|) )
      (|make_array$unknown:45| |$V-reftype:76| |$alpha-19:b| |$alpha-18:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:96| Int) (|$alpha-16:n| Int) (|$alpha-18:m| Int) (|$alpha-19:b| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) (|$knormal:64| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) (|make_array$unknown:46| |$V-reftype:96| |$knormal:64| |$alpha-19:b| |$alpha-18:m|) (|kmpMatch$unknown:40| |$knormal:64| |$alpha-18:m| |$alpha-16:n|) )
      (|kmpMatch$unknown:41| |$V-reftype:96| |$knormal:64| |$alpha-18:m| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:114| Int) (|$alpha-1:n| Int) (|$alpha-2:s| Int) (|$alpha-3:i| Int) (|$alpha-4:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-3:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-3:i|)) (= |$alpha-4:$$tmp::1| 1) (= |$V-reftype:114| |$alpha-2:s|) (not (= 0 |$knormal:3|)) (|make_array$unknown:45| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) true true )
      (|make_array$unknown:46| |$V-reftype:114| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:s| Int) (|$alpha-3:i| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-3:i| |$alpha-1:n|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-3:i|)) (not (not (= 0 |$knormal:3|))) (|make_array$unknown:45| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) true true )
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:107| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|update$unknown:52| |$V-reftype:107| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:50| |$knormal:13| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) true true )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:107| |$knormal:13| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|update$unknown:51| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) true true )
      (|update$unknown:49| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-18:m| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-18:m| Int) (|$knormal:52| Int) (|$knormal:53| Int) (|$knormal:54| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:54|)) (and (not (= 0 |$knormal:52|)) (not (= 0 |$knormal:53|)))) (= (not (= 0 |$knormal:53|)) (> |$alpha-18:m| 0)) (= (not (= 0 |$knormal:52|)) (> |$alpha-16:n| 0)) (not (= 0 |$knormal:54|)) )
      (|kmpMatch$unknown:39| |$alpha-18:m| |$alpha-16:n|)
    )
  )
)
(check-sat)

(get-model)

(exit)

