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

(declare-fun |make_array$unknown:62|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:61|
  ( Int ) Bool
)

(declare-fun |queen$unknown:68|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:64|
  ( Int Int Int Int ) Bool
)

(declare-fun |make_array$unknown:63|
  ( Int Int Int ) Bool
)

(declare-fun |queen$unknown:67|
  ( Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:48|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:45|
  ( Int ) Bool
)

(declare-fun |abs$unknown:59|
  ( Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:44|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:38|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:40|
  ( Int Int Int ) Bool
)

(declare-fun |abs$unknown:60|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:43|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:42|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:39|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:36|
  ( Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:58|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:30|
  ( Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:24|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:28|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:23|
  ( Int ) Bool
)

(declare-fun |print_string$unknown:65|
  ( Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |print_string$unknown:66|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:18|
  ( Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:50|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:49|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:47|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:46|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:54|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:53|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:35|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:34|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:33|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:32|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:51|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:14|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:17|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:9|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:15|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:13|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:56|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:57|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:55|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:52|
  ( Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:75|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:74|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:71|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:73|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:72|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:70|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:69|
  ( Int ) Bool
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

(declare-fun |$innerFunc:1-a$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:199| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) (|$alpha-58:i| Int) (|$alpha-59:n| Int) (|$knormal:183| Int) (|$alpha-61:x| Int) (|$knormal:182| Bool) )
    (=>
      ( and (= |$knormal:182| (= |$alpha-58:i| |$alpha-63:j|)) (= |$V-reftype:199| |$knormal:183|) (not |$knormal:182|) (|$innerFunc:1-a$unknown:7| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:6| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:5| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:4| |$knormal:183| |$alpha-63:j| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:2| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:1| |$alpha-58:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:199| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:198| Int) (|$alpha-63:j| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-58:i| Int) (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$knormal:182| Bool) )
    (=>
      ( and (= |$knormal:182| (= |$alpha-58:i| |$alpha-63:j|)) (= |$V-reftype:198| |$alpha-61:x|) |$knormal:182| (|$innerFunc:1-a$unknown:7| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:6| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:5| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:2| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:1| |$alpha-58:i|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:198| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:182| Bool) (|$alpha-61:x| Int) (|$alpha-59:n| Int) (|$alpha-58:i| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) )
    (=>
      ( and (= |$knormal:182| (= |$alpha-58:i| |$alpha-63:j|)) (not |$knormal:182|) (|$innerFunc:1-a$unknown:7| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:6| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:5| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:2| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:1-a$unknown:1| |$alpha-58:i|) )
      (|$innerFunc:1-a$unknown:3| |$alpha-63:j| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$V-reftype:5| Int) (|$alpha-4:i| Int) (|$knormal:10| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:71| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:10| Int) (|$V-reftype:134| Int) (|$alpha-4:i| Int) (|$alpha-6:a| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$V-reftype:134| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) (|$innerFunc:1-a$unknown:3| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:4| |$V-reftype:134| |$alpha-6:a| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$knormal:10| Int) (|$V-reftype:15| Int) (|$V-reftype:14| Int) (|$alpha-7:x| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:74| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) (|$innerFunc:1-a$unknown:8| |$V-reftype:15| |$V-reftype:14| |$knormal:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) )
      (|update$unknown:75| |$V-reftype:15| |$V-reftype:14| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:18| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:18| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$V-reftype:18| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:18| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-18:queenArray| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$V-reftype:106| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:10| |$alpha-18:queenArray| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:106| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-18:queenArray| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:10| |$alpha-18:queenArray| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-53:size| Int) (|$alpha-55:i| Int) (|$alpha-56:j| Int) (|$alpha-57:queenArray| Int) )
    (=>
      ( and (|update$unknown:71| |$alpha-57:queenArray| |$alpha-53:size| |$alpha-55:i|) (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:15| |$V-reftype:28| |$alpha-57:queenArray| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|update$unknown:72| |$V-reftype:28| |$alpha-57:queenArray| |$alpha-53:size| |$alpha-55:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:139| Int) (|$alpha-53:size| Int) (|$alpha-55:i| Int) (|$alpha-56:j| Int) (|$V-reftype:140| Int) )
    (=>
      ( and (|update$unknown:75| |$V-reftype:140| |$V-reftype:139| |$alpha-56:j| |$alpha-53:size| |$alpha-55:i|) (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:16| |$V-reftype:139| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|$innerFunc:2-assign$unknown:17| |$V-reftype:140| |$V-reftype:139| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:30| Int) (|$alpha-53:size| Int) (|$alpha-55:i| Int) (|$alpha-56:j| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:16| |$V-reftype:30| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|update$unknown:74| |$V-reftype:30| |$alpha-56:j| |$alpha-53:size| |$alpha-55:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-56:j| Int) (|$alpha-55:i| Int) (|$alpha-53:size| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|update$unknown:69| |$alpha-55:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-53:size| Int) (|$alpha-55:i| Int) (|$alpha-56:j| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|update$unknown:70| |$alpha-53:size| |$alpha-55:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-56:j| Int) (|$alpha-55:i| Int) (|$alpha-53:size| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|update$unknown:73| |$alpha-56:j| |$alpha-53:size| |$alpha-55:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:132| Int) (|$alpha-56:j| Int) (|$alpha-55:i| Int) (|$alpha-53:size| Int) )
    (=>
      ( and (|update$unknown:71| |$V-reftype:132| |$alpha-53:size| |$alpha-55:i|) (|$innerFunc:2-assign$unknown:9| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|) (|$innerFunc:2-assign$unknown:12| |$alpha-55:i| |$alpha-53:size|) )
      (|$innerFunc:2-assign$unknown:14| |$V-reftype:132| |$alpha-56:j| |$alpha-55:i| |$alpha-53:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:26| Int) (|$alpha-17:row| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:14| |$V-reftype:26| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:26| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$V-reftype:26| Int) (|$knormal:87| Int) (|$alpha-15:size| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:14| |$V-reftype:26| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:26| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:106| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$alpha-18:queenArray| Int) (|$alpha-17:row| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:14| |$alpha-18:queenArray| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$knormal:87| Int) (|$alpha-15:size| Int) (|$V-reftype:106| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:14| |$alpha-18:queenArray| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:31| |$knormal:72| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:5-queenPrint$unknown:32| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:33| |$knormal:72| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:5-queenPrint$unknown:34| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:63| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:63| Int) (|$knormal:33| Int) (|$knormal:43| Bool) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:46| |$knormal:72| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:7-test$unknown:47| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$knormal:72| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:7-test$unknown:50| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$knormal:26| Bool) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:43| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:43| Bool) (|$knormal:92| Int) (|$knormal:47| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$knormal:47| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$knormal:87| Int) (|$V-reftype:32| Int) (|$knormal:91| Int) (|$alpha-17:row| Int) (|$knormal:73| Bool) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:91| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:91| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:91| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:73| Bool) (|$alpha-15:size| Int) (|$knormal:87| Int) (|$V-reftype:32| Int) (|$knormal:91| Int) (|$alpha-17:row| Int) (|$knormal:77| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:91| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:17| |$V-reftype:32| |$knormal:91| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:91| |$knormal:77| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:170| Int) (|$knormal:173| Int) (|$alpha-49:size| Int) (|$V-reftype:35| Int) (|$alpha-51:n| Int) (|$knormal:174| Int) (|$knormal:166| Bool) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:66| |$knormal:174| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$knormal:174| Int) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$alpha-50:queenArray| Int) (|$V-reftype:37| Int) (|$knormal:173| Int) (|$knormal:170| Int) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:66| |$knormal:174| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-50:queenArray| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$knormal:174| Int) (|$knormal:170| Int) (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:172| Int) (|$knormal:173| Int) (|$V-reftype:196| Int) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (= |$V-reftype:196| |$knormal:172|) (not |$knormal:166|) (|print_string$unknown:66| |$knormal:174| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| |$knormal:170| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:22| |$V-reftype:196| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$knormal:174| Int) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$knormal:173| Int) (|$knormal:170| Int) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:66| |$knormal:174| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:170| Int) (|$knormal:173| Int) (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:174| Int) (|$knormal:166| Bool) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:66| |$knormal:174| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:170| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$V-reftype:193| Int) )
    (=>
      ( and (= |$knormal:166| (= |$alpha-51:n| 0)) (= |$V-reftype:193| 1) |$knormal:166| (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:22| |$V-reftype:193| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$knormal:173| Int) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-49:size|) )
      (|print_string$unknown:65| |$knormal:173|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$knormal:161| Int) (|$V-reftype:35| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$alpha-42:row| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:151| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:35| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Bool) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$V-reftype:35| Int) (|$alpha-42:row| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:159| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:35| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:151| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$knormal:155| Int) (|$alpha-42:row| Int) (|$V-reftype:50| Int) (|$knormal:161| Int) (|$alpha-41:queenArray| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$knormal:165| Int) (|$knormal:154| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-41:queenArray| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:159| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$alpha-42:row| Int) (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$knormal:165| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-41:queenArray| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$knormal:155| Int) (|$knormal:147| Int) (|$alpha-42:row| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$V-reftype:44| Int) (|$knormal:165| Int) (|$knormal:146| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:24| |$V-reftype:44| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:44| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:146| Int) (|$knormal:165| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-41:queenArray| Int) (|$V-reftype:50| Int) (|$alpha-42:row| Int) (|$knormal:147| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:143| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:24| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$knormal:155| Int) (|$knormal:147| Int) (|$alpha-42:row| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$V-reftype:48| Int) (|$knormal:165| Int) (|$knormal:146| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:146| Int) (|$knormal:165| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-41:queenArray| Int) (|$V-reftype:50| Int) (|$alpha-42:row| Int) (|$knormal:147| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:143| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:26| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:146| Int) (|$knormal:145| Int) (|$alpha-42:row| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$knormal:165| Int) (|$knormal:143| Int) (|$knormal:147| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$V-reftype:191| Int) (|$alpha-44:$$tmp::3| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (= |$V-reftype:191| |$knormal:145|) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:29| |$knormal:145| |$knormal:143| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| |$V-reftype:191| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:146| Int) (|$knormal:165| Int) (|$knormal:161| Int) (|$knormal:151| Int) (|$knormal:153| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$alpha-42:row| Int) (|$knormal:147| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:143| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:143| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$knormal:155| Int) (|$knormal:147| Int) (|$alpha-42:row| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$knormal:165| Int) (|$knormal:146| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|print_string$unknown:66| |$knormal:147| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:28| |$knormal:143| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$knormal:161| Int) (|$knormal:151| Int) (|$knormal:153| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$alpha-42:row| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:146| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|print_string$unknown:65| |$knormal:146|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:151| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$knormal:155| Int) (|$alpha-42:row| Int) (|$knormal:159| Int) (|$knormal:161| Int) (|$alpha-39:size| Int) (|$knormal:165| Int) (|$knormal:154| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$knormal:161| Int) (|$knormal:159| Int) (|$alpha-42:row| Int) (|$knormal:155| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:151| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:66| |$knormal:155| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:151| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:137| Bool) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$knormal:161| Int) (|$knormal:159| Int) (|$alpha-42:row| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) )
      (|print_string$unknown:65| |$knormal:154|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:159| Int) (|$alpha-44:$$tmp::3| Int) (|$knormal:164| Bool) (|$alpha-42:row| Int) (|$alpha-39:size| Int) (|$knormal:165| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:18| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:137| Bool) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:164| Bool) (|$alpha-44:$$tmp::3| Int) (|$knormal:159| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$alpha-44:$$tmp::3| 1) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:159| |$alpha-39:size|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:137| Bool) (|$alpha-42:row| Int) (|$alpha-39:size| Int) (|$knormal:165| Int) (|$knormal:164| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:164|) (not |$knormal:137|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:181| Int) (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$V-reftype:181| 1) |$knormal:137| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| |$V-reftype:181| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:23| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Int) (|$alpha-35:size| Int) (|$V-reftype:44| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:24| |$V-reftype:44| |$alpha-35:size|) )
      (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:44| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-35:size| Int) (|$alpha-37:queenArray| Int) (|$knormal:134| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:34| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:24| |$alpha-37:queenArray| |$alpha-35:size|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Int) (|$alpha-35:size| Int) (|$V-reftype:48| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-35:size|) )
      (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:48| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-35:size| Int) (|$alpha-37:queenArray| Int) (|$knormal:134| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:34| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:26| |$alpha-37:queenArray| |$alpha-35:size|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Int) (|$knormal:134| Int) (|$knormal:136| Int) (|$alpha-35:size| Int) (|$knormal:128| Int) (|$V-reftype:179| Int) )
    (=>
      ( and (= |$knormal:134| 0) (= |$knormal:127| 1) (= |$V-reftype:179| |$knormal:128|) (|print_string$unknown:66| |$knormal:128| |$knormal:127|) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:29| |$knormal:136| |$knormal:134| |$alpha-35:size|) )
      (|$innerFunc:5-queenPrint$unknown:35| |$V-reftype:179| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Int) (|$alpha-35:size| Int) (|$knormal:136| Int) (|$knormal:134| Int) )
    (=>
      ( and (= |$knormal:134| 0) (= |$knormal:127| 1) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:29| |$knormal:136| |$knormal:134| |$alpha-35:size|) )
      (|print_string$unknown:65| |$knormal:127|)
    )
  )
)
(assert
  (forall ( (|$alpha-35:size| Int) (|$knormal:134| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) )
      (|$innerFunc:4-aux1$unknown:23| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Int) (|$alpha-35:size| Int) )
    (=>
      ( and (= |$knormal:134| 0) (|$innerFunc:5-queenPrint$unknown:30| |$alpha-35:size|) )
      (|$innerFunc:4-aux1$unknown:28| |$knormal:134| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$knormal:33| Int) (|$V-reftype:57| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:43| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:31| |$V-reftype:57| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:57| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$knormal:33| Int) (|$V-reftype:61| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:43| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:61| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:61| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:98| Int) (|$knormal:33| Int) (|$knormal:63| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:43| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:63| Int) (|$knormal:33| Int) (|$V-reftype:104| Int) (|$knormal:43| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:161| Int) (|$knormal:43| Bool) (|$knormal:58| Int) (|$knormal:92| Int) (|$knormal:33| Int) (|$knormal:63| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:161| |$knormal:58|) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:161| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:43| Bool) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:63| Int) (|$knormal:33| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$knormal:33| Int) (|$knormal:63| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:43| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:35| |$knormal:63| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$V-reftype:68| Int) (|$alpha-30:j| Int) (|$knormal:126| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:37| |$V-reftype:68| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:40| |$V-reftype:68| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$alpha-31:queenArray| Int) (|$alpha-30:j| Int) (|$V-reftype:76| Int) (|$knormal:126| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:37| |$alpha-31:queenArray| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-33:i| Int) (|$V-reftype:74| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$knormal:126| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$V-reftype:76| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-31:queenArray| Int) (|$alpha-33:i| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:113| Bool) (|$knormal:112| Int) (|$knormal:123| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:40| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$knormal:123| Int) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:125| Int) (|$knormal:109| Int) (|$knormal:108| Bool) (|$V-reftype:175| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:175| |$knormal:125|) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:44| |$knormal:125| |$knormal:123| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:175| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$V-reftype:173| Int) (|$knormal:113| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:173| 0) (not |$knormal:108|) |$knormal:113| |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:173| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$knormal:126| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:113| Bool) (|$knormal:112| Int) (|$knormal:123| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$knormal:126| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:113| Bool) (|$knormal:112| Int) (|$knormal:123| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:43| |$knormal:123| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:107| Bool) (|$V-reftype:169| Int) )
    (=>
      ( and (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:169| 0) |$knormal:108| |$knormal:107| (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:169| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$alpha-32:qj| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:107| Bool) (|$knormal:109| Int) )
    (=>
      ( and (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:108|) |$knormal:107| (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|abs$unknown:59| |$knormal:109|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Bool) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) )
    (=>
      ( and (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) |$knormal:107| (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:40| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:176| Int) (|$alpha-32:qj| Int) (|$alpha-30:j| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:107| Bool) )
    (=>
      ( and (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:176| 1) (not |$knormal:107|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:42| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:39| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:36| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:176| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:68| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$knormal:106| Int) (|$knormal:103| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:37| |$V-reftype:68| |$alpha-23:size|) )
      (|$innerFunc:7-test$unknown:49| |$V-reftype:68| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:queenArray| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$V-reftype:93| Int) (|$knormal:106| Int) (|$knormal:103| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:50| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:37| |$alpha-26:queenArray| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:j| Int) (|$V-reftype:74| Int) (|$alpha-23:size| Int) (|$knormal:106| Int) (|$knormal:103| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-25:j| |$alpha-23:size|) )
      (|$innerFunc:7-test$unknown:49| |$V-reftype:74| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:103| Int) (|$knormal:106| Int) (|$V-reftype:93| Int) (|$alpha-23:size| Int) (|$alpha-26:queenArray| Int) (|$alpha-25:j| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:50| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:40| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:j| Int) (|$knormal:103| Int) (|$knormal:105| Int) (|$knormal:106| Int) (|$alpha-23:size| Int) (|$V-reftype:166| Int) )
    (=>
      ( and (= |$knormal:103| 0) (= |$V-reftype:166| |$knormal:105|) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:44| |$knormal:105| |$knormal:103| |$knormal:106| |$alpha-25:j| |$alpha-23:size|) )
      (|$innerFunc:7-test$unknown:51| |$V-reftype:166| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:j| Int) (|$alpha-23:size| Int) )
    (=>
      ( and (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) )
      (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$knormal:106| Int) (|$knormal:103| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:36| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:103| Int) (|$knormal:106| Int) (|$alpha-25:j| Int) (|$alpha-23:size| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:39| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$knormal:106| Int) (|$knormal:103| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:42| |$knormal:106| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:103| Int) (|$knormal:106| Int) (|$alpha-25:j| Int) (|$alpha-23:size| Int) )
    (=>
      ( and (= |$knormal:103| 0) (|$innerFunc:7-test$unknown:50| |$knormal:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:48| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:45| |$alpha-23:size|) )
      (|$innerFunc:6-aux2$unknown:43| |$knormal:103| |$knormal:106| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:85| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:46| |$V-reftype:85| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:85| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$V-reftype:91| Int) (|$alpha-15:size| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$V-reftype:91| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:91| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:43| Bool) (|$knormal:92| Int) (|$V-reftype:98| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:98| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$V-reftype:104| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:43| Bool) (|$knormal:92| Int) (|$knormal:47| Int) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$V-reftype:104| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) (|$knormal:26| Bool) (|$V-reftype:164| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:164| |$knormal:41|) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:164| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:163| Int) (|$knormal:26| Bool) (|$knormal:51| Int) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) (|$knormal:47| Int) (|$knormal:43| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:163| |$knormal:51|) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:58| |$knormal:51| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:163| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:43| Bool) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) |$knormal:43| (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:5-queenPrint$unknown:30| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$alpha-17:row| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$knormal:92| Int) (|$knormal:43| Bool) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$knormal:43| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not (= |$knormal:33| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:55| |$knormal:47| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:row| Int) (|$knormal:33| Int) (|$alpha-15:size| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-15:size| Int) (|$knormal:33| Int) (|$alpha-17:row| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) (|$innerFunc:7-test$unknown:51| |$knormal:33| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:77| Int) (|$knormal:73| Bool) (|$alpha-15:size| Int) (|$V-reftype:98| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:row| Int) (|$alpha-15:size| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:73| Bool) (|$V-reftype:104| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:77| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:158| Int) (|$knormal:26| Bool) (|$knormal:77| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:81| Int) (|$knormal:73| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:158| |$knormal:81|) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:58| |$knormal:81| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:158| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:73| Bool) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$V-reftype:156| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:156| 1) |$knormal:73| |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:156| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:73| Bool) (|$knormal:77| Int) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:77| Int) (|$knormal:73| Bool) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:55| |$knormal:77| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:12| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:9| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:12| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:9| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:7-test$unknown:45| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:52| |$alpha-15:size|) )
      (|$innerFunc:7-test$unknown:48| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) (|$V-reftype:98| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-11:size|) )
      (|make_array$unknown:63| |$V-reftype:98| |$knormal:21| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) (|$knormal:23| Int) (|$V-reftype:121| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) (|make_array$unknown:64| |$V-reftype:121| |$knormal:23| |$knormal:21| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:23| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:121| |$knormal:23| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$V-reftype:104| Int) (|$knormal:15| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:15| |$alpha-11:size|) )
      (|make_array$unknown:63| |$V-reftype:104| |$knormal:21| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$V-reftype:121| Int) (|$knormal:15| Int) (|$knormal:23| Int) (|$alpha-11:size| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) (|make_array$unknown:64| |$V-reftype:121| |$knormal:23| |$knormal:21| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:23| |$knormal:15| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:121| |$knormal:23| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$knormal:15| Int) (|$knormal:19| Int) (|$alpha-11:size| Int) (|$V-reftype:148| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (= |$V-reftype:148| |$knormal:19|) (|queen$unknown:67| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:58| |$knormal:19| |$knormal:15| |$alpha-11:size|) )
      (|queen$unknown:68| |$V-reftype:148| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Bool) (|$alpha-10:x| Int) (|$V-reftype:144| Int) )
    (=>
      ( and (= |$knormal:11| (< |$alpha-10:x| 0)) (= |$V-reftype:144| (- |$alpha-10:x|)) |$knormal:11| (|abs$unknown:59| |$alpha-10:x|) )
      (|abs$unknown:60| |$V-reftype:144| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:11| Bool) (|$alpha-10:x| Int) (|$V-reftype:145| Int) )
    (=>
      ( and (= |$knormal:11| (< |$alpha-10:x| 0)) (= |$V-reftype:145| |$alpha-10:x|) (not |$knormal:11|) (|abs$unknown:59| |$alpha-10:x|) )
      (|abs$unknown:60| |$V-reftype:145| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:i| Int) (|$alpha-2:s| Int) (|$alpha-1:n| Int) (|$V-reftype:141| Int) )
    (=>
      ( and (= |$V-reftype:141| |$alpha-2:s|) (|make_array$unknown:63| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|) (|make_array$unknown:62| |$alpha-2:s| |$alpha-1:n|) (|make_array$unknown:61| |$alpha-1:n|) )
      (|make_array$unknown:64| |$V-reftype:141| |$alpha-3:i| |$alpha-2:s| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:142| Int) (|$alpha-9:s| Int) )
    (=>
      ( and (= |$V-reftype:142| 1) (|print_string$unknown:65| |$alpha-9:s|) )
      (|print_string$unknown:66| |$V-reftype:142| |$alpha-9:s|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$alpha-11:size| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:52| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-11:size| Int) (|$knormal:15| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (|queen$unknown:67| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:55| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (|queen$unknown:67| |$alpha-11:size|) )
      (|make_array$unknown:61| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:21| Int) (|$alpha-11:size| Int) )
    (=>
      ( and (= |$knormal:21| 0) (|queen$unknown:67| |$alpha-11:size|) )
      (|make_array$unknown:62| |$knormal:21| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:10| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:1| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:10| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:2| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:10| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:5| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:x| Int) (|$knormal:10| Int) (|$alpha-5:n| Int) (|$alpha-4:i| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:6| |$knormal:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:138| Int) (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$knormal:10| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:74| |$V-reftype:138| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:72| |$knormal:10| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|$innerFunc:1-a$unknown:7| |$V-reftype:138| |$knormal:10| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-5:n| Int) (|$alpha-7:x| Int) )
    (=>
      ( and (|update$unknown:73| |$alpha-7:x| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:70| |$alpha-5:n| |$alpha-4:i|) (|update$unknown:69| |$alpha-4:i|) )
      (|update$unknown:71| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$alpha-13:n| Int) )
    (=>
      ( and (= |$knormal:24| (> |$alpha-13:n| 0)) |$knormal:24| )
      (|queen$unknown:67| |$alpha-13:n|)
    )
  )
)
(check-sat)

(get-model)

