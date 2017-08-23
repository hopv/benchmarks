(set-info :origin "Verification conditions for the caml program
  let make_array n s i = (*assert (i < n);*) s
  let update i n a x = a i; let a j = if i=j then x else a j in a
  
  let print_string s = ()
  let abs x = if x < 0 then -x else x
  
  let queen(size) =
    let queenArray = make_array size 0 in
    let assign i j queenArray = update (i) size queenArray j in
    let rec dotsPrint n = if n = 0 then () else begin print_string (); dotsPrint (n-1) end in
    let queenPrint queenArray =
      let rec aux1 row = begin
          if row = size then () else
            let n = queenArray(row) in
      assert (0 <= row && row <= size);
            dotsPrint(n-1); print_string (); dotsPrint(size - n); print_string (); aux1 (row + 1)
        end
      in
      aux1(0); print_string () in
    let test j queenArray =
      let qj = queenArray(j) in
      let rec aux2 i =
        if i < j then
          let qi = queenArray(i) in
          if qi = qj then false else if abs(qj - qi) = j - i then false else aux2 (i+1)
        else true
      in aux2 0
    in
    let rec loop row queenArray =
      let next = queenArray(row) + 1 in
      if next > size then
        let queenArray = assign row 0 queenArray in
        if row = 0 then () else loop (row-1) queenArray
      else
        let queenArray = assign row next queenArray in
        if test row queenArray then
          if (row+1) = size then begin queenPrint queenArray; loop(row) queenArray end else loop(row+1) queenArray
        else loop row queenArray
    in loop(0) queenArray
  
  let main n =
    if n>0 then (queen n; ()) else ()
")

(set-logic HORN)

(declare-fun |make_array$unknown:47|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:46|
  ( Int ) Bool
)

(declare-fun |queen$unknown:53|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:49|
  ( Int Int Int Int ) Bool
)

(declare-fun |make_array$unknown:48|
  ( Int Int Int ) Bool
)

(declare-fun |queen$unknown:52|
  ( Int ) Bool
)

(declare-fun |abs$unknown:44|
  ( Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:34|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:28|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:30|
  ( Int Int ) Bool
)

(declare-fun |abs$unknown:45|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:33|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:32|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:31|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:29|
  ( Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:27|
  ( Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:43|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:23|
  ( Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:16|
  ( Int ) Bool
)

(declare-fun |print_string$unknown:50|
  ( Int ) Bool
)

(declare-fun |print_string$unknown:51|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:14|
  ( Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:37|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:38|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:13|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:12|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:7|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:11|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:41|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:42|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:40|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:39|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:60|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:59|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:56|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:58|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:57|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:55|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:54|
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

(declare-fun |$innerFunc:7-test$unknown:36|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:35|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-22:j| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) )
      (|$innerFunc:7-test$unknown:36| |$alpha-22:j| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:169| Int) (|$alpha-52:x| Int) (|$alpha-53:j| Int) (|$alpha-50:i| Int) (|$knormal:143| Int) (|$knormal:142| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-50:i|) (|$innerFunc:1-a$unknown:3| |$knormal:143| |$alpha-53:j| |$alpha-50:i|) (|$innerFunc:1-a$unknown:4| |$alpha-52:x| |$alpha-50:i|) (|$innerFunc:1-a$unknown:5| |$alpha-53:j| |$alpha-52:x| |$alpha-50:i|) (not |$knormal:142|) (= |$V-reftype:169| |$knormal:143|) (= |$knormal:142| (= |$alpha-50:i| |$alpha-53:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:169| |$alpha-53:j| |$alpha-52:x| |$alpha-50:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:168| Int) (|$alpha-53:j| Int) (|$alpha-52:x| Int) (|$alpha-50:i| Int) (|$knormal:142| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-50:i|) (|$innerFunc:1-a$unknown:4| |$alpha-52:x| |$alpha-50:i|) (|$innerFunc:1-a$unknown:5| |$alpha-53:j| |$alpha-52:x| |$alpha-50:i|) |$knormal:142| (= |$V-reftype:168| |$alpha-52:x|) (= |$knormal:142| (= |$alpha-50:i| |$alpha-53:j|)) )
      (|$innerFunc:1-a$unknown:6| |$V-reftype:168| |$alpha-53:j| |$alpha-52:x| |$alpha-50:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:j| Int) (|$alpha-52:x| Int) (|$alpha-50:i| Int) (|$knormal:142| Bool) )
    (=>
      ( and (|$innerFunc:1-a$unknown:1| |$alpha-50:i|) (|$innerFunc:1-a$unknown:4| |$alpha-52:x| |$alpha-50:i|) (|$innerFunc:1-a$unknown:5| |$alpha-53:j| |$alpha-52:x| |$alpha-50:i|) (not |$knormal:142|) (= |$knormal:142| (= |$alpha-50:i| |$alpha-53:j|)) )
      (|$innerFunc:1-a$unknown:2| |$alpha-53:j| |$alpha-50:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:3| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:6| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$V-reftype:3| |$alpha-4:i|) (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:56| |$V-reftype:3| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:a| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$V-reftype:104| Int) (|$knormal:6| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:2| |$alpha-6:a| |$alpha-4:i|) (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$V-reftype:104| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:3| |$V-reftype:104| |$alpha-6:a| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$V-reftype:11| Int) (|$V-reftype:10| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:6| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-4:i|) (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:59| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:60| |$V-reftype:11| |$V-reftype:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) (|$V-reftype:18| Int) (|$alpha-16:row| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:41| |$V-reftype:18| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-16:row| Int) (|$V-reftype:18| Int) (|$knormal:63| Int) (|$alpha-15:size| Int) (|$knormal:68| Int) (|$knormal:20| Bool) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$knormal:63| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:41| |$V-reftype:18| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$V-reftype:76| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) (|$alpha-17:queenArray| Int) (|$alpha-16:row| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:10| |$alpha-17:queenArray| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$V-reftype:76| |$alpha-17:queenArray| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:76| |$alpha-17:queenArray| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-16:row| Int) (|$alpha-17:queenArray| Int) (|$knormal:63| Int) (|$alpha-15:size| Int) (|$V-reftype:76| Int) (|$knormal:68| Int) (|$knormal:20| Bool) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:10| |$alpha-17:queenArray| |$knormal:63| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$V-reftype:76| |$alpha-17:queenArray| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:63| 0) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:76| |$alpha-17:queenArray| |$knormal:63| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-47:i| Int) (|$alpha-49:queenArray| Int) (|$V-reftype:20| Int) (|$alpha-48:j| Int) (|$alpha-46:size| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:11| |$V-reftype:20| |$alpha-49:queenArray| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|update$unknown:56| |$alpha-49:queenArray| |$alpha-46:size| |$alpha-47:i|) )
      (|update$unknown:57| |$V-reftype:20| |$alpha-49:queenArray| |$alpha-46:size| |$alpha-47:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-46:size| Int) (|$alpha-48:j| Int) (|$V-reftype:109| Int) (|$alpha-47:i| Int) (|$V-reftype:110| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:12| |$V-reftype:109| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|update$unknown:60| |$V-reftype:110| |$V-reftype:109| |$alpha-48:j| |$alpha-46:size| |$alpha-47:i|) )
      (|$innerFunc:2-assign$unknown:13| |$V-reftype:110| |$V-reftype:109| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-46:size| Int) (|$alpha-48:j| Int) (|$V-reftype:22| Int) (|$alpha-47:i| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:12| |$V-reftype:22| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) )
      (|update$unknown:59| |$V-reftype:22| |$alpha-48:j| |$alpha-46:size| |$alpha-47:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:31| Bool) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:52| Int) (|$V-reftype:24| Int) (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:52| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:24| |$knormal:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:5-queenPrint$unknown:25| |$V-reftype:24| |$knormal:52| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$knormal:23| Int) (|$knormal:45| Int) (|$alpha-16:row| Int) (|$knormal:52| Int) (|$V-reftype:24| Int) (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$knormal:31| Bool) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:52| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:26| |$knormal:45| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$knormal:52| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:42| |$V-reftype:24| |$knormal:52| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) (|$V-reftype:24| Int) (|$knormal:52| Int) (|$alpha-16:row| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:52| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:36| |$knormal:52| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:7-test$unknown:37| |$V-reftype:24| |$knormal:52| |$alpha-16:row|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:52| Int) (|$V-reftype:24| Int) (|$alpha-18:next| Int) (|$alpha-15:size| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:52| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$knormal:52| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$knormal:23| 0) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:42| |$V-reftype:24| |$knormal:52| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:31| Bool) (|$knormal:68| Int) (|$knormal:33| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:52| Int) (|$V-reftype:24| Int) (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$knormal:20| Bool) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:52| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$knormal:52| |$knormal:33| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) (not |$knormal:20|) (not |$knormal:31|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) (= |$knormal:33| (+ |$alpha-16:row| 1)) )
      (|$innerFunc:8-loop$unknown:42| |$V-reftype:24| |$knormal:52| |$knormal:33| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:53| Bool) (|$alpha-15:size| Int) (|$knormal:63| Int) (|$V-reftype:24| Int) (|$knormal:67| Int) (|$alpha-16:row| Int) (|$knormal:55| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:13| |$V-reftype:24| |$knormal:67| |$knormal:63| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$knormal:67| |$knormal:55| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (not |$knormal:53|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:55| (- |$alpha-16:row| 1)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:42| |$V-reftype:24| |$knormal:67| |$knormal:55| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-46:size| Int) (|$alpha-47:i| Int) (|$alpha-48:j| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) )
      (|update$unknown:54| |$alpha-47:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-48:j| Int) (|$alpha-47:i| Int) (|$alpha-46:size| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) )
      (|update$unknown:55| |$alpha-46:size| |$alpha-47:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-46:size| Int) (|$alpha-47:i| Int) (|$alpha-48:j| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) )
      (|update$unknown:58| |$alpha-48:j| |$alpha-46:size| |$alpha-47:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:102| Int) (|$alpha-46:size| Int) (|$alpha-47:i| Int) (|$alpha-48:j| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:7| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:8| |$alpha-47:i| |$alpha-46:size|) (|$innerFunc:2-assign$unknown:9| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|) (|update$unknown:56| |$V-reftype:102| |$alpha-46:size| |$alpha-47:i|) )
      (|$innerFunc:2-assign$unknown:10| |$V-reftype:102| |$alpha-48:j| |$alpha-47:i| |$alpha-46:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:166| Int) (|$knormal:133| Int) (|$knormal:131| Int) (|$alpha-44:n| Int) (|$knormal:132| Int) (|$knormal:134| Int) (|$knormal:130| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:14| |$alpha-44:n|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:132| |$knormal:131|) (|print_string$unknown:51| |$knormal:134| |$knormal:133|) (not |$knormal:130|) (= |$V-reftype:166| |$knormal:132|) (= |$knormal:130| (= |$alpha-44:n| 0)) (= |$knormal:131| (- |$alpha-44:n| 1)) (= |$knormal:133| 1) )
      (|$innerFunc:3-dotsPrint$unknown:15| |$V-reftype:166| |$alpha-44:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Bool) (|$knormal:134| Int) (|$alpha-44:n| Int) (|$knormal:133| Int) (|$knormal:131| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:14| |$alpha-44:n|) (|print_string$unknown:51| |$knormal:134| |$knormal:133|) (not |$knormal:130|) (= |$knormal:130| (= |$alpha-44:n| 0)) (= |$knormal:131| (- |$alpha-44:n| 1)) (= |$knormal:133| 1) )
      (|$innerFunc:3-dotsPrint$unknown:14| |$knormal:131|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:163| Int) (|$alpha-44:n| Int) (|$knormal:130| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:14| |$alpha-44:n|) |$knormal:130| (= |$V-reftype:163| 1) (= |$knormal:130| (= |$alpha-44:n| 0)) )
      (|$innerFunc:3-dotsPrint$unknown:15| |$V-reftype:163| |$alpha-44:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:130| Bool) (|$alpha-44:n| Int) (|$knormal:133| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:14| |$alpha-44:n|) (not |$knormal:130|) (= |$knormal:130| (= |$alpha-44:n| 0)) (= |$knormal:133| 1) )
      (|print_string$unknown:50| |$knormal:133|)
    )
  )
)
(assert
  (forall ( (|$knormal:115| Int) (|$alpha-39:$$tmp::3| Int) (|$knormal:128| Bool) (|$knormal:123| Int) (|$knormal:119| Int) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$V-reftype:30| Int) (|$knormal:129| Int) (|$knormal:118| Int) (|$knormal:122| Int) (|$knormal:109| Bool) (|$knormal:126| Bool) (|$knormal:127| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:17| |$V-reftype:30| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:19| |$V-reftype:30| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:122| Int) (|$knormal:118| Int) (|$knormal:129| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$alpha-36:queenArray| Int) (|$V-reftype:36| Int) (|$alpha-37:row| Int) (|$knormal:119| Int) (|$knormal:123| Int) (|$knormal:128| Bool) (|$alpha-39:$$tmp::3| Int) (|$knormal:115| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:17| |$alpha-36:queenArray| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$V-reftype:36| |$alpha-36:queenArray| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:18| |$V-reftype:36| |$alpha-36:queenArray| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:115| Int) (|$alpha-39:$$tmp::3| Int) (|$knormal:128| Bool) (|$knormal:123| Int) (|$knormal:119| Int) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$V-reftype:34| Int) (|$knormal:129| Int) (|$knormal:118| Int) (|$knormal:122| Int) (|$knormal:109| Bool) (|$knormal:126| Bool) (|$knormal:127| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:19| |$V-reftype:34| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:19| |$V-reftype:34| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:122| Int) (|$knormal:118| Int) (|$knormal:129| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$alpha-36:queenArray| Int) (|$V-reftype:36| Int) (|$alpha-37:row| Int) (|$knormal:119| Int) (|$knormal:123| Int) (|$knormal:128| Bool) (|$alpha-39:$$tmp::3| Int) (|$knormal:115| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:19| |$alpha-36:queenArray| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$V-reftype:36| |$alpha-36:queenArray| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:20| |$V-reftype:36| |$alpha-36:queenArray| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:122| Int) (|$knormal:118| Int) (|$knormal:117| Int) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$knormal:129| Int) (|$knormal:115| Int) (|$knormal:119| Int) (|$knormal:123| Int) (|$knormal:128| Bool) (|$V-reftype:161| Int) (|$alpha-39:$$tmp::3| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:22| |$knormal:117| |$knormal:115| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$V-reftype:161| |$knormal:117|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:22| |$V-reftype:161| |$alpha-37:row| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:122| Int) (|$knormal:118| Int) (|$knormal:129| Int) (|$knormal:124| Int) (|$knormal:120| Int) (|$knormal:121| Int) (|$knormal:125| Int) (|$alpha-34:size| Int) (|$alpha-37:row| Int) (|$knormal:119| Int) (|$knormal:123| Int) (|$knormal:128| Bool) (|$alpha-39:$$tmp::3| Int) (|$knormal:115| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:115| Int) (|$alpha-39:$$tmp::3| Int) (|$knormal:128| Bool) (|$knormal:123| Int) (|$knormal:119| Int) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:121| Int) (|$knormal:120| Int) (|$knormal:124| Int) (|$knormal:129| Int) (|$knormal:118| Int) (|$knormal:122| Int) (|$knormal:109| Bool) (|$knormal:126| Bool) (|$knormal:127| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:119| |$knormal:118|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:115| (+ |$alpha-37:row| 1)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:4-aux1$unknown:21| |$knormal:115| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:122| Int) (|$knormal:129| Int) (|$knormal:124| Int) (|$knormal:120| Int) (|$knormal:121| Int) (|$knormal:125| Int) (|$alpha-34:size| Int) (|$alpha-37:row| Int) (|$knormal:123| Int) (|$knormal:128| Bool) (|$alpha-39:$$tmp::3| Int) (|$knormal:118| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:121| |$knormal:120|) (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:118| 1) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|print_string$unknown:50| |$knormal:118|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:120| Int) (|$alpha-39:$$tmp::3| Int) (|$knormal:128| Bool) (|$knormal:123| Int) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:125| Int) (|$knormal:124| Int) (|$knormal:129| Int) (|$knormal:122| Int) (|$knormal:109| Bool) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (|print_string$unknown:51| |$knormal:123| |$knormal:122|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:120| (- |$alpha-34:size| |$knormal:129|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:3-dotsPrint$unknown:14| |$knormal:120|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:109| Bool) (|$knormal:129| Int) (|$knormal:124| Int) (|$knormal:125| Int) (|$alpha-34:size| Int) (|$alpha-37:row| Int) (|$knormal:128| Bool) (|$alpha-39:$$tmp::3| Int) (|$knormal:122| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:15| |$knormal:125| |$knormal:124|) (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:122| 1) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|print_string$unknown:50| |$knormal:122|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Bool) (|$knormal:126| Bool) (|$knormal:124| Int) (|$alpha-39:$$tmp::3| Int) (|$knormal:128| Bool) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:129| Int) (|$knormal:109| Bool) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) |$knormal:128| (not |$knormal:109|) (= |$alpha-39:$$tmp::3| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:124| (- |$knormal:129| 1)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
      (|$innerFunc:3-dotsPrint$unknown:14| |$knormal:124|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:109| Bool) (|$alpha-37:row| Int) (|$alpha-34:size| Int) (|$knormal:129| Int) (|$knormal:128| Bool) (|$knormal:126| Bool) (|$knormal:127| Bool) )
    ( and (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:20| |$knormal:129| |$alpha-37:row| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (not |$knormal:109|) (not |$knormal:128|) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:126| (<= 0 |$alpha-37:row|)) (= |$knormal:127| (<= |$alpha-37:row| |$alpha-34:size|)) (= |$knormal:128| (and |$knormal:126| |$knormal:127|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:151| Int) (|$alpha-34:size| Int) (|$alpha-37:row| Int) (|$knormal:109| Bool) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) |$knormal:109| (= |$V-reftype:151| 1) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) )
      (|$innerFunc:4-aux1$unknown:22| |$V-reftype:151| |$alpha-37:row| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-34:size| Int) (|$alpha-37:row| Int) (|$knormal:109| Bool) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:16| |$alpha-34:size|) (|$innerFunc:4-aux1$unknown:21| |$alpha-37:row| |$alpha-34:size|) (not |$knormal:109|) (= |$knormal:109| (= |$alpha-37:row| |$alpha-34:size|)) )
      (|$innerFunc:4-aux1$unknown:19| |$alpha-37:row| |$alpha-34:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$alpha-31:size| Int) (|$V-reftype:30| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:17| |$V-reftype:30| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:5-queenPrint$unknown:24| |$V-reftype:30| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-31:size| Int) (|$alpha-32:queenArray| Int) (|$knormal:106| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:17| |$alpha-32:queenArray| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:25| |$V-reftype:45| |$alpha-32:queenArray| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:4-aux1$unknown:18| |$V-reftype:45| |$alpha-32:queenArray| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$alpha-31:size| Int) (|$V-reftype:34| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:19| |$V-reftype:34| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:5-queenPrint$unknown:24| |$V-reftype:34| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Int) (|$alpha-31:size| Int) (|$alpha-32:queenArray| Int) (|$knormal:106| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:19| |$alpha-32:queenArray| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:25| |$V-reftype:45| |$alpha-32:queenArray| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:4-aux1$unknown:20| |$V-reftype:45| |$alpha-32:queenArray| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:99| Int) (|$knormal:106| Int) (|$knormal:108| Int) (|$alpha-31:size| Int) (|$knormal:100| Int) (|$V-reftype:149| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:22| |$knormal:108| |$knormal:106| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (|print_string$unknown:51| |$knormal:100| |$knormal:99|) (= |$V-reftype:149| |$knormal:100|) (= |$knormal:106| 0) (= |$knormal:99| 1) )
      (|$innerFunc:5-queenPrint$unknown:26| |$V-reftype:149| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:size| Int) (|$knormal:108| Int) (|$knormal:106| Int) (|$knormal:99| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:22| |$knormal:108| |$knormal:106| |$alpha-31:size|) (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (= |$knormal:106| 0) (= |$knormal:99| 1) )
      (|print_string$unknown:50| |$knormal:99|)
    )
  )
)
(assert
  (forall ( (|$alpha-31:size| Int) (|$knormal:106| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:4-aux1$unknown:16| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:106| Int) (|$alpha-31:size| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:23| |$alpha-31:size|) (= |$knormal:106| 0) )
      (|$innerFunc:4-aux1$unknown:21| |$knormal:106| |$alpha-31:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$V-reftype:43| Int) (|$knormal:23| Int) (|$knormal:31| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:24| |$V-reftype:43| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:43| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$knormal:23| Int) (|$knormal:45| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$V-reftype:74| Int) (|$knormal:31| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:26| |$knormal:45| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$V-reftype:74| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:74| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$V-reftype:131| Int) (|$knormal:31| Bool) (|$knormal:42| Int) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$knormal:45| Int) (|$knormal:23| Int) (|$knormal:20| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:26| |$knormal:45| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:43| |$knormal:42| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$V-reftype:131| |$knormal:42|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:43| |$V-reftype:131| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:31| Bool) (|$knormal:23| Int) (|$knormal:45| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:26| |$knormal:45| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$knormal:45| Int) (|$knormal:23| Int) (|$knormal:31| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:5-queenPrint$unknown:26| |$knormal:45| |$alpha-15:size|) (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$knormal:83| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$alpha-26:j| Int) (|$V-reftype:48| Int) (|$knormal:98| Int) (|$knormal:84| Int) (|$knormal:81| Bool) (|$knormal:87| Bool) (|$knormal:86| Int) (|$knormal:95| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:27| |$V-reftype:48|) (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:30| |$V-reftype:48| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:77| Int) (|$alpha-22:j| Int) (|$V-reftype:48| Int) (|$knormal:80| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:27| |$V-reftype:48|) (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:7-test$unknown:36| |$V-reftype:48| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:77| Int) (|$V-reftype:67| Int) (|$alpha-23:queenArray| Int) (|$alpha-22:j| Int) (|$knormal:80| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:27| |$alpha-23:queenArray|) (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$V-reftype:67| |$alpha-23:queenArray| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:6-aux2$unknown:28| |$V-reftype:67| |$alpha-23:queenArray|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$knormal:83| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$V-reftype:56| Int) (|$alpha-27:queenArray| Int) (|$alpha-26:j| Int) (|$knormal:98| Int) (|$knormal:84| Int) (|$knormal:81| Bool) (|$knormal:87| Bool) (|$knormal:86| Int) (|$knormal:95| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:27| |$alpha-27:queenArray|) (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$V-reftype:56| |$alpha-27:queenArray| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:28| |$V-reftype:56| |$alpha-27:queenArray|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$knormal:83| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$alpha-26:j| Int) (|$V-reftype:54| Int) (|$knormal:98| Int) (|$knormal:84| Int) (|$knormal:81| Bool) (|$knormal:87| Bool) (|$knormal:86| Int) (|$knormal:95| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:30| |$V-reftype:54| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:30| |$V-reftype:54| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:95| Int) (|$knormal:86| Int) (|$knormal:87| Bool) (|$knormal:81| Bool) (|$knormal:84| Int) (|$knormal:98| Int) (|$alpha-26:j| Int) (|$alpha-27:queenArray| Int) (|$V-reftype:56| Int) (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$knormal:83| Int) (|$knormal:82| Bool) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:30| |$alpha-27:queenArray| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$V-reftype:56| |$alpha-27:queenArray| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:31| |$V-reftype:56| |$alpha-27:queenArray| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:145| Int) (|$knormal:82| Bool) (|$knormal:83| Int) (|$knormal:95| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$alpha-26:j| Int) (|$knormal:98| Int) (|$knormal:97| Int) (|$knormal:84| Int) (|$knormal:81| Bool) (|$knormal:87| Bool) (|$knormal:86| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:34| |$knormal:97| |$knormal:95| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$V-reftype:145| |$knormal:97|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:34| |$V-reftype:145| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$knormal:81| Bool) (|$knormal:84| Int) (|$knormal:98| Int) (|$alpha-26:j| Int) (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$knormal:83| Int) (|$knormal:87| Bool) (|$V-reftype:143| Int) (|$knormal:86| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| |$knormal:87| (not |$knormal:82|) (= |$V-reftype:143| 0) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) )
      (|$innerFunc:6-aux2$unknown:34| |$V-reftype:143| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:95| Int) (|$knormal:86| Int) (|$knormal:87| Bool) (|$knormal:81| Bool) (|$knormal:84| Int) (|$knormal:98| Int) (|$alpha-26:j| Int) (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$knormal:83| Int) (|$knormal:82| Bool) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$knormal:83| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$alpha-26:j| Int) (|$knormal:98| Int) (|$knormal:84| Int) (|$knormal:81| Bool) (|$knormal:87| Bool) (|$knormal:86| Int) (|$knormal:95| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:95| Int) (|$knormal:86| Int) (|$knormal:87| Bool) (|$knormal:81| Bool) (|$knormal:84| Int) (|$knormal:98| Int) (|$alpha-26:j| Int) (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$knormal:83| Int) (|$knormal:82| Bool) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (|abs$unknown:45| |$knormal:84| |$knormal:83|) |$knormal:81| (not |$knormal:82|) (not |$knormal:87|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) (= |$knormal:86| (- |$alpha-26:j| |$alpha-29:i|)) (= |$knormal:87| (= |$knormal:84| |$knormal:86|)) (= |$knormal:95| (+ |$alpha-29:i| 1)) )
      (|$innerFunc:6-aux2$unknown:33| |$knormal:95| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$knormal:81| Bool) (|$knormal:98| Int) (|$alpha-26:j| Int) (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$knormal:82| Bool) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) |$knormal:81| |$knormal:82| (= |$V-reftype:139| 0) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) )
      (|$innerFunc:6-aux2$unknown:34| |$V-reftype:139| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:82| Bool) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$alpha-26:j| Int) (|$knormal:98| Int) (|$knormal:81| Bool) (|$knormal:83| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:31| |$knormal:98| |$alpha-29:i| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) |$knormal:81| (not |$knormal:82|) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) (= |$knormal:82| (= |$knormal:98| |$alpha-28:qj|)) (= |$knormal:83| (- |$alpha-28:qj| |$knormal:98|)) )
      (|abs$unknown:44| |$knormal:83|)
    )
  )
)
(assert
  (forall ( (|$alpha-29:i| Int) (|$alpha-28:qj| Int) (|$alpha-26:j| Int) (|$knormal:81| Bool) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) |$knormal:81| (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) )
      (|$innerFunc:6-aux2$unknown:30| |$alpha-29:i| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:81| Bool) (|$alpha-26:j| Int) (|$alpha-28:qj| Int) (|$alpha-29:i| Int) (|$V-reftype:146| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:29| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:32| |$alpha-28:qj| |$alpha-26:j|) (|$innerFunc:6-aux2$unknown:33| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|) (not |$knormal:81|) (= |$V-reftype:146| 1) (= |$knormal:81| (< |$alpha-29:i| |$alpha-26:j|)) )
      (|$innerFunc:6-aux2$unknown:34| |$V-reftype:146| |$alpha-29:i| |$alpha-28:qj| |$alpha-26:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:77| Int) (|$V-reftype:54| Int) (|$alpha-22:j| Int) (|$knormal:80| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:30| |$V-reftype:54| |$alpha-22:j|) (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:7-test$unknown:36| |$V-reftype:54| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$alpha-23:queenArray| Int) (|$alpha-22:j| Int) (|$V-reftype:67| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:30| |$alpha-23:queenArray| |$alpha-22:j|) (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$V-reftype:67| |$alpha-23:queenArray| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:6-aux2$unknown:31| |$V-reftype:67| |$alpha-23:queenArray| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:136| Int) (|$knormal:80| Int) (|$knormal:79| Int) (|$knormal:77| Int) (|$alpha-22:j| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:34| |$knormal:79| |$knormal:77| |$knormal:80| |$alpha-22:j|) (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$V-reftype:136| |$knormal:79|) (= |$knormal:77| 0) )
      (|$innerFunc:7-test$unknown:38| |$V-reftype:136| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$alpha-22:j| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:6-aux2$unknown:29| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:77| Int) (|$alpha-22:j| Int) (|$knormal:80| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:6-aux2$unknown:32| |$knormal:80| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$knormal:80| Int) (|$alpha-22:j| Int) (|$knormal:77| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:35| |$alpha-22:j|) (|$innerFunc:7-test$unknown:37| |$knormal:80| |$alpha-22:j| |$alpha-22:j|) (= |$knormal:77| 0) )
      (|$innerFunc:6-aux2$unknown:33| |$knormal:77| |$knormal:80| |$alpha-22:j|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$V-reftype:65| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) )
    (=>
      ( and (|$innerFunc:7-test$unknown:36| |$V-reftype:65| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:65| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-15:size| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$V-reftype:74| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$V-reftype:74| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$knormal:23| 0) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:74| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:31| Bool) (|$knormal:68| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$V-reftype:74| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$V-reftype:74| |$knormal:33| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) (not |$knormal:20|) (not |$knormal:31|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) (= |$knormal:33| (+ |$alpha-16:row| 1)) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:74| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$knormal:23| Int) (|$alpha-15:size| Int) (|$knormal:20| Bool) (|$V-reftype:134| Int) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:43| |$knormal:29| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$knormal:23| 0) (= |$V-reftype:134| |$knormal:29|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:43| |$V-reftype:134| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$V-reftype:133| Int) (|$knormal:20| Bool) (|$knormal:37| Int) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$knormal:23| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$knormal:31| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:43| |$knormal:37| |$knormal:33| |$alpha-15:size|) (not (= |$knormal:23| 0)) (not |$knormal:20|) (not |$knormal:31|) (= |$V-reftype:133| |$knormal:37|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) (= |$knormal:33| (+ |$alpha-16:row| 1)) )
      (|$innerFunc:8-loop$unknown:43| |$V-reftype:133| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:31| Bool) (|$alpha-15:size| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) |$knormal:31| (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) )
      (|$innerFunc:5-queenPrint$unknown:23| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$alpha-18:next| Int) (|$knormal:20| Bool) (|$alpha-15:size| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:31| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) (not |$knormal:20|) (not |$knormal:31|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) (= |$knormal:33| (+ |$alpha-16:row| 1)) )
      (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:31| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$knormal:23| Int) (|$alpha-15:size| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) (|$knormal:33| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not (= |$knormal:23| 0)) (not |$knormal:20|) (not |$knormal:31|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:30| (+ |$alpha-16:row| 1)) (= |$knormal:31| (= |$knormal:30| |$alpha-15:size|)) (= |$knormal:33| (+ |$alpha-16:row| 1)) )
      (|$innerFunc:8-loop$unknown:40| |$knormal:33| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$knormal:23| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$knormal:23| 0) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$knormal:23| Int) (|$alpha-15:size| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:38| |$knormal:23| |$alpha-16:row|) (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$knormal:23| 0) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:row| Int) (|$alpha-15:size| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:41| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:53| Bool) (|$V-reftype:74| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$knormal:55| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:41| |$V-reftype:74| |$knormal:55| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (not |$knormal:53|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:55| (- |$alpha-16:row| 1)) (= |$knormal:63| 0) )
      (|$innerFunc:2-assign$unknown:12| |$V-reftype:74| |$knormal:63| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$V-reftype:128| Int) (|$knormal:20| Bool) (|$knormal:55| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:59| Int) (|$knormal:53| Bool) (|$knormal:63| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:43| |$knormal:59| |$knormal:55| |$alpha-15:size|) |$knormal:20| (not |$knormal:53|) (= |$V-reftype:128| |$knormal:59|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:55| (- |$alpha-16:row| 1)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:43| |$V-reftype:128| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:53| Bool) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$V-reftype:126| Int) (|$knormal:63| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| |$knormal:53| (= |$V-reftype:126| 1) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:43| |$V-reftype:126| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$knormal:53| Bool) (|$knormal:55| Int) (|$knormal:63| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (not |$knormal:53|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:55| (- |$alpha-16:row| 1)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:55| Int) (|$knormal:53| Bool) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (not |$knormal:53|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:53| (= |$alpha-16:row| 0)) (= |$knormal:55| (- |$alpha-16:row| 1)) (= |$knormal:63| 0) )
      (|$innerFunc:8-loop$unknown:40| |$knormal:55| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$knormal:63| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:63| 0) )
      (|$innerFunc:2-assign$unknown:7| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:63| 0) )
      (|$innerFunc:2-assign$unknown:8| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) (|$knormal:63| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) |$knormal:20| (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) (= |$knormal:63| 0) )
      (|$innerFunc:2-assign$unknown:9| |$knormal:63| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:7| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:next| Int) (|$alpha-15:size| Int) (|$alpha-16:row| Int) (|$knormal:68| Int) (|$knormal:20| Bool) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:8| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:9| |$alpha-18:next| |$alpha-16:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:20| Bool) (|$knormal:68| Int) (|$alpha-16:row| Int) (|$alpha-15:size| Int) (|$alpha-18:next| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:39| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:40| |$alpha-16:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:42| |$knormal:68| |$alpha-16:row| |$alpha-16:row| |$alpha-15:size|) (not |$knormal:20|) (= |$alpha-18:next| (+ |$knormal:68| 1)) (= |$knormal:20| (> |$alpha-18:next| |$alpha-15:size|)) )
      (|$innerFunc:7-test$unknown:35| |$alpha-16:row|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) (|$V-reftype:74| Int) (|$knormal:9| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:41| |$V-reftype:74| |$knormal:9| |$alpha-11:size|) (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) (= |$knormal:9| 0) )
      (|make_array$unknown:48| |$V-reftype:74| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$V-reftype:91| Int) (|$knormal:9| Int) (|$knormal:17| Int) (|$alpha-11:size| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:41| |$knormal:17| |$knormal:9| |$alpha-11:size|) (|make_array$unknown:49| |$V-reftype:91| |$knormal:17| |$knormal:15| |$alpha-11:size|) (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) (= |$knormal:9| 0) )
      (|$innerFunc:8-loop$unknown:42| |$V-reftype:91| |$knormal:17| |$knormal:9| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$knormal:13| Int) (|$alpha-11:size| Int) (|$V-reftype:118| Int) (|$knormal:15| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:43| |$knormal:13| |$knormal:9| |$alpha-11:size|) (|queen$unknown:52| |$alpha-11:size|) (= |$V-reftype:118| |$knormal:13|) (= |$knormal:15| 0) (= |$knormal:9| 0) )
      (|queen$unknown:53| |$V-reftype:118| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-10:x| Int) (|$V-reftype:114| Int) )
    (=>
      ( and (|abs$unknown:44| |$alpha-10:x|) |$knormal:7| (= |$V-reftype:114| (- |$alpha-10:x|)) (= |$knormal:7| (< |$alpha-10:x| 0)) )
      (|abs$unknown:45| |$V-reftype:114| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:7| Bool) (|$alpha-10:x| Int) (|$V-reftype:115| Int) )
    (=>
      ( and (|abs$unknown:44| |$alpha-10:x|) (not |$knormal:7|) (= |$V-reftype:115| |$alpha-10:x|) (= |$knormal:7| (< |$alpha-10:x| 0)) )
      (|abs$unknown:45| |$V-reftype:115| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-2:s| Int) (|$alpha-1:n| Int) (|$V-reftype:111| Int) )
    (=>
      ( and (|make_array$unknown:46| |$alpha-1:n|) (|make_array$unknown:47| |$alpha-2:s| |$alpha-1:n|) (|make_array$unknown:48| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) (= |$V-reftype:111| |$alpha-2:s|) )
      (|make_array$unknown:49| |$V-reftype:111| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:112| Int) (|$alpha-9:s| Int) )
    (=>
      ( and (|print_string$unknown:50| |$alpha-9:s|) (= |$V-reftype:112| 1) )
      (|print_string$unknown:51| |$V-reftype:112| |$alpha-9:s|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$knormal:15| Int) )
    (=>
      ( and (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) )
      (|make_array$unknown:46| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) )
    (=>
      ( and (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) )
      (|make_array$unknown:47| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) (|$knormal:9| Int) )
    (=>
      ( and (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) (= |$knormal:9| 0) )
      (|$innerFunc:8-loop$unknown:39| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Int) (|$alpha-11:size| Int) (|$knormal:15| Int) )
    (=>
      ( and (|queen$unknown:52| |$alpha-11:size|) (= |$knormal:15| 0) (= |$knormal:9| 0) )
      (|$innerFunc:8-loop$unknown:40| |$knormal:9| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:6| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:6| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:108| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:6| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:57| |$knormal:6| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:59| |$V-reftype:108| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$V-reftype:108| |$alpha-7:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:54| |$alpha-4:i|) (|update$unknown:55| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:58| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:56| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$alpha-13:n| Int) )
    (=>
      ( and |$knormal:18| (= |$knormal:18| (> |$alpha-13:n| 0)) )
      (|queen$unknown:52| |$alpha-13:n|)
    )
  )
)
(check-sat)

