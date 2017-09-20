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

(declare-fun |$innerFunc:4-aux1$unknown:27|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:4-aux1$unknown:28|
  ( Int Int ) Bool
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

(declare-fun |$innerFunc:4-aux1$unknown:29|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:44|
  ( Int Int Int Int Int ) Bool
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
  (forall ( (|$alpha-58:i| Int) (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:272| Int) (|$cond-alpha-rename:273| Int) (|$knormal:183| Int) )
    (=>
      ( and (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:1| |$alpha-58:i| |$cond-alpha-rename:272| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$knormal:183| |$alpha-63:j| |$cond-alpha-rename:273| |$alpha-58:i| |$alpha-59:n|) (not (= |$alpha-58:i| |$alpha-63:j|)) )
      (|$innerFunc:1-a$unknown:8| |$knormal:183| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-58:i| Int) (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$alpha-62:$$tmp::1| Int) (|$alpha-63:j| Int) )
    (=>
      ( and (= |$alpha-58:i| |$alpha-63:j|) )
      (|$innerFunc:1-a$unknown:8| |$alpha-61:x| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
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
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:115| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:278| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:281| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:61| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:279| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:118| |$cond-alpha-rename:51| |$cond-alpha-rename:281| (+ |$cond-alpha-rename:115| 1) |$alpha-15:size| |$cond-alpha-rename:51|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:124| |$alpha-17:row| |$cond-alpha-rename:283| (+ |$cond-alpha-rename:121| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:279| |$alpha-17:row| |$cond-alpha-rename:278| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:281| |$cond-alpha-rename:51| |$cond-alpha-rename:280| |$cond-alpha-rename:51| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:283| |$alpha-17:row| |$cond-alpha-rename:282| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:61| 0 |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:117| 0 |$cond-alpha-rename:118| |$cond-alpha-rename:51| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:123| 0 |$cond-alpha-rename:124| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:51| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:115| |$cond-alpha-rename:51| |$cond-alpha-rename:51| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:121| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:57| |$cond-alpha-rename:51| |$cond-alpha-rename:51| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:117|)) (= (+ |$cond-alpha-rename:51| 1) |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:123|)) (= (+ |$alpha-17:row| 1) |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:115| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:121| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:57| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:127| Int) (|$cond-alpha-rename:129| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:284| Int) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:287| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:72| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:285| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:130| |$cond-alpha-rename:62| |$cond-alpha-rename:287| (+ |$cond-alpha-rename:127| 1) |$alpha-15:size| |$cond-alpha-rename:62|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:136| |$alpha-17:row| |$cond-alpha-rename:289| (+ |$cond-alpha-rename:133| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:285| |$alpha-17:row| |$cond-alpha-rename:284| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:287| |$cond-alpha-rename:62| |$cond-alpha-rename:286| |$cond-alpha-rename:62| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:289| |$alpha-17:row| |$cond-alpha-rename:288| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:72| 0 |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:129| 0 |$cond-alpha-rename:130| |$cond-alpha-rename:62| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:135| 0 |$cond-alpha-rename:136| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:62| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:127| |$cond-alpha-rename:62| |$cond-alpha-rename:62| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:133| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:68| |$cond-alpha-rename:62| |$cond-alpha-rename:62| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:129|)) (= (+ |$cond-alpha-rename:62| 1) |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:135|)) (= (+ |$alpha-17:row| 1) |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:127| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:133| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:68| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:139| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:290| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:293| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:291| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:142| |$alpha-17:row| |$cond-alpha-rename:293| (+ |$cond-alpha-rename:139| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:291| |$alpha-17:row| |$cond-alpha-rename:290| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:293| |$alpha-17:row| |$cond-alpha-rename:292| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:141| 0 |$cond-alpha-rename:142| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:139| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:141|)) (not (> (+ |$cond-alpha-rename:139| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:147| Int) (|$cond-alpha-rename:148| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:297| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:295| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:148| |$alpha-17:row| |$cond-alpha-rename:297| (+ |$cond-alpha-rename:145| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:295| |$alpha-17:row| |$cond-alpha-rename:294| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:297| |$alpha-17:row| |$cond-alpha-rename:296| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:147| 0 |$cond-alpha-rename:148| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:145| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:145| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:147|))) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:151| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:299| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:301| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:299| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:154| |$alpha-17:row| |$cond-alpha-rename:301| (+ |$cond-alpha-rename:151| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:299| |$alpha-17:row| |$cond-alpha-rename:298| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:301| |$alpha-17:row| |$cond-alpha-rename:300| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:153| 0 |$cond-alpha-rename:154| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:151| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:151| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:153|))) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:160| Int) (|$cond-alpha-rename:302| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:305| Int) (|$knormal:72| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:303| (+ |$knormal:92| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:160| |$alpha-17:row| |$cond-alpha-rename:305| (+ |$cond-alpha-rename:157| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:303| |$alpha-17:row| |$cond-alpha-rename:302| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:305| |$alpha-17:row| |$cond-alpha-rename:304| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:159| 0 |$cond-alpha-rename:160| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:157| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:159|)) (not (> (+ |$cond-alpha-rename:157| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| (+ |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:307| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:307| 0 |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:307| |$alpha-17:row| |$cond-alpha-rename:306| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:91| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:32| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:308| Int) (|$cond-alpha-rename:309| Int) (|$knormal:91| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:309| 0 |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:309| |$alpha-17:row| |$cond-alpha-rename:308| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) (not (= |$alpha-17:row| 0)) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:91| (- |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Int) (|$alpha-49:size| Int) (|$alpha-50:queenArray| Int) (|$alpha-51:n| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|) (not (= |$alpha-51:n| 0)) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:172| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| (- |$alpha-51:n| 1) |$alpha-49:size|) (not (= |$alpha-51:n| 0)) )
      (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-49:size| Int) (|$alpha-51:n| Int) )
    (=>
      ( and (= |$alpha-51:n| 0) )
      (|$innerFunc:3-dotsPrint$unknown:22| 1 |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
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
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$alpha-42:row| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:145| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:29| |$knormal:145| (+ |$alpha-42:row| 1) |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
      (|$innerFunc:4-aux1$unknown:29| |$knormal:145| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:153| Int) (|$knormal:161| Int) (|$knormal:165| Int) )
    (=>
      ( and (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| (- |$alpha-39:size| |$knormal:165|) |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| (- |$knormal:165| 1) |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (<= |$alpha-42:row| |$alpha-39:size|) (<= 0 |$alpha-42:row|) (not (= |$alpha-42:row| |$alpha-39:size|)) )
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
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) )
    (=>
      ( and (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (= |$alpha-42:row| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| 1 |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-35:size| Int) (|$alpha-37:queenArray| Int) (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:169| Int) (|$cond-alpha-rename:171| Int) (|$cond-alpha-rename:172| Int) (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:311| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:314| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:311| (+ |$cond-alpha-rename:43| 1) |$alpha-35:size| |$cond-alpha-rename:37|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:166| |$cond-alpha-rename:37| |$cond-alpha-rename:313| (+ |$cond-alpha-rename:163| 1) |$alpha-35:size| |$cond-alpha-rename:37|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:172| |$cond-alpha-rename:2| |$cond-alpha-rename:315| (+ |$cond-alpha-rename:169| 1) |$alpha-35:size| |$cond-alpha-rename:2|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:311| |$cond-alpha-rename:37| |$cond-alpha-rename:310| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:313| |$cond-alpha-rename:37| |$cond-alpha-rename:312| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:315| |$cond-alpha-rename:2| |$cond-alpha-rename:314| |$cond-alpha-rename:2| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:165| 0 |$cond-alpha-rename:166| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:171| 0 |$cond-alpha-rename:172| |$cond-alpha-rename:2| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:2| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:163| |$cond-alpha-rename:37| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:169| |$cond-alpha-rename:2| |$cond-alpha-rename:2| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:43| |$cond-alpha-rename:37| |$cond-alpha-rename:37| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:8| |$cond-alpha-rename:2| |$cond-alpha-rename:2| |$alpha-35:size|) (not (= 0 |$cond-alpha-rename:165|)) (= (+ |$cond-alpha-rename:37| 1) |$alpha-35:size|) (not (= 0 |$cond-alpha-rename:171|)) (= (+ |$cond-alpha-rename:2| 1) |$alpha-35:size|) (not (> (+ |$cond-alpha-rename:163| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:169| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:43| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:8| 1) |$alpha-35:size|)) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-35:size| Int) (|$alpha-37:queenArray| Int) (|$cond-alpha-rename:15| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:178| Int) (|$cond-alpha-rename:181| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:184| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:317| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:320| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:9| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:317| (+ |$cond-alpha-rename:50| 1) |$alpha-35:size| |$cond-alpha-rename:44|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:178| |$cond-alpha-rename:9| |$cond-alpha-rename:319| (+ |$cond-alpha-rename:175| 1) |$alpha-35:size| |$cond-alpha-rename:9|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:184| |$cond-alpha-rename:44| |$cond-alpha-rename:321| (+ |$cond-alpha-rename:181| 1) |$alpha-35:size| |$cond-alpha-rename:44|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:317| |$cond-alpha-rename:44| |$cond-alpha-rename:316| |$cond-alpha-rename:44| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:319| |$cond-alpha-rename:9| |$cond-alpha-rename:318| |$cond-alpha-rename:9| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:321| |$cond-alpha-rename:44| |$cond-alpha-rename:320| |$cond-alpha-rename:44| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:177| 0 |$cond-alpha-rename:178| |$cond-alpha-rename:9| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:183| 0 |$cond-alpha-rename:184| |$cond-alpha-rename:44| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:44| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:9| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:15| |$cond-alpha-rename:9| |$cond-alpha-rename:9| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:175| |$cond-alpha-rename:9| |$cond-alpha-rename:9| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:181| |$cond-alpha-rename:44| |$cond-alpha-rename:44| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:50| |$cond-alpha-rename:44| |$cond-alpha-rename:44| |$alpha-35:size|) (not (= 0 |$cond-alpha-rename:177|)) (= (+ |$cond-alpha-rename:9| 1) |$alpha-35:size|) (not (= 0 |$cond-alpha-rename:183|)) (= (+ |$cond-alpha-rename:44| 1) |$alpha-35:size|) (not (> (+ |$cond-alpha-rename:15| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:175| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:181| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:50| 1) |$alpha-35:size|)) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-35:size| Int) (|$cond-alpha-rename:187| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:323| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:190| |$cond-alpha-rename:23| |$cond-alpha-rename:323| (+ |$cond-alpha-rename:187| 1) |$alpha-35:size| |$cond-alpha-rename:23|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:323| |$cond-alpha-rename:23| |$cond-alpha-rename:322| |$cond-alpha-rename:23| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:189| 0 |$cond-alpha-rename:190| |$cond-alpha-rename:23| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:23| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:187| |$cond-alpha-rename:23| |$cond-alpha-rename:23| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:29| |$cond-alpha-rename:23| |$cond-alpha-rename:23| |$alpha-35:size|) (not (= 0 |$cond-alpha-rename:189|)) (= (+ |$cond-alpha-rename:23| 1) |$alpha-35:size|) (not (> (+ |$cond-alpha-rename:187| 1) |$alpha-35:size|)) (not (> (+ |$cond-alpha-rename:29| 1) |$alpha-35:size|)) )
      (|$innerFunc:4-aux1$unknown:28| 0 |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:193| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:196| Int) (|$cond-alpha-rename:199| Int) (|$cond-alpha-rename:201| Int) (|$cond-alpha-rename:202| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:326| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:79| Int) (|$cond-alpha-rename:83| Int) (|$knormal:58| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:196| |$cond-alpha-rename:73| |$cond-alpha-rename:325| (+ |$cond-alpha-rename:193| 1) |$alpha-15:size| |$cond-alpha-rename:73|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:202| |$alpha-17:row| |$cond-alpha-rename:327| (+ |$cond-alpha-rename:199| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:325| |$cond-alpha-rename:73| |$cond-alpha-rename:324| |$cond-alpha-rename:73| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:327| |$alpha-17:row| |$cond-alpha-rename:326| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:83| 0 |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:195| 0 |$cond-alpha-rename:196| |$cond-alpha-rename:73| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:201| 0 |$cond-alpha-rename:202| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:73| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:193| |$cond-alpha-rename:73| |$cond-alpha-rename:73| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:199| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:79| |$cond-alpha-rename:73| |$cond-alpha-rename:73| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:195|)) (= (+ |$cond-alpha-rename:73| 1) |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:201|)) (= (+ |$alpha-17:row| 1) |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:193| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:199| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:79| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:205| Int) (|$cond-alpha-rename:207| Int) (|$cond-alpha-rename:208| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:330| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:94| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:208| |$cond-alpha-rename:84| |$cond-alpha-rename:329| (+ |$cond-alpha-rename:205| 1) |$alpha-15:size| |$cond-alpha-rename:84|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:214| |$alpha-17:row| |$cond-alpha-rename:331| (+ |$cond-alpha-rename:211| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:329| |$cond-alpha-rename:84| |$cond-alpha-rename:328| |$cond-alpha-rename:84| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:331| |$alpha-17:row| |$cond-alpha-rename:330| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:94| 0 |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:207| 0 |$cond-alpha-rename:208| |$cond-alpha-rename:84| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:213| 0 |$cond-alpha-rename:214| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:84| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:205| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:211| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:90| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:207|)) (= (+ |$cond-alpha-rename:84| 1) |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:213|)) (= (+ |$alpha-17:row| 1) |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:205| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:211| 1) |$alpha-15:size|)) (not (> (+ |$cond-alpha-rename:90| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-31:queenArray| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:263| Int) (|$knormal:110| Int) (|$knormal:126| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (or (and (not (= 0 |$cond-alpha-rename:263|)) (and (= (not (= 0 |$cond-alpha-rename:263|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:263|))) (and (= (not (= 0 |$cond-alpha-rename:263|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:76| Int) (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-31:queenArray| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:264| Int) (|$knormal:110| Int) (|$knormal:126| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (or (and (not (= 0 |$cond-alpha-rename:264|)) (and (= (not (= 0 |$cond-alpha-rename:264|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:264|))) (and (= (not (= 0 |$cond-alpha-rename:264|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:265| Int) (|$knormal:110| Int) (|$knormal:125| Int) (|$knormal:126| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:44| |$knormal:125| (+ |$alpha-33:i| 1) |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) (not (= |$knormal:126| |$alpha-32:qj|)) (not (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|))) (or (and (not (= 0 |$cond-alpha-rename:265|)) (and (= (not (= 0 |$cond-alpha-rename:265|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:265|))) (and (= (not (= 0 |$cond-alpha-rename:265|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) )
      (|$innerFunc:6-aux2$unknown:44| |$knormal:125| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$cond-alpha-rename:266| Int) (|$knormal:110| Int) (|$knormal:126| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) (= |$knormal:110| (- |$alpha-30:j| |$alpha-33:i|)) (not (= |$knormal:126| |$alpha-32:qj|)) (or (and (not (= 0 |$cond-alpha-rename:266|)) (and (= (not (= 0 |$cond-alpha-rename:266|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- (- |$alpha-32:qj| |$knormal:126|))))) (and (not (not (= 0 |$cond-alpha-rename:266|))) (and (= (not (= 0 |$cond-alpha-rename:266|)) (< (- |$alpha-32:qj| |$knormal:126|) 0)) (= |$knormal:110| (- |$alpha-32:qj| |$knormal:126|))))) )
      (|$innerFunc:6-aux2$unknown:44| 0 |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-28:size| Int) (|$alpha-30:j| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$knormal:126| Int) )
    (=>
      ( and (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (< |$alpha-33:i| |$alpha-30:j|) (= |$knormal:126| |$alpha-32:qj|) )
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
  (forall ( (|$V-reftype:93| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$alpha-26:queenArray| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:97| Int) (|$knormal:106| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:333| (+ |$cond-alpha-rename:97| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:335| (+ |$cond-alpha-rename:100| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:333| |$alpha-25:j| |$cond-alpha-rename:332| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:335| |$alpha-25:j| |$cond-alpha-rename:334| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:100| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:97| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (not (> (+ |$cond-alpha-rename:97| 1) |$alpha-23:size|)) (not (> (+ |$cond-alpha-rename:100| 1) |$alpha-23:size|)) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$alpha-23:size| Int) (|$alpha-25:j| Int) (|$alpha-26:queenArray| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:339| Int) (|$knormal:106| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:337| (+ |$cond-alpha-rename:103| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:339| (+ |$cond-alpha-rename:106| 1) |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:337| |$alpha-25:j| |$cond-alpha-rename:336| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:339| |$alpha-25:j| |$cond-alpha-rename:338| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:103| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:106| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (not (> (+ |$cond-alpha-rename:103| 1) |$alpha-23:size|)) (not (> (+ |$cond-alpha-rename:106| 1) |$alpha-23:size|)) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:341| Int) (|$knormal:41| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:220| |$alpha-17:row| |$cond-alpha-rename:341| (+ |$cond-alpha-rename:217| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:341| |$alpha-17:row| |$cond-alpha-rename:340| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:219| 0 |$cond-alpha-rename:220| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:217| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:217| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:219|))) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:226| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:343| Int) (|$knormal:51| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:226| |$alpha-17:row| |$cond-alpha-rename:343| (+ |$cond-alpha-rename:223| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:343| |$alpha-17:row| |$cond-alpha-rename:342| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:225| 0 |$cond-alpha-rename:226| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:223| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:58| |$knormal:51| (+ |$alpha-17:row| 1) |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:225|)) (not (> (+ |$cond-alpha-rename:223| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:58| |$knormal:51| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:345| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:232| |$alpha-17:row| |$cond-alpha-rename:345| (+ |$cond-alpha-rename:229| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:345| |$alpha-17:row| |$cond-alpha-rename:344| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:231| 0 |$cond-alpha-rename:232| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:229| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (= 0 |$cond-alpha-rename:231|)) (not (> (+ |$cond-alpha-rename:229| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (= (+ |$alpha-17:row| 1) |$alpha-15:size|)) )
      (|$innerFunc:8-loop$unknown:55| (+ |$alpha-17:row| 1) |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:347| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:238| |$alpha-17:row| |$cond-alpha-rename:347| (+ |$cond-alpha-rename:235| 1) |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:347| |$alpha-17:row| |$cond-alpha-rename:346| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:237| 0 |$cond-alpha-rename:238| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:235| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (not (> (+ |$cond-alpha-rename:235| 1) |$alpha-15:size|)) (not (> (+ |$knormal:92| 1) |$alpha-15:size|)) (not (not (= 0 |$cond-alpha-rename:237|))) )
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
  (forall ( (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (> (+ |$knormal:92| 1) |$alpha-15:size|) (= |$alpha-17:row| 0) )
      (|$innerFunc:8-loop$unknown:58| 1 |$alpha-17:row| |$alpha-15:size|)
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

