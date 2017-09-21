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

(declare-fun |$innerFunc:6-aux2$unknown:38|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:58|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:25|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:28|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:54|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:44|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:11|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:55|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:57|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:15|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-58:i| Int) (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:809| Int) (|$cond-alpha-rename:810| Int) (|$knormal:183| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:1| |$alpha-58:i| |$cond-alpha-rename:809| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$knormal:183| |$alpha-63:j| |$cond-alpha-rename:810| |$alpha-58:i| |$alpha-59:n|) (not (= |$alpha-58:i| |$alpha-63:j|)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:183| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) )
    (=>
      ( and true )
      (|$innerFunc:1-a$unknown:8| |$alpha-61:x| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-63:j|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| (+ |$knormal:92| 1) |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| 0 |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:435| Int) (|$cond-alpha-rename:437| Int) (|$cond-alpha-rename:438| Int) (|$cond-alpha-rename:851| Int) (|$cond-alpha-rename:852| Int) (|$cond-alpha-rename:853| Int) (|$cond-alpha-rename:854| Int) (|$cond-alpha-rename:855| Int) (|$cond-alpha-rename:856| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:242| 1) (+ |$alpha-17:row| 1)) (not (> (+ |$knormal:92| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:435| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:429| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:248| 1) (+ |$alpha-17:row| 1))) (not (= 0 |$cond-alpha-rename:437|)) (not (= 0 |$cond-alpha-rename:431|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:435| |$cond-alpha-rename:242| |$cond-alpha-rename:242| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:429| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:248| |$cond-alpha-rename:242| |$cond-alpha-rename:242| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:242| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:437| 0 |$cond-alpha-rename:438| |$cond-alpha-rename:242| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:431| 0 |$cond-alpha-rename:432| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:252| 0 (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:856| |$cond-alpha-rename:242| |$cond-alpha-rename:855| |$cond-alpha-rename:242| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:854| |$alpha-17:row| |$cond-alpha-rename:853| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:852| |$alpha-17:row| |$cond-alpha-rename:851| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:438| |$cond-alpha-rename:242| |$cond-alpha-rename:856| (+ |$cond-alpha-rename:435| 1) (+ |$alpha-17:row| 1) |$cond-alpha-rename:242|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:432| |$alpha-17:row| |$cond-alpha-rename:854| (+ |$cond-alpha-rename:429| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:852| (+ |$knormal:92| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| (+ |$alpha-17:row| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:253| Int) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:263| Int) (|$cond-alpha-rename:441| Int) (|$cond-alpha-rename:443| Int) (|$cond-alpha-rename:444| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:857| Int) (|$cond-alpha-rename:858| Int) (|$cond-alpha-rename:859| Int) (|$cond-alpha-rename:860| Int) (|$cond-alpha-rename:861| Int) (|$cond-alpha-rename:862| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:253| 1) (+ |$alpha-17:row| 1)) (not (> (+ |$knormal:92| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:447| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:441| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:259| 1) (+ |$alpha-17:row| 1))) (not (= 0 |$cond-alpha-rename:449|)) (not (= 0 |$cond-alpha-rename:443|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:447| |$cond-alpha-rename:253| |$cond-alpha-rename:253| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:441| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:259| |$cond-alpha-rename:253| |$cond-alpha-rename:253| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:253| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:449| 0 |$cond-alpha-rename:450| |$cond-alpha-rename:253| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:443| 0 |$cond-alpha-rename:444| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:263| 0 (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:862| |$cond-alpha-rename:253| |$cond-alpha-rename:861| |$cond-alpha-rename:253| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:860| |$alpha-17:row| |$cond-alpha-rename:859| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:858| |$alpha-17:row| |$cond-alpha-rename:857| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:450| |$cond-alpha-rename:253| |$cond-alpha-rename:862| (+ |$cond-alpha-rename:447| 1) (+ |$alpha-17:row| 1) |$cond-alpha-rename:253|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:444| |$alpha-17:row| |$cond-alpha-rename:860| (+ |$cond-alpha-rename:441| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:858| (+ |$knormal:92| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| (+ |$alpha-17:row| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:453| Int) (|$cond-alpha-rename:455| Int) (|$cond-alpha-rename:456| Int) (|$cond-alpha-rename:863| Int) (|$cond-alpha-rename:864| Int) (|$cond-alpha-rename:865| Int) (|$cond-alpha-rename:866| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:453| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) (not (= 0 |$cond-alpha-rename:455|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:453| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:455| 0 |$cond-alpha-rename:456| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:866| |$alpha-17:row| |$cond-alpha-rename:865| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:864| |$alpha-17:row| |$cond-alpha-rename:863| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:456| |$alpha-17:row| |$cond-alpha-rename:864| (+ |$cond-alpha-rename:453| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:866| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:461| Int) (|$cond-alpha-rename:462| Int) (|$cond-alpha-rename:867| Int) (|$cond-alpha-rename:868| Int) (|$cond-alpha-rename:869| Int) (|$cond-alpha-rename:870| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:459| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:461|))) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:459| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:461| 0 |$cond-alpha-rename:462| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:870| |$alpha-17:row| |$cond-alpha-rename:869| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:868| |$alpha-17:row| |$cond-alpha-rename:867| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:462| |$alpha-17:row| |$cond-alpha-rename:868| (+ |$cond-alpha-rename:459| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:870| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:467| Int) (|$cond-alpha-rename:468| Int) (|$cond-alpha-rename:871| Int) (|$cond-alpha-rename:872| Int) (|$cond-alpha-rename:873| Int) (|$cond-alpha-rename:874| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:465| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:467|))) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:465| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:467| 0 |$cond-alpha-rename:468| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:874| |$alpha-17:row| |$cond-alpha-rename:873| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:872| |$alpha-17:row| |$cond-alpha-rename:871| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:468| |$alpha-17:row| |$cond-alpha-rename:872| (+ |$cond-alpha-rename:465| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:874| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:471| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:474| Int) (|$cond-alpha-rename:875| Int) (|$cond-alpha-rename:876| Int) (|$cond-alpha-rename:877| Int) (|$cond-alpha-rename:878| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:471| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) (not (= 0 |$cond-alpha-rename:473|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:471| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:473| 0 |$cond-alpha-rename:474| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:878| |$alpha-17:row| |$cond-alpha-rename:877| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:876| |$alpha-17:row| |$cond-alpha-rename:875| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:474| |$alpha-17:row| |$cond-alpha-rename:876| (+ |$cond-alpha-rename:471| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:878| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| (+ |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:879| Int) (|$cond-alpha-rename:880| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:880| |$alpha-17:row| |$cond-alpha-rename:879| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:880| 0 |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:91| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:881| Int) (|$cond-alpha-rename:882| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:882| |$alpha-17:row| |$cond-alpha-rename:881| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:882| 0 |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:91| (- |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$alpha-49:size| Int) (|$alpha-50:queenArray| Int) (|$alpha-51:n| Int) )
    (=>
      ( and (not (= |$alpha-51:n| 0)) (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:172| Int) )
    (=>
      ( and (not (= |$alpha-51:n| 0)) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| (- |$alpha-51:n| 1) |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-49:size| Int) )
    (=>
      ( and true )
      (|$innerFunc:3-dotsPrint$unknown:22| 1 0 |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:165| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:145| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (|$innerFunc:4-aux1$unknown:29| |$knormal:145| (+ |$alpha-42:row| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| |$knormal:145| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:28| (+ |$alpha-42:row| 1) |$alpha-39:size|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:165| Int) )
    ( and (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (not (= |$alpha-42:row| |$alpha-39:size|)) (not (and (<= 0 |$alpha-42:row|) (<= |$alpha-42:row| |$alpha-39:size|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:28| |$alpha-39:size| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| 1 |$alpha-39:size| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-37:queenArray| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:477| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:883| Int) (|$cond-alpha-rename:884| Int) (|$cond-alpha-rename:885| Int) (|$cond-alpha-rename:886| Int) (|$cond-alpha-rename:887| Int) (|$cond-alpha-rename:888| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:186| 1) (+ |$cond-alpha-rename:68| 1)) (not (> (+ |$cond-alpha-rename:74| 1) (+ |$cond-alpha-rename:68| 1))) (not (> (+ |$cond-alpha-rename:483| 1) (+ |$cond-alpha-rename:68| 1))) (not (> (+ |$cond-alpha-rename:477| 1) (+ |$cond-alpha-rename:68| 1))) (not (> (+ |$cond-alpha-rename:192| 1) (+ |$cond-alpha-rename:68| 1))) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:74| |$cond-alpha-rename:68| |$cond-alpha-rename:68| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:483| |$cond-alpha-rename:68| |$cond-alpha-rename:68| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:477| |$cond-alpha-rename:186| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:192| |$cond-alpha-rename:186| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:68| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:485| 0 |$cond-alpha-rename:486| |$cond-alpha-rename:68| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:479| 0 |$cond-alpha-rename:480| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:888| |$cond-alpha-rename:186| |$cond-alpha-rename:887| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:886| |$cond-alpha-rename:186| |$cond-alpha-rename:885| |$cond-alpha-rename:186| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:884| |$cond-alpha-rename:68| |$cond-alpha-rename:883| |$cond-alpha-rename:68| (+ |$cond-alpha-rename:68| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:486| |$cond-alpha-rename:68| |$cond-alpha-rename:884| (+ |$cond-alpha-rename:483| 1) (+ |$cond-alpha-rename:68| 1) |$cond-alpha-rename:68|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:186| |$cond-alpha-rename:886| (+ |$cond-alpha-rename:477| 1) (+ |$cond-alpha-rename:68| 1) |$cond-alpha-rename:186|) (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:888| (+ |$cond-alpha-rename:192| 1) (+ |$cond-alpha-rename:68| 1) |$cond-alpha-rename:186|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:63| |$alpha-37:queenArray| (+ |$cond-alpha-rename:68| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-37:queenArray| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:491| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:497| Int) (|$cond-alpha-rename:498| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:889| Int) (|$cond-alpha-rename:890| Int) (|$cond-alpha-rename:891| Int) (|$cond-alpha-rename:892| Int) (|$cond-alpha-rename:893| Int) (|$cond-alpha-rename:894| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:193| 1) (+ |$cond-alpha-rename:75| 1)) (not (> (+ |$cond-alpha-rename:81| 1) (+ |$cond-alpha-rename:75| 1))) (not (> (+ |$cond-alpha-rename:495| 1) (+ |$cond-alpha-rename:75| 1))) (not (> (+ |$cond-alpha-rename:489| 1) (+ |$cond-alpha-rename:75| 1))) (not (> (+ |$cond-alpha-rename:199| 1) (+ |$cond-alpha-rename:75| 1))) (not (= 0 |$cond-alpha-rename:497|)) (not (= 0 |$cond-alpha-rename:491|)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:81| |$cond-alpha-rename:75| |$cond-alpha-rename:75| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:495| |$cond-alpha-rename:75| |$cond-alpha-rename:75| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:489| |$cond-alpha-rename:193| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:199| |$cond-alpha-rename:193| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:75| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:497| 0 |$cond-alpha-rename:498| |$cond-alpha-rename:75| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:491| 0 |$cond-alpha-rename:492| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:894| |$cond-alpha-rename:193| |$cond-alpha-rename:893| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:892| |$cond-alpha-rename:193| |$cond-alpha-rename:891| |$cond-alpha-rename:193| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:890| |$cond-alpha-rename:75| |$cond-alpha-rename:889| |$cond-alpha-rename:75| (+ |$cond-alpha-rename:75| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:498| |$cond-alpha-rename:75| |$cond-alpha-rename:890| (+ |$cond-alpha-rename:495| 1) (+ |$cond-alpha-rename:75| 1) |$cond-alpha-rename:75|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:492| |$cond-alpha-rename:193| |$cond-alpha-rename:892| (+ |$cond-alpha-rename:489| 1) (+ |$cond-alpha-rename:75| 1) |$cond-alpha-rename:193|) (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:894| (+ |$cond-alpha-rename:199| 1) (+ |$cond-alpha-rename:75| 1) |$cond-alpha-rename:193|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:63| |$alpha-37:queenArray| (+ |$cond-alpha-rename:75| 1))
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:504| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:895| Int) (|$cond-alpha-rename:896| Int) (|$cond-alpha-rename:95| Int) )
    (=>
      ( and (not (> (+ |$cond-alpha-rename:95| 1) (+ |$cond-alpha-rename:89| 1))) (not (> (+ |$cond-alpha-rename:501| 1) (+ |$cond-alpha-rename:89| 1))) (not (= 0 |$cond-alpha-rename:503|)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:95| |$cond-alpha-rename:89| |$cond-alpha-rename:89| (+ |$cond-alpha-rename:89| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:501| |$cond-alpha-rename:89| |$cond-alpha-rename:89| (+ |$cond-alpha-rename:89| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:89| (+ |$cond-alpha-rename:89| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:503| 0 |$cond-alpha-rename:504| |$cond-alpha-rename:89| (+ |$cond-alpha-rename:89| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:896| |$cond-alpha-rename:89| |$cond-alpha-rename:895| |$cond-alpha-rename:89| (+ |$cond-alpha-rename:89| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:504| |$cond-alpha-rename:89| |$cond-alpha-rename:896| (+ |$cond-alpha-rename:501| 1) (+ |$cond-alpha-rename:89| 1) |$cond-alpha-rename:89|) )
      (|$innerFunc:4-aux1$unknown:28| 0 (+ |$cond-alpha-rename:89| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-17:row| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:274| Int) (|$cond-alpha-rename:507| Int) (|$cond-alpha-rename:509| Int) (|$cond-alpha-rename:510| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:516| Int) (|$cond-alpha-rename:897| Int) (|$cond-alpha-rename:898| Int) (|$cond-alpha-rename:899| Int) (|$cond-alpha-rename:900| Int) (|$knormal:58| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:264| 1) (+ |$alpha-17:row| 1)) (not (> (+ |$knormal:92| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:513| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:507| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:270| 1) (+ |$alpha-17:row| 1))) (not (= 0 |$cond-alpha-rename:515|)) (not (= 0 |$cond-alpha-rename:509|)) (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:513| |$cond-alpha-rename:264| |$cond-alpha-rename:264| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:507| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:270| |$cond-alpha-rename:264| |$cond-alpha-rename:264| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:264| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:515| 0 |$cond-alpha-rename:516| |$cond-alpha-rename:264| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:509| 0 |$cond-alpha-rename:510| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:274| 0 (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:900| |$cond-alpha-rename:264| |$cond-alpha-rename:899| |$cond-alpha-rename:264| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:898| |$alpha-17:row| |$cond-alpha-rename:897| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:516| |$cond-alpha-rename:264| |$cond-alpha-rename:900| (+ |$cond-alpha-rename:513| 1) (+ |$alpha-17:row| 1) |$cond-alpha-rename:264|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:510| |$alpha-17:row| |$cond-alpha-rename:898| (+ |$cond-alpha-rename:507| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| (+ |$alpha-17:row| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-17:row| Int) (|$cond-alpha-rename:275| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:519| Int) (|$cond-alpha-rename:521| Int) (|$cond-alpha-rename:522| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:527| Int) (|$cond-alpha-rename:528| Int) (|$cond-alpha-rename:901| Int) (|$cond-alpha-rename:902| Int) (|$cond-alpha-rename:903| Int) (|$cond-alpha-rename:904| Int) (|$knormal:92| Int) )
    (=>
      ( and (= (+ |$cond-alpha-rename:275| 1) (+ |$alpha-17:row| 1)) (not (> (+ |$knormal:92| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:525| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:519| 1) (+ |$alpha-17:row| 1))) (not (> (+ |$cond-alpha-rename:281| 1) (+ |$alpha-17:row| 1))) (not (= 0 |$cond-alpha-rename:527|)) (not (= 0 |$cond-alpha-rename:521|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:525| |$cond-alpha-rename:275| |$cond-alpha-rename:275| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:519| |$alpha-17:row| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:281| |$cond-alpha-rename:275| |$cond-alpha-rename:275| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:275| (+ |$alpha-17:row| 1)) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:527| 0 |$cond-alpha-rename:528| |$cond-alpha-rename:275| (+ |$alpha-17:row| 1)) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:521| 0 |$cond-alpha-rename:522| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:285| 0 (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:904| |$cond-alpha-rename:275| |$cond-alpha-rename:903| |$cond-alpha-rename:275| (+ |$alpha-17:row| 1)) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:902| |$alpha-17:row| |$cond-alpha-rename:901| |$alpha-17:row| (+ |$alpha-17:row| 1)) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:528| |$cond-alpha-rename:275| |$cond-alpha-rename:904| (+ |$cond-alpha-rename:525| 1) (+ |$alpha-17:row| 1) |$cond-alpha-rename:275|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:522| |$alpha-17:row| |$cond-alpha-rename:902| (+ |$cond-alpha-rename:519| 1) (+ |$alpha-17:row| 1) |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| (+ |$alpha-17:row| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-31:queenArray| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:618| Int) (|$knormal:110| Int) (|$knormal:126| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:618|)) (and (= (not (= 0 |$cond-alpha-rename:618|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:618|))) (and (= (not (= 0 |$cond-alpha-rename:618|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-31:queenArray| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:619| Int) (|$knormal:110| Int) (|$knormal:126| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:619|)) (and (= (not (= 0 |$cond-alpha-rename:619|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:619|))) (and (= (not (= 0 |$cond-alpha-rename:619|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:620| Int) (|$knormal:110| Int) (|$knormal:125| Int) (|$knormal:126| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:620|)) (and (= (not (= 0 |$cond-alpha-rename:620|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:620|))) (and (= (not (= 0 |$cond-alpha-rename:620|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (|$innerFunc:6-aux2$unknown:44| |$knormal:125| (+ |$alpha-33:i| 1) |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| |$knormal:125| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:621| Int) (|$knormal:126| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:621|)) (and (= (not (= 0 |$cond-alpha-rename:621|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= (- |$alpha-30:j| |$alpha-33:i|) (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:621|))) (and (= (not (= 0 |$cond-alpha-rename:621|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= (- |$alpha-30:j| |$alpha-33:i|) (- |$alpha-32:qj| |$knormal:126|))))) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) )
      (|$innerFunc:6-aux2$unknown:44| 0 |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$alpha-32:qj| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) )
      (|$innerFunc:6-aux2$unknown:44| 0 |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) )
    (=>
      ( and (not (< |$alpha-33:i| |$alpha-30:j|)) )
      (|$innerFunc:6-aux2$unknown:44| 1 |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$alpha-26:queenArray| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:905| Int) (|$cond-alpha-rename:906| Int) (|$cond-alpha-rename:907| Int) (|$cond-alpha-rename:908| Int) (|$knormal:106| Int) )
    (=>
      ( and (not (> (+ |$cond-alpha-rename:373| 1) |$alpha-23:size|)) (not (> (+ |$cond-alpha-rename:370| 1) |$alpha-23:size|)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:373| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:370| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:908| |$alpha-25:j| |$cond-alpha-rename:907| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:906| |$alpha-25:j| |$cond-alpha-rename:905| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:908| (+ |$cond-alpha-rename:370| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:906| (+ |$cond-alpha-rename:373| 1) |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$alpha-26:queenArray| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:909| Int) (|$cond-alpha-rename:910| Int) (|$cond-alpha-rename:911| Int) (|$cond-alpha-rename:912| Int) (|$knormal:106| Int) )
    (=>
      ( and (not (> (+ |$cond-alpha-rename:379| 1) |$alpha-23:size|)) (not (> (+ |$cond-alpha-rename:376| 1) |$alpha-23:size|)) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:379| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:376| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:912| |$alpha-25:j| |$cond-alpha-rename:911| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:910| |$alpha-25:j| |$cond-alpha-rename:909| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:912| (+ |$cond-alpha-rename:376| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:910| (+ |$cond-alpha-rename:379| 1) |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:531| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:534| Int) (|$cond-alpha-rename:913| Int) (|$cond-alpha-rename:914| Int) (|$knormal:41| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:531| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:533|))) (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:531| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:533| 0 |$cond-alpha-rename:534| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:914| |$alpha-17:row| |$cond-alpha-rename:913| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:534| |$alpha-17:row| |$cond-alpha-rename:914| (+ |$cond-alpha-rename:531| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:537| Int) (|$cond-alpha-rename:539| Int) (|$cond-alpha-rename:540| Int) (|$cond-alpha-rename:915| Int) (|$cond-alpha-rename:916| Int) (|$knormal:51| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:537| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) (not (= 0 |$cond-alpha-rename:539|)) (|$innerFunc:8-loop$unknown:58| |$knormal:51| (+ |$alpha-17:row| 1) |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:537| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:539| 0 |$cond-alpha-rename:540| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:916| |$alpha-17:row| |$cond-alpha-rename:915| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:540| |$alpha-17:row| |$cond-alpha-rename:916| (+ |$cond-alpha-rename:537| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:51| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:543| Int) (|$cond-alpha-rename:545| Int) (|$cond-alpha-rename:546| Int) (|$cond-alpha-rename:917| Int) (|$cond-alpha-rename:918| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:543| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) (not (= 0 |$cond-alpha-rename:545|)) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:543| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:545| 0 |$cond-alpha-rename:546| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:918| |$alpha-17:row| |$cond-alpha-rename:917| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:546| |$alpha-17:row| |$cond-alpha-rename:918| (+ |$cond-alpha-rename:543| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:55| (+ |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:549| Int) (|$cond-alpha-rename:551| Int) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:919| Int) (|$cond-alpha-rename:920| Int) (|$knormal:92| Int) )
    (=>
      ( and (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:549| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:551|))) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:549| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:551| 0 |$cond-alpha-rename:552| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:920| |$alpha-17:row| |$cond-alpha-rename:919| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:552| |$alpha-17:row| |$cond-alpha-rename:920| (+ |$cond-alpha-rename:549| 1) |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:81| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:58| |$knormal:81| (- |$alpha-17:row| 1) |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:81| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| 0 |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| 0 0 |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:58| 1 0 |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) )
      (|$innerFunc:8-loop$unknown:55| (- |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$alpha-11:size| 0) )
      (|$innerFunc:8-loop$unknown:54| 0 |$knormal:23| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$knormal:23| Int) )
    (=>
      ( and (> |$alpha-11:size| 0) )
      (|$innerFunc:8-loop$unknown:57| 0 |$knormal:23| 0 |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) )
    (=>
      ( and (> |$alpha-11:size| 0) )
      (|$innerFunc:8-loop$unknown:55| 0 |$alpha-11:size|)
    )
  )
)
(check-sat)

(get-model)

