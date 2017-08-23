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

(declare-fun |kmpMatch$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:28|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:26|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:25|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:24|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:21|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:16|
  ( Int ) Bool
)

(declare-fun |kmpMatch$unknown:32|
  ( Int Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:23|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-loop$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |make_array$unknown:37|
  ( Int Int Int Int ) Bool
)

(declare-fun |make_array$unknown:36|
  ( Int Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |kmpMatch$unknown:27|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:15|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:13|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-loopShift$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:44|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:43|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:40|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:42|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:38|
  ( Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:35|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:34|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-16:n| Int) )
    (=>
      ( and true )
      (|make_array$unknown:34| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) )
    (=>
      ( and true )
      (|make_array$unknown:34| |$alpha-18:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:n| Int) (|$alpha-17:a| Int) )
    (=>
      ( and true )
      (|make_array$unknown:35| |$alpha-17:a| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$alpha-19:b| Int) )
    (=>
      ( and true )
      (|make_array$unknown:35| |$alpha-19:b| |$alpha-18:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:136| Int) (|$alpha-38:x| Int) (|$alpha-39:j| Int) (|$alpha-36:i| Int) (|$knormal:164| Int) (|$knormal:163| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-36:i|) (|$innerFunc:1-a$unknown:3| |$knormal:164| |$alpha-39:j| |$alpha-36:i|) (|$innerFunc:1-a$unknown:4| |$alpha-38:x| |$alpha-36:i|) (|$innerFunc:1-a$unknown:5| |$alpha-39:j| |$alpha-38:x| |$alpha-36:i|) (not |$knormal:163|) (= |$V-reftype:136| |$knormal:164|) (= |$knormal:163| (= |$alpha-36:i| |$alpha-39:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:136| |$alpha-39:j| |$alpha-38:x| |$alpha-36:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:135| Int) (|$alpha-39:j| Int) (|$alpha-38:x| Int) (|$alpha-36:i| Int) (|$knormal:163| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-36:i|) (|$innerFunc:1-a$unknown:4| |$alpha-38:x| |$alpha-36:i|) (|$innerFunc:1-a$unknown:5| |$alpha-39:j| |$alpha-38:x| |$alpha-36:i|) |$knormal:163| (= |$V-reftype:135| |$alpha-38:x|) (= |$knormal:163| (= |$alpha-36:i| |$alpha-39:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:135| |$alpha-39:j| |$alpha-38:x| |$alpha-36:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:j| Int) (|$alpha-38:x| Int) (|$alpha-36:i| Int) (|$knormal:163| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-36:i|) (|$innerFunc:1-a$unknown:4| |$alpha-38:x| |$alpha-36:i|) (|$innerFunc:1-a$unknown:5| |$alpha-39:j| |$alpha-38:x| |$alpha-36:i|) (not |$knormal:163|) (= |$knormal:163| (= |$alpha-36:i| |$alpha-39:j|)) )
      (|$innerFunc:1-a$unknown:2| |$alpha-39:j| |$alpha-36:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$knormal:9| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$V-reftype:3| |$alpha-5:i|) (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|update$unknown:40| |$V-reftype:3| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:a| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$V-reftype:85| Int) (|$knormal:9| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$alpha-7:a| |$alpha-5:i|) (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$V-reftype:85| |$alpha-7:a| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|$innerFunc:1-a$unknown:3| |$V-reftype:85| |$alpha-7:a| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:x| Int) (|$V-reftype:11| Int) (|$V-reftype:10| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$knormal:9| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-8:x| |$alpha-5:i|) (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:43| |$V-reftype:10| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|update$unknown:44| |$V-reftype:11| |$V-reftype:10| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:110| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:152| Int) (|$V-reftype:22| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:140| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$knormal:125| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$V-reftype:22| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|update$unknown:43| |$V-reftype:22| |$knormal:137| |$alpha-30:plen| |$alpha-33:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:117| Bool) (|$knormal:114| Int) (|$knormal:125| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$V-reftype:22| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:110| Bool) (|$knormal:131| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:110| Bool) (|$knormal:114| Int) (|$knormal:144| Int) (|$V-reftype:22| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:147| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:140| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$knormal:147| |$knormal:144| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:140| Bool) (|$knormal:114| Int) (|$V-reftype:24| Int) (|$knormal:152| Int) (|$alpha-34:shiftArray1| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:110| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$alpha-34:shiftArray1| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:131| Bool) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:125| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$alpha-34:shiftArray1| Int) (|$knormal:118| Int) (|$V-reftype:24| Int) (|$knormal:114| Int) (|$knormal:117| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$alpha-34:shiftArray1| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:140| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$V-reftype:24| Int) (|$knormal:144| Int) (|$alpha-34:shiftArray1| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:147| Int) (|$knormal:114| Int) (|$knormal:110| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$alpha-34:shiftArray1| |$knormal:147| |$knormal:144| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$knormal:147| |$knormal:144| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:114| Int) (|$knormal:125| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:139| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$V-reftype:91| Int) (|$knormal:137| Int) (|$knormal:110| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:12| |$knormal:139| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (|update$unknown:44| |$V-reftype:91| |$knormal:139| |$knormal:137| |$alpha-30:plen| |$alpha-33:j|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:91| |$knormal:139| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:110| Bool) (|$V-reftype:24| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$V-reftype:23| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$V-reftype:23| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:23| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) |$knormal:110| (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:24| |$V-reftype:23| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$V-reftype:24| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$alpha-34:shiftArray1| Int) (|$knormal:114| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (|update$unknown:40| |$alpha-34:shiftArray1| |$alpha-30:plen| |$alpha-33:j|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|update$unknown:41| |$V-reftype:24| |$alpha-34:shiftArray1| |$alpha-30:plen| |$alpha-33:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$V-reftype:26| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:117| Bool) (|$knormal:114| Int) (|$V-reftype:26| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:110| Bool) (|$knormal:131| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:125| Int) (|$V-reftype:28| Int) (|$V-reftype:27| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:131| Bool) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:125| Int) (|$V-reftype:28| Int) (|$V-reftype:27| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:114| Int) (|$knormal:117| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$knormal:125| |$knormal:118| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$V-reftype:14| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:117| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$V-reftype:14| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:110| Bool) (|$knormal:131| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$alpha-31:pat| Int) (|$V-reftype:16| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:131| Bool) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$alpha-31:pat| Int) (|$V-reftype:16| Int) (|$knormal:114| Int) (|$knormal:117| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:10| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:118| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:11| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:118| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:117| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:118| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:110| Bool) (|$knormal:131| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:10| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:131| Bool) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:118| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:117| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:11| |$knormal:125| |$knormal:118| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:131| Bool) (|$knormal:110| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:118| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:117| Bool) (|$knormal:125| Int) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:118| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:110| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:152| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$V-reftype:26| Int) (|$knormal:114| Int) (|$knormal:140| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:140| Bool) (|$knormal:114| Int) (|$knormal:152| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$V-reftype:27| Int) (|$V-reftype:28| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:110| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:110| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$V-reftype:14| Int) (|$knormal:152| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:140| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:140| Bool) (|$knormal:114| Int) (|$V-reftype:16| Int) (|$alpha-31:pat| Int) (|$knormal:152| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:110| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:110| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:152| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:114| Int) (|$knormal:140| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:10| |$knormal:152| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:140| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:152| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:110| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$knormal:152| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:140| Bool) (|$knormal:114| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:152| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:110| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:13| |$knormal:152| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:144| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$V-reftype:26| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:140| Bool) (|$knormal:116| Bool) (|$knormal:147| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$knormal:147| |$knormal:144| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:110| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) |$knormal:110| (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) )
      (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:26| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:140| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$knormal:147| Int) (|$V-reftype:28| Int) (|$V-reftype:27| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:144| Int) (|$knormal:114| Int) (|$knormal:110| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$knormal:147| |$knormal:144| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$V-reftype:27| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:144| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$V-reftype:14| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:140| Bool) (|$knormal:116| Bool) (|$knormal:147| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:147| Int) (|$knormal:116| Bool) (|$knormal:140| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$alpha-31:pat| Int) (|$V-reftype:16| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:144| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:8| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:16| |$alpha-31:pat| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:110| Bool) (|$V-reftype:83| Int) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (|update$unknown:40| |$V-reftype:83| |$alpha-30:plen| |$alpha-33:j|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:83| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:116| Bool) (|$knormal:110| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:140| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| |$knormal:140| (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) )
      (|$innerFunc:2-loopShift$unknown:12| |$alpha-32:i| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:144| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:117| Bool) (|$knormal:140| Bool) (|$knormal:116| Bool) (|$knormal:147| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:10| |$knormal:144| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:147| Int) (|$knormal:116| Bool) (|$knormal:140| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:144| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:11| |$knormal:147| |$knormal:144| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:147| Int) (|$knormal:116| Bool) (|$knormal:140| Bool) (|$knormal:117| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:144| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:117| (not |$knormal:110|) (not |$knormal:140|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:140| (>= |$alpha-32:i| 0)) (= |$knormal:144| (- 1)) (= |$knormal:147| (+ |$alpha-33:j| 1)) )
      (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:12| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|update$unknown:38| |$alpha-33:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:110| Bool) (|$knormal:114| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:131| Bool) (|$knormal:117| Bool) (|$knormal:116| Bool) (|$knormal:137| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|update$unknown:39| |$alpha-30:plen| |$alpha-33:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Int) (|$knormal:116| Bool) (|$knormal:117| Bool) (|$knormal:131| Bool) (|$knormal:113| Int) (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:114| Int) (|$knormal:110| Bool) (|$knormal:130| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) |$knormal:131| (not |$knormal:110|) (not |$knormal:117|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) (= |$knormal:137| (+ |$alpha-32:i| 1)) )
      (|update$unknown:42| |$knormal:137| |$alpha-30:plen| |$alpha-33:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Int) (|$knormal:125| Int) (|$knormal:117| Bool) (|$knormal:114| Int) (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:111| Int) (|$knormal:113| Int) (|$knormal:110| Bool) (|$knormal:131| Bool) (|$knormal:116| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:114| |$knormal:113| |$alpha-30:plen|) (not |$knormal:110|) (not |$knormal:117|) (not |$knormal:131|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) (= |$knormal:116| (= |$knormal:111| |$knormal:114|)) (= |$knormal:117| (not |$knormal:116|)) (= |$knormal:125| (+ |$alpha-33:j| 1)) (= |$knormal:130| (+ |$alpha-32:i| 1)) (= |$knormal:131| (< |$knormal:130| |$alpha-33:j|)) )
      (|$innerFunc:2-loopShift$unknown:12| |$alpha-33:j| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:111| Int) (|$alpha-33:j| Int) (|$alpha-32:i| Int) (|$alpha-30:plen| Int) (|$knormal:110| Bool) (|$knormal:113| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:9| |$knormal:111| |$alpha-33:j| |$alpha-30:plen|) (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) (= |$knormal:113| (+ |$alpha-32:i| 1)) )
      (|$innerFunc:2-loopShift$unknown:8| |$knormal:113| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-30:plen| Int) (|$alpha-32:i| Int) (|$alpha-33:j| Int) (|$knormal:110| Bool) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:10| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:11| |$alpha-33:j| |$alpha-32:i| |$alpha-30:plen|) (|$innerFunc:2-loopShift$unknown:7| |$alpha-30:plen|) (not |$knormal:110|) (= |$knormal:110| (= |$alpha-33:j| |$alpha-30:plen|)) )
      (|$innerFunc:2-loopShift$unknown:8| |$alpha-33:j| |$alpha-30:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$knormal:28| Int) (|$V-reftype:22| Int) (|$knormal:31| Int) (|$alpha-12:plen| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:12| |$V-reftype:22| |$knormal:31| |$knormal:28| |$alpha-12:plen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|make_array$unknown:36| |$V-reftype:22| |$knormal:37| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$knormal:28| Int) (|$knormal:39| Int) (|$knormal:31| Int) (|$alpha-12:plen| Int) (|$V-reftype:78| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:12| |$knormal:39| |$knormal:31| |$knormal:28| |$alpha-12:plen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (|make_array$unknown:37| |$V-reftype:78| |$knormal:39| |$knormal:37| |$alpha-12:plen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:13| |$V-reftype:78| |$knormal:39| |$knormal:31| |$knormal:28| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:19| Int) (|$alpha-10:slen| Int) (|$knormal:28| Int) (|$knormal:35| Int) (|$V-reftype:28| Int) (|$knormal:31| Int) (|$alpha-12:plen| Int) (|$knormal:22| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:15| |$V-reftype:28| |$knormal:35| |$knormal:31| |$knormal:28| |$alpha-12:plen|) (|$innerFunc:3-loop$unknown:22| |$knormal:35| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:23| |$V-reftype:28| |$knormal:35| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-10:slen| Int) (|$V-reftype:14| Int) (|$alpha-12:plen| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:8| |$V-reftype:14| |$alpha-12:plen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|kmpMatch$unknown:31| |$V-reftype:14| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-10:slen| Int) (|$alpha-13:pat| Int) (|$alpha-12:plen| Int) (|$V-reftype:60| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:2-loopShift$unknown:8| |$alpha-13:pat| |$alpha-12:plen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:32| |$V-reftype:60| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:9| |$V-reftype:60| |$alpha-13:pat| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:64| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$V-reftype:31| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:65| Int) (|$knormal:57| Bool) (|$knormal:63| Bool) (|$knormal:78| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$V-reftype:31| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$V-reftype:31| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:62| Bool) (|$knormal:90| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:78| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:65| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$V-reftype:33| Int) (|$alpha-24:str| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:64| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-24:str| Int) (|$V-reftype:33| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:104| Int) (|$knormal:107| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:62| Bool) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$V-reftype:33| Int) (|$alpha-24:str| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:17| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:18| |$V-reftype:33| |$alpha-24:str| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:78| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:65| Int) (|$knormal:60| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$V-reftype:37| Int) (|$alpha-29:p| Int) (|$knormal:64| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$V-reftype:37| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:104| Int) (|$knormal:107| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:62| Bool) (|$knormal:57| Bool) (|$knormal:60| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$V-reftype:37| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:64| Int) (|$alpha-29:p| Int) (|$alpha-26:pat| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$V-reftype:39| Int) (|$knormal:60| Int) (|$knormal:65| Int) (|$knormal:57| Bool) (|$knormal:63| Bool) (|$knormal:78| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$knormal:60| Int) (|$V-reftype:39| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$alpha-26:pat| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$alpha-26:pat| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$V-reftype:39| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:62| Bool) (|$knormal:90| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:20| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:21| |$V-reftype:39| |$alpha-26:pat| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:78| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:65| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$V-reftype:41| Int) (|$knormal:64| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$V-reftype:41| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:57| Bool) (|$knormal:104| Int) (|$knormal:107| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:62| Bool) (|$knormal:57| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$V-reftype:41| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:64| Int) (|$alpha-27:shiftArray3| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$V-reftype:43| Int) (|$knormal:65| Int) (|$knormal:57| Bool) (|$knormal:63| Bool) (|$knormal:78| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$V-reftype:43| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$alpha-27:shiftArray3| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:56| Bool) (|$alpha-27:shiftArray3| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$V-reftype:43| Int) (|$knormal:57| Bool) (|$knormal:62| Bool) (|$knormal:90| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:22| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:23| |$V-reftype:43| |$alpha-27:shiftArray3| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:80| Int) (|$knormal:64| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:65| Int) (|$knormal:78| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) (|$V-reftype:119| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:26| |$knormal:80| |$knormal:78| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$V-reftype:119| |$knormal:80|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:26| |$V-reftype:119| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:78| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:65| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:64| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:64| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:65| Int) (|$knormal:57| Bool) (|$knormal:63| Bool) (|$knormal:78| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:78| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:65| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:64| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:64| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:65| Int) (|$knormal:57| Bool) (|$knormal:63| Bool) (|$knormal:78| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:23| |$knormal:65| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) (= |$knormal:78| (+ |$knormal:65| 1)) )
      (|$innerFunc:3-loop$unknown:25| |$knormal:78| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$knormal:107| Int) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:109| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$V-reftype:113| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:26| |$knormal:109| |$knormal:107| |$knormal:104| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$V-reftype:113| |$knormal:109|) (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:26| |$V-reftype:113| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:57| Bool) (|$knormal:90| Int) (|$knormal:94| Int) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) (|$V-reftype:116| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:26| |$knormal:94| |$alpha-29:p| |$knormal:90| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$V-reftype:116| |$knormal:94|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:26| |$V-reftype:116| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:104| Int) (|$knormal:107| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:62| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:104| Int) (|$knormal:107| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:24| |$knormal:104| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Int) (|$knormal:104| Int) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:62| (= |$knormal:104| (+ |$alpha-28:s| 1)) (= |$knormal:107| (+ |$alpha-29:p| 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) )
      (|$innerFunc:3-loop$unknown:25| |$knormal:107| |$knormal:104| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:62| Bool) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:62| Bool) (|$knormal:90| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:90| Int) (|$knormal:62| Bool) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:63| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:24| |$knormal:90| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Bool) (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:60| Int) (|$knormal:57| Bool) (|$knormal:62| Bool) (|$knormal:90| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| |$knormal:63| (not |$knormal:62|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:90| (+ |$alpha-28:s| 1)) )
      (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$knormal:90| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:64| Int) (|$knormal:63| Bool) (|$knormal:57| Bool) (|$knormal:60| Int) (|$alpha-25:plen| Int) (|$alpha-28:s| Int) (|$alpha-23:slen| Int) (|$knormal:58| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$knormal:62| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:21| |$knormal:60| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (not |$knormal:62|) (not |$knormal:63|) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) (= |$knormal:62| (= |$knormal:58| |$knormal:60|)) (= |$knormal:63| (= |$alpha-29:p| 0)) (= |$knormal:64| (- |$alpha-29:p| 1)) )
      (|$innerFunc:3-loop$unknown:22| |$knormal:64| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:56| Bool) (|$alpha-29:p| Int) (|$knormal:58| Int) (|$alpha-23:slen| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$knormal:57| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:18| |$knormal:58| |$alpha-28:s| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) )
      (|$innerFunc:3-loop$unknown:20| |$alpha-29:p| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Bool) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| |$knormal:57| (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) )
      (|$innerFunc:3-loop$unknown:17| |$alpha-28:s| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:57| Bool) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) (|$V-reftype:120| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) |$knormal:56| (not |$knormal:57|) (= |$V-reftype:120| (- 1)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) (= |$knormal:57| (< |$alpha-28:s| |$alpha-23:slen|)) )
      (|$innerFunc:3-loop$unknown:26| |$V-reftype:120| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:121| Int) (|$alpha-28:s| Int) (|$alpha-25:plen| Int) (|$alpha-23:slen| Int) (|$alpha-29:p| Int) (|$knormal:56| Bool) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:16| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:19| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:24| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (|$innerFunc:3-loop$unknown:25| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|) (not |$knormal:56|) (= |$V-reftype:121| (- |$alpha-28:s| |$alpha-25:plen|)) (= |$knormal:56| (< |$alpha-29:p| |$alpha-25:plen|)) )
      (|$innerFunc:3-loop$unknown:26| |$V-reftype:121| |$alpha-29:p| |$alpha-28:s| |$alpha-25:plen| |$alpha-23:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$knormal:19| Int) (|$alpha-12:plen| Int) (|$alpha-10:slen| Int) (|$V-reftype:31| Int) (|$knormal:22| Int) (|$knormal:31| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:17| |$V-reftype:31| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|kmpMatch$unknown:28| |$V-reftype:31| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$knormal:22| Int) (|$V-reftype:54| Int) (|$alpha-10:slen| Int) (|$alpha-11:str| Int) (|$alpha-12:plen| Int) (|$knormal:19| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:17| |$alpha-11:str| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:29| |$V-reftype:54| |$alpha-11:str| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:18| |$V-reftype:54| |$alpha-11:str| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$knormal:22| Int) (|$alpha-12:plen| Int) (|$V-reftype:37| Int) (|$alpha-10:slen| Int) (|$knormal:19| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:20| |$V-reftype:37| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|kmpMatch$unknown:31| |$V-reftype:37| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$knormal:19| Int) (|$V-reftype:60| Int) (|$alpha-10:slen| Int) (|$alpha-13:pat| Int) (|$alpha-12:plen| Int) (|$knormal:22| Int) (|$knormal:31| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:20| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:32| |$V-reftype:60| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:21| |$V-reftype:60| |$alpha-13:pat| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$knormal:19| Int) (|$alpha-10:slen| Int) (|$V-reftype:41| Int) (|$alpha-12:plen| Int) (|$knormal:22| Int) (|$knormal:31| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:22| |$V-reftype:41| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:14| |$V-reftype:41| |$knormal:31| |$knormal:28| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-12:plen| Int) (|$knormal:22| Int) (|$knormal:24| Int) (|$knormal:19| Int) (|$alpha-10:slen| Int) (|$V-reftype:102| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|$innerFunc:3-loop$unknown:26| |$knormal:24| |$knormal:22| |$knormal:19| |$alpha-12:plen| |$alpha-10:slen|) (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$V-reftype:102| |$knormal:24|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|kmpMatch$unknown:33| |$V-reftype:102| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$knormal:22| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:19| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:16| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$knormal:19| Int) (|$alpha-12:plen| Int) (|$alpha-10:slen| Int) (|$knormal:22| Int) (|$knormal:31| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:19| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$knormal:22| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:19| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:24| |$knormal:19| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$knormal:19| Int) (|$alpha-12:plen| Int) (|$alpha-10:slen| Int) (|$knormal:22| Int) (|$knormal:31| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:19| 0) (= |$knormal:22| 0) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:3-loop$unknown:25| |$knormal:22| |$knormal:19| |$alpha-12:plen| |$alpha-10:slen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$knormal:28| Int) (|$alpha-12:plen| Int) (|$alpha-10:slen| Int) (|$knormal:31| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:10| |$knormal:28| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:11| |$knormal:31| |$knormal:28| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:28| Int) (|$knormal:37| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:28| (- 1)) (= |$knormal:31| 1) (= |$knormal:37| (- 1)) )
      (|$innerFunc:2-loopShift$unknown:7| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:slen| Int) (|$alpha-12:plen| Int) (|$knormal:37| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:37| (- 1)) )
      (|make_array$unknown:34| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$knormal:37| Int) (|$alpha-12:plen| Int) (|$alpha-10:slen| Int) )
    (=>
      ( and (|kmpMatch$unknown:27| |$alpha-10:slen|) (|kmpMatch$unknown:30| |$alpha-12:plen| |$alpha-10:slen|) (= |$knormal:37| (- 1)) )
      (|make_array$unknown:35| |$knormal:37| |$alpha-12:plen|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$knormal:42| Bool) (|$V-reftype:52| Int) (|$alpha-16:n| Int) (|$knormal:40| Bool) (|$knormal:41| Bool) (|$alpha-17:a| Int) )
    (=>
      ( and (|kmpMatch$unknown:28| |$V-reftype:52| |$alpha-16:n|) |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|make_array$unknown:36| |$V-reftype:52| |$alpha-17:a| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$knormal:42| Bool) (|$alpha-17:a| Int) (|$V-reftype:78| Int) (|$knormal:55| Int) (|$alpha-16:n| Int) (|$knormal:40| Bool) (|$knormal:41| Bool) )
    (=>
      ( and (|kmpMatch$unknown:28| |$knormal:55| |$alpha-16:n|) (|make_array$unknown:37| |$V-reftype:78| |$knormal:55| |$alpha-17:a| |$alpha-16:n|) |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|kmpMatch$unknown:29| |$V-reftype:78| |$knormal:55| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Bool) (|$alpha-18:m| Int) (|$V-reftype:58| Int) (|$alpha-16:n| Int) (|$knormal:40| Bool) (|$knormal:41| Bool) (|$alpha-19:b| Int) )
    (=>
      ( and (|kmpMatch$unknown:31| |$V-reftype:58| |$alpha-18:m| |$alpha-16:n|) |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|make_array$unknown:36| |$V-reftype:58| |$alpha-19:b| |$alpha-18:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Bool) (|$knormal:40| Bool) (|$alpha-16:n| Int) (|$knormal:52| Int) (|$alpha-18:m| Int) (|$V-reftype:78| Int) (|$alpha-19:b| Int) (|$knormal:42| Bool) )
    (=>
      ( and (|kmpMatch$unknown:31| |$knormal:52| |$alpha-18:m| |$alpha-16:n|) (|make_array$unknown:37| |$V-reftype:78| |$knormal:52| |$alpha-19:b| |$alpha-18:m|) |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|kmpMatch$unknown:32| |$V-reftype:78| |$knormal:52| |$alpha-18:m| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:$$tmp::1| Int) (|$V-reftype:96| Int) (|$alpha-3:i| Int) (|$alpha-2:s| Int) (|$alpha-1:n| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (|make_array$unknown:34| |$alpha-1:n|) (|make_array$unknown:35| |$alpha-2:s| |$alpha-1:n|) (|make_array$unknown:36| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) |$knormal:3| (= |$V-reftype:96| |$alpha-2:s|) (= |$alpha-4:$$tmp::1| 1) (= |$knormal:1| (<= 0 |$alpha-3:i|)) (= |$knormal:2| (< |$alpha-3:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|make_array$unknown:37| |$V-reftype:96| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-1:n| Int) (|$alpha-2:s| Int) (|$alpha-3:i| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|make_array$unknown:34| |$alpha-1:n|) (|make_array$unknown:35| |$alpha-2:s| |$alpha-1:n|) (|make_array$unknown:36| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-3:i|)) (= |$knormal:2| (< |$alpha-3:i| |$alpha-1:n|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$knormal:9| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:x| Int) (|$knormal:9| Int) (|$alpha-6:n| Int) (|$alpha-5:i| Int) )
    (=>
      ( and (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|$innerFunc:1-a$unknown:4| |$alpha-8:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:89| Int) (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$knormal:9| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:41| |$knormal:9| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:43| |$V-reftype:89| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|$innerFunc:1-a$unknown:5| |$V-reftype:89| |$alpha-8:x| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:i| Int) (|$alpha-6:n| Int) (|$alpha-8:x| Int) )
    (=>
      ( and (|update$unknown:38| |$alpha-5:i|) (|update$unknown:39| |$alpha-6:n| |$alpha-5:i|) (|update$unknown:42| |$alpha-8:x| |$alpha-6:n| |$alpha-5:i|) )
      (|update$unknown:40| |$alpha-5:i| |$alpha-6:n| |$alpha-5:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$alpha-16:n| Int) (|$knormal:42| Bool) (|$knormal:40| Bool) (|$knormal:41| Bool) )
    (=>
      ( and |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|kmpMatch$unknown:27| |$alpha-16:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Bool) (|$knormal:40| Bool) (|$knormal:42| Bool) (|$alpha-16:n| Int) (|$alpha-18:m| Int) )
    (=>
      ( and |$knormal:42| (= |$knormal:40| (> |$alpha-16:n| 0)) (= |$knormal:41| (> |$alpha-18:m| 0)) (= |$knormal:42| (and |$knormal:40| |$knormal:41|)) )
      (|kmpMatch$unknown:30| |$alpha-18:m| |$alpha-16:n|)
    )
  )
)
(check-sat)

