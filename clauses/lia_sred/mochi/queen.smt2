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

(declare-fun |make_array$unknown:63|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:46|
  ( Int Int ) Bool
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

(declare-fun |$innerFunc:6-aux2$unknown:41|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:6-aux2$unknown:37|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:58|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:5-queenPrint$unknown:33|
  ( Int Int ) Bool
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

(declare-fun |$innerFunc:3-dotsPrint$unknown:22|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:21|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:3-dotsPrint$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:54|
  ( Int Int Int ) Bool
)

(declare-fun |print_string$unknown:65|
  ( Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:53|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:7-test$unknown:49|
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

(declare-fun |$innerFunc:8-loop$unknown:56|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:57|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:8-loop$unknown:55|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:10|
  ( Int Int ) Bool
)

(declare-fun |$innerFunc:1-a$unknown:8|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |update$unknown:71|
  ( Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:16|
  ( Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:15|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |$innerFunc:2-assign$unknown:13|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$knormal:182| Bool) (|$knormal:183| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:574| Int) (|$cond-alpha-rename:572| Int) (|$cond-alpha-rename:17| Int) (|$alpha-59:n| Int) (|$alpha-61:x| Int) (|$alpha-58:i| Int) (|$cond-alpha-rename:16| Int) (|$cond-alpha-rename:571| Int) (|$cond-alpha-rename:573| Int) (|$alpha-62:$$tmp::1| Int) (|$cond-alpha-rename:20| Int) (|$alpha-63:j| Int) (|$cond-alpha-rename:19| Bool) (|$V-reftype:199| Int) )
    (=>
      ( and (= |$knormal:182| (= |$alpha-58:i| |$alpha-63:j|)) (= |$cond-alpha-rename:19| (= |$alpha-58:i| |$alpha-63:j|)) (= |$V-reftype:199| |$knormal:183|) (not |$knormal:182|) (not |$cond-alpha-rename:19|) (|update$unknown:71| |$alpha-63:j| |$alpha-59:n| |$alpha-58:i|) (|update$unknown:71| |$alpha-58:i| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:2-assign$unknown:16| |$alpha-63:j| |$cond-alpha-rename:17| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:16| |$alpha-63:j| |$alpha-61:x| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$knormal:183| |$alpha-63:j| |$cond-alpha-rename:574| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:20| |$alpha-58:i| |$cond-alpha-rename:573| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:18| |$alpha-58:i| |$cond-alpha-rename:572| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$alpha-62:$$tmp::1| |$alpha-58:i| |$cond-alpha-rename:571| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:574| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:573| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:572| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:571| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:17| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:16| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$alpha-61:x| |$alpha-58:i| |$alpha-59:n|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:199| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:198| Int) (|$alpha-63:j| Int) (|$cond-alpha-rename:575| Int) (|$alpha-58:i| Int) (|$alpha-61:x| Int) (|$alpha-59:n| Int) (|$alpha-62:$$tmp::1| Int) (|$knormal:182| Bool) )
    (=>
      ( and (= |$knormal:182| (= |$alpha-58:i| |$alpha-63:j|)) (= |$V-reftype:198| |$alpha-61:x|) |$knormal:182| (|update$unknown:71| |$alpha-58:i| |$alpha-59:n| |$alpha-58:i|) (|$innerFunc:2-assign$unknown:16| |$alpha-63:j| |$alpha-61:x| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:15| |$alpha-62:$$tmp::1| |$alpha-58:i| |$cond-alpha-rename:575| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:575| |$alpha-58:i| |$alpha-59:n|) (|$innerFunc:2-assign$unknown:13| |$alpha-61:x| |$alpha-58:i| |$alpha-59:n|) )
      (|$innerFunc:1-a$unknown:8| |$V-reftype:198| |$alpha-63:j| |$alpha-62:$$tmp::1| |$alpha-61:x| |$alpha-59:n| |$alpha-58:i|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:9| Bool) (|$knormal:10| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:576| Int) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) (|$cond-alpha-rename:577| Int) (|$cond-alpha-rename:8| Int) (|$V-reftype:5| Int) )
    (=>
      ( and (= |$cond-alpha-rename:9| (= |$alpha-4:i| |$V-reftype:5|)) (not |$cond-alpha-rename:9|) (|update$unknown:71| |$alpha-4:i| |$alpha-5:n| |$alpha-4:i|) (|$innerFunc:2-assign$unknown:16| |$V-reftype:5| |$cond-alpha-rename:7| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:15| |$knormal:10| |$alpha-4:i| |$cond-alpha-rename:577| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:8| |$alpha-4:i| |$cond-alpha-rename:576| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:7| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:577| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:576| |$alpha-4:i| |$alpha-5:n|) (|$innerFunc:2-assign$unknown:13| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:71| |$V-reftype:5| |$alpha-5:n| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$V-reftype:18| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:18| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$V-reftype:18| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:2-assign$unknown:10| |$V-reftype:18| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:18| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:106| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:2-assign$unknown:10| |$alpha-18:queenArray| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$V-reftype:106| Int) (|$alpha-17:row| Int) (|$alpha-18:queenArray| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:2-assign$unknown:10| |$alpha-18:queenArray| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:11| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$V-reftype:26| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|update$unknown:71| |$V-reftype:26| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:26| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$V-reftype:26| Int) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$knormal:87| Int) (|$alpha-15:size| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|update$unknown:71| |$V-reftype:26| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:8-loop$unknown:56| |$V-reftype:26| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$alpha-18:queenArray| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$V-reftype:106| Int) (|$knormal:92| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|update$unknown:71| |$alpha-18:queenArray| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:92| Int) (|$V-reftype:106| Int) (|$alpha-17:row| Int) (|$knormal:87| Int) (|$alpha-15:size| Int) (|$alpha-18:queenArray| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|update$unknown:71| |$alpha-18:queenArray| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$V-reftype:106| |$alpha-18:queenArray| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:15| |$V-reftype:106| |$alpha-18:queenArray| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$cond-alpha-rename:92| Int) (|$cond-alpha-rename:208| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:221| Bool) (|$cond-alpha-rename:212| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:96| Bool) (|$cond-alpha-rename:98| Int) (|$knormal:92| Int) (|$cond-alpha-rename:97| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:213| Int) (|$cond-alpha-rename:210| Int) (|$cond-alpha-rename:223| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:100| Int) (|$cond-alpha-rename:587| Int) (|$cond-alpha-rename:590| Int) (|$cond-alpha-rename:225| Int) (|$cond-alpha-rename:588| Int) (|$cond-alpha-rename:216| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:586| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:211| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:585| Int) (|$cond-alpha-rename:589| Int) (|$cond-alpha-rename:101| Int) (|$cond-alpha-rename:214| Int) (|$cond-alpha-rename:224| Int) (|$cond-alpha-rename:94| Int) (|$knormal:33| Int) (|$cond-alpha-rename:209| Bool) (|$cond-alpha-rename:218| Bool) (|$cond-alpha-rename:93| Bool) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:95| Int) (|$cond-alpha-rename:99| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:99|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:224|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:99| 1) (= |$cond-alpha-rename:98| 1) (= |$cond-alpha-rename:96| (= |$cond-alpha-rename:95| |$alpha-15:size|)) (= |$cond-alpha-rename:95| (+ |$cond-alpha-rename:91| 1)) (= |$cond-alpha-rename:94| |$cond-alpha-rename:215|) (= |$cond-alpha-rename:93| (> |$cond-alpha-rename:92| |$alpha-15:size|)) (= |$cond-alpha-rename:92| (+ |$cond-alpha-rename:97| 1)) (= |$cond-alpha-rename:223| 0) (= |$cond-alpha-rename:221| (> |$cond-alpha-rename:220| |$alpha-15:size|)) (= |$cond-alpha-rename:220| (+ |$cond-alpha-rename:222| 1)) (= |$cond-alpha-rename:218| (> |$cond-alpha-rename:217| |$alpha-15:size|)) (= |$cond-alpha-rename:217| (+ |$cond-alpha-rename:219| 1)) (= |$cond-alpha-rename:214| 0) (= |$cond-alpha-rename:212| (> |$cond-alpha-rename:211| |$alpha-15:size|)) (= |$cond-alpha-rename:211| (+ |$cond-alpha-rename:213| 1)) (= |$cond-alpha-rename:209| (> |$cond-alpha-rename:208| |$alpha-15:size|)) (= |$cond-alpha-rename:208| (+ |$cond-alpha-rename:210| 1)) (= |$cond-alpha-rename:100| 0) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:93|) (not |$cond-alpha-rename:221|) (not |$cond-alpha-rename:218|) (not |$cond-alpha-rename:212|) (not |$cond-alpha-rename:209|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:96| (not (= |$cond-alpha-rename:94| 0)) (|update$unknown:71| |$cond-alpha-rename:91| |$alpha-15:size| |$cond-alpha-rename:91|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:98|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:97| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:222| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:219| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:213| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:210| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:224| |$cond-alpha-rename:223| |$cond-alpha-rename:225| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:215| |$cond-alpha-rename:214| |$cond-alpha-rename:216| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:101| |$cond-alpha-rename:100| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:91| |$cond-alpha-rename:211| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:220| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:590| |$alpha-17:row| |$cond-alpha-rename:589| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:588| |$cond-alpha-rename:91| |$cond-alpha-rename:587| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:586| |$alpha-17:row| |$cond-alpha-rename:585| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:589| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:587| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:585| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:220| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:211| |$cond-alpha-rename:91| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:225| |$alpha-17:row| |$cond-alpha-rename:590| |$cond-alpha-rename:220| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:216| |$cond-alpha-rename:91| |$cond-alpha-rename:588| |$cond-alpha-rename:211| |$alpha-15:size| |$cond-alpha-rename:91|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:586| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:103| Int) (|$cond-alpha-rename:239| Bool) (|$cond-alpha-rename:230| Bool) (|$cond-alpha-rename:104| Bool) (|$knormal:33| Int) (|$cond-alpha-rename:105| Int) (|$cond-alpha-rename:241| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:111| Int) (|$cond-alpha-rename:593| Int) (|$cond-alpha-rename:596| Int) (|$cond-alpha-rename:243| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:234| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:592| Int) (|$V-reftype:32| Int) (|$knormal:72| Int) (|$alpha-19:next| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:102| Int) (|$cond-alpha-rename:229| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:591| Int) (|$cond-alpha-rename:595| Int) (|$cond-alpha-rename:112| Int) (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:242| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:228| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:240| Int) (|$knormal:92| Int) (|$cond-alpha-rename:109| Int) (|$cond-alpha-rename:107| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:227| Bool) (|$cond-alpha-rename:236| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:106| Int) (|$cond-alpha-rename:110| Int) (|$cond-alpha-rename:226| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:110|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:242|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:241| 0) (= |$cond-alpha-rename:239| (> |$cond-alpha-rename:238| |$alpha-15:size|)) (= |$cond-alpha-rename:238| (+ |$cond-alpha-rename:240| 1)) (= |$cond-alpha-rename:236| (> |$cond-alpha-rename:235| |$alpha-15:size|)) (= |$cond-alpha-rename:235| (+ |$cond-alpha-rename:237| 1)) (= |$cond-alpha-rename:232| 0) (= |$cond-alpha-rename:230| (> |$cond-alpha-rename:229| |$alpha-15:size|)) (= |$cond-alpha-rename:229| (+ |$cond-alpha-rename:231| 1)) (= |$cond-alpha-rename:227| (> |$cond-alpha-rename:226| |$alpha-15:size|)) (= |$cond-alpha-rename:226| (+ |$cond-alpha-rename:228| 1)) (= |$cond-alpha-rename:111| 0) (= |$cond-alpha-rename:110| 1) (= |$cond-alpha-rename:109| 1) (= |$cond-alpha-rename:107| (= |$cond-alpha-rename:106| |$alpha-15:size|)) (= |$cond-alpha-rename:106| (+ |$cond-alpha-rename:102| 1)) (= |$cond-alpha-rename:105| |$cond-alpha-rename:233|) (= |$cond-alpha-rename:104| (> |$cond-alpha-rename:103| |$alpha-15:size|)) (= |$cond-alpha-rename:103| (+ |$cond-alpha-rename:108| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:239|) (not |$cond-alpha-rename:236|) (not |$cond-alpha-rename:230|) (not |$cond-alpha-rename:227|) (not |$cond-alpha-rename:104|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:107| (not (= |$cond-alpha-rename:105| 0)) (|update$unknown:71| |$cond-alpha-rename:102| |$alpha-15:size| |$cond-alpha-rename:102|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:109|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:240| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:237| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:231| |$cond-alpha-rename:102| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:228| |$cond-alpha-rename:102| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:108| |$cond-alpha-rename:102| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:102| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:242| |$cond-alpha-rename:241| |$cond-alpha-rename:243| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:233| |$cond-alpha-rename:232| |$cond-alpha-rename:234| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:112| |$cond-alpha-rename:111| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:102| |$cond-alpha-rename:229| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:238| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:596| |$alpha-17:row| |$cond-alpha-rename:595| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:594| |$cond-alpha-rename:102| |$cond-alpha-rename:593| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:592| |$alpha-17:row| |$cond-alpha-rename:591| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:595| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:593| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:591| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:238| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:229| |$cond-alpha-rename:102| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:243| |$alpha-17:row| |$cond-alpha-rename:596| |$cond-alpha-rename:238| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:234| |$cond-alpha-rename:102| |$cond-alpha-rename:594| |$cond-alpha-rename:229| |$alpha-15:size| |$cond-alpha-rename:102|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:592| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:47| Int) (|$knormal:43| Bool) (|$cond-alpha-rename:248| Bool) (|$knormal:33| Int) (|$cond-alpha-rename:250| Int) (|$cond-alpha-rename:599| Int) (|$cond-alpha-rename:247| Int) (|$alpha-17:row| Int) (|$alpha-19:next| Int) (|$knormal:72| Int) (|$V-reftype:32| Int) (|$cond-alpha-rename:598| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:252| Int) (|$cond-alpha-rename:600| Int) (|$cond-alpha-rename:597| Int) (|$cond-alpha-rename:251| Int) (|$cond-alpha-rename:246| Int) (|$cond-alpha-rename:249| Int) (|$knormal:92| Int) (|$cond-alpha-rename:245| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:244| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:251|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:250| 0) (= |$cond-alpha-rename:248| (> |$cond-alpha-rename:247| |$alpha-15:size|)) (= |$cond-alpha-rename:247| (+ |$cond-alpha-rename:249| 1)) (= |$cond-alpha-rename:245| (> |$cond-alpha-rename:244| |$alpha-15:size|)) (= |$cond-alpha-rename:244| (+ |$cond-alpha-rename:246| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:248|) (not |$cond-alpha-rename:245|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:249| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:246| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:251| |$cond-alpha-rename:250| |$cond-alpha-rename:252| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:247| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:600| |$alpha-17:row| |$cond-alpha-rename:599| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:598| |$alpha-17:row| |$cond-alpha-rename:597| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:599| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:597| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:247| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:252| |$alpha-17:row| |$cond-alpha-rename:600| |$cond-alpha-rename:247| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:598| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:253| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:254| Bool) (|$cond-alpha-rename:259| Int) (|$cond-alpha-rename:603| Int) (|$cond-alpha-rename:256| Int) (|$alpha-17:row| Int) (|$alpha-19:next| Int) (|$knormal:72| Int) (|$V-reftype:32| Int) (|$cond-alpha-rename:602| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:261| Int) (|$cond-alpha-rename:604| Int) (|$cond-alpha-rename:601| Int) (|$cond-alpha-rename:260| Int) (|$cond-alpha-rename:255| Int) (|$cond-alpha-rename:258| Int) (|$knormal:92| Int) (|$cond-alpha-rename:257| Bool) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:260|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:259| 0) (= |$cond-alpha-rename:257| (> |$cond-alpha-rename:256| |$alpha-15:size|)) (= |$cond-alpha-rename:256| (+ |$cond-alpha-rename:258| 1)) (= |$cond-alpha-rename:254| (> |$cond-alpha-rename:253| |$alpha-15:size|)) (= |$cond-alpha-rename:253| (+ |$cond-alpha-rename:255| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:257|) (not |$cond-alpha-rename:254|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:258| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:255| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:72| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:260| |$cond-alpha-rename:259| |$cond-alpha-rename:261| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:256| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:604| |$alpha-17:row| |$cond-alpha-rename:603| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:602| |$alpha-17:row| |$cond-alpha-rename:601| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:603| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:601| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:256| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:261| |$alpha-17:row| |$cond-alpha-rename:604| |$cond-alpha-rename:256| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:602| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:72| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$cond-alpha-rename:266| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:267| Int) (|$cond-alpha-rename:264| Int) (|$cond-alpha-rename:268| Int) (|$cond-alpha-rename:607| Int) (|$cond-alpha-rename:265| Int) (|$alpha-17:row| Int) (|$alpha-19:next| Int) (|$knormal:72| Int) (|$V-reftype:32| Int) (|$cond-alpha-rename:606| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:270| Int) (|$cond-alpha-rename:608| Int) (|$cond-alpha-rename:605| Int) (|$cond-alpha-rename:269| Int) (|$cond-alpha-rename:263| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:262| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:269|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:268| 0) (= |$cond-alpha-rename:266| (> |$cond-alpha-rename:265| |$alpha-15:size|)) (= |$cond-alpha-rename:265| (+ |$cond-alpha-rename:267| 1)) (= |$cond-alpha-rename:263| (> |$cond-alpha-rename:262| |$alpha-15:size|)) (= |$cond-alpha-rename:262| (+ |$cond-alpha-rename:264| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:266|) (not |$cond-alpha-rename:263|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:267| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:264| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:269| |$cond-alpha-rename:268| |$cond-alpha-rename:270| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:265| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:608| |$alpha-17:row| |$cond-alpha-rename:607| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:606| |$alpha-17:row| |$cond-alpha-rename:605| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:607| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:605| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:265| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:270| |$alpha-17:row| |$cond-alpha-rename:608| |$cond-alpha-rename:265| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:606| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:271| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:272| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:276| Int) (|$cond-alpha-rename:273| Int) (|$knormal:47| Int) (|$cond-alpha-rename:277| Int) (|$cond-alpha-rename:611| Int) (|$cond-alpha-rename:274| Int) (|$alpha-17:row| Int) (|$alpha-19:next| Int) (|$knormal:72| Int) (|$V-reftype:32| Int) (|$cond-alpha-rename:610| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:279| Int) (|$cond-alpha-rename:612| Int) (|$cond-alpha-rename:609| Int) (|$cond-alpha-rename:278| Int) (|$knormal:33| Int) (|$cond-alpha-rename:275| Bool) (|$knormal:43| Bool) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:278|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:277| 0) (= |$cond-alpha-rename:275| (> |$cond-alpha-rename:274| |$alpha-15:size|)) (= |$cond-alpha-rename:274| (+ |$cond-alpha-rename:276| 1)) (= |$cond-alpha-rename:272| (> |$cond-alpha-rename:271| |$alpha-15:size|)) (= |$cond-alpha-rename:271| (+ |$cond-alpha-rename:273| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:275|) (not |$cond-alpha-rename:272|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:276| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:273| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:72| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:278| |$cond-alpha-rename:277| |$cond-alpha-rename:279| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:72| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:274| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:612| |$alpha-17:row| |$cond-alpha-rename:611| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:610| |$alpha-17:row| |$cond-alpha-rename:609| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:611| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:609| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:274| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:279| |$alpha-17:row| |$cond-alpha-rename:612| |$cond-alpha-rename:274| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:72| |$cond-alpha-rename:610| |$alpha-19:next| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:72| |$knormal:47| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:613| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:614| Int) (|$V-reftype:32| Int) (|$knormal:91| Int) (|$knormal:87| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:73| Bool) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:91| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:91| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:614| |$alpha-17:row| |$cond-alpha-rename:613| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:613| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:614| |$knormal:87| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:32| |$knormal:91| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:73| Bool) (|$knormal:92| Int) (|$knormal:77| Int) (|$cond-alpha-rename:615| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:616| Int) (|$V-reftype:32| Int) (|$knormal:91| Int) (|$knormal:87| Int) (|$alpha-17:row| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:91| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$knormal:91| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:616| |$alpha-17:row| |$cond-alpha-rename:615| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:615| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$V-reftype:32| |$knormal:91| |$cond-alpha-rename:616| |$knormal:87| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:32| |$knormal:91| |$knormal:77| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:174| Int) (|$knormal:166| Bool) (|$alpha-49:size| Int) (|$V-reftype:35| Int) (|$alpha-51:n| Int) (|$knormal:173| Int) (|$knormal:170| Int) )
    (=>
      ( and (= |$knormal:174| 1) (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:65| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:170| Int) (|$knormal:173| Int) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$alpha-50:queenArray| Int) (|$V-reftype:37| Int) (|$knormal:166| Bool) (|$knormal:174| Int) )
    (=>
      ( and (= |$knormal:174| 1) (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:65| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-50:queenArray| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:37| |$alpha-50:queenArray| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:196| Int) (|$knormal:173| Int) (|$knormal:170| Int) (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:172| Int) (|$knormal:166| Bool) (|$knormal:174| Int) )
    (=>
      ( and (= |$knormal:174| 1) (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (= |$V-reftype:196| |$knormal:172|) (not |$knormal:166|) (|print_string$unknown:65| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:172| |$knormal:170| |$alpha-49:size|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:22| |$V-reftype:196| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:174| Int) (|$knormal:166| Bool) (|$alpha-49:size| Int) (|$alpha-51:n| Int) (|$knormal:173| Int) (|$knormal:170| Int) )
    (=>
      ( and (= |$knormal:174| 1) (= |$knormal:173| 1) (= |$knormal:170| (- |$alpha-51:n| 1)) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|print_string$unknown:65| |$knormal:173|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:170| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$V-reftype:193| Int) )
    (=>
      ( and (= |$knormal:166| (= |$alpha-51:n| 0)) (= |$V-reftype:193| 1) |$knormal:166| (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) true )
      (|$innerFunc:3-dotsPrint$unknown:22| |$V-reftype:193| |$alpha-51:n| |$alpha-49:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:166| Bool) (|$alpha-51:n| Int) (|$alpha-49:size| Int) (|$knormal:173| Int) )
    (=>
      ( and (= |$knormal:173| 1) (= |$knormal:166| (= |$alpha-51:n| 0)) (not |$knormal:166|) (|$innerFunc:3-dotsPrint$unknown:21| |$alpha-51:n| |$alpha-49:size|) true )
      (|print_string$unknown:65| |$knormal:173|)
    )
  )
)
(assert
  (forall ( (|$knormal:155| Int) (|$knormal:151| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$alpha-42:row| Int) (|$knormal:161| Int) (|$V-reftype:35| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$knormal:165| Int) (|$knormal:164| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:35| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$alpha-42:row| Int) (|$alpha-39:size| Int) (|$V-reftype:35| Int) (|$knormal:165| Int) (|$knormal:137| Bool) (|$knormal:159| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) true (|$innerFunc:3-dotsPrint$unknown:19| |$V-reftype:35| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:35| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:164| Bool) (|$knormal:165| Int) (|$knormal:161| Int) (|$alpha-41:queenArray| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$V-reftype:50| Int) (|$alpha-42:row| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:151| Int) (|$knormal:155| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-41:queenArray| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:159| Int) (|$knormal:137| Bool) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$alpha-41:queenArray| Int) (|$V-reftype:50| Int) (|$alpha-42:row| Int) (|$knormal:164| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) true (|$innerFunc:3-dotsPrint$unknown:19| |$alpha-41:queenArray| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:20| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:155| Int) (|$knormal:143| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$V-reftype:44| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-42:row| Int) (|$knormal:146| Int) (|$knormal:164| Bool) (|$knormal:147| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:24| |$V-reftype:44| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:44| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:147| Int) (|$knormal:164| Bool) (|$knormal:146| Int) (|$alpha-42:row| Int) (|$V-reftype:50| Int) (|$alpha-41:queenArray| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$knormal:165| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:143| Int) (|$knormal:155| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:24| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:155| Int) (|$knormal:143| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$V-reftype:48| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-42:row| Int) (|$knormal:146| Int) (|$knormal:164| Bool) (|$knormal:147| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:147| Int) (|$knormal:164| Bool) (|$knormal:146| Int) (|$alpha-42:row| Int) (|$V-reftype:50| Int) (|$alpha-41:queenArray| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$knormal:165| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:143| Int) (|$knormal:155| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:26| |$alpha-41:queenArray| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:50| |$alpha-41:queenArray| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:147| Int) (|$V-reftype:191| Int) (|$knormal:164| Bool) (|$knormal:146| Int) (|$knormal:143| Int) (|$knormal:165| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-42:row| Int) (|$knormal:145| Int) (|$knormal:154| Int) (|$knormal:137| Bool) (|$knormal:155| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$V-reftype:191| |$knormal:145|) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:29| |$knormal:145| |$knormal:143| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:29| |$V-reftype:191| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:155| Int) (|$knormal:143| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$knormal:165| Int) (|$knormal:159| Int) (|$alpha-39:size| Int) (|$knormal:153| Int) (|$knormal:151| Int) (|$knormal:161| Int) (|$alpha-42:row| Int) (|$knormal:146| Int) (|$knormal:164| Bool) (|$knormal:147| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:147| 1) (= |$knormal:146| 1) (= |$knormal:143| (+ |$alpha-42:row| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|print_string$unknown:65| |$knormal:146|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|$innerFunc:4-aux1$unknown:28| |$knormal:143| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:146| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$alpha-42:row| Int) (|$knormal:161| Int) (|$knormal:151| Int) (|$knormal:153| Int) (|$alpha-39:size| Int) (|$knormal:159| Int) (|$knormal:165| Int) (|$knormal:164| Bool) (|$knormal:155| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:146| 1) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:153| |$knormal:151| |$alpha-39:size|) )
      (|print_string$unknown:65| |$knormal:146|)
    )
  )
)
(assert
  (forall ( (|$knormal:155| Int) (|$knormal:151| Int) (|$knormal:137| Bool) (|$knormal:154| Int) (|$alpha-42:row| Int) (|$alpha-39:size| Int) (|$knormal:161| Int) (|$knormal:159| Int) (|$knormal:165| Int) (|$knormal:164| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:155| 1) (= |$knormal:154| 1) (= |$knormal:151| (- |$alpha-39:size| |$knormal:165|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|print_string$unknown:65| |$knormal:154|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:151| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:163| Bool) (|$knormal:162| Bool) (|$knormal:164| Bool) (|$alpha-42:row| Int) (|$alpha-39:size| Int) (|$knormal:161| Int) (|$knormal:159| Int) (|$knormal:165| Int) (|$knormal:137| Bool) (|$knormal:154| Int) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:154| 1) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) true (|$innerFunc:3-dotsPrint$unknown:22| |$knormal:161| |$knormal:159| |$alpha-39:size|) )
      (|print_string$unknown:65| |$knormal:154|)
    )
  )
)
(assert
  (forall ( (|$knormal:164| Bool) (|$alpha-42:row| Int) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$knormal:137| Bool) (|$knormal:159| Int) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    (=>
      ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:159| (- |$knormal:165| 1)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) |$knormal:164| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) true )
      (|$innerFunc:3-dotsPrint$unknown:21| |$knormal:159| |$alpha-39:size|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:137| Bool) (|$alpha-42:row| Int) (|$knormal:165| Int) (|$alpha-39:size| Int) (|$knormal:164| Bool) (|$knormal:162| Bool) (|$knormal:163| Bool) )
    ( and (= |$knormal:164| (and |$knormal:162| |$knormal:163|)) (= |$knormal:163| (<= |$alpha-42:row| |$alpha-39:size|)) (= |$knormal:162| (<= 0 |$alpha-42:row|)) (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:164|) (not |$knormal:137|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) (|$innerFunc:4-aux1$unknown:27| |$knormal:165| |$alpha-42:row| |$alpha-39:size|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:181| Int) (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (= |$V-reftype:181| 1) |$knormal:137| (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) true )
      (|$innerFunc:4-aux1$unknown:29| |$V-reftype:181| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-39:size| Int) (|$alpha-42:row| Int) (|$knormal:137| Bool) )
    (=>
      ( and (= |$knormal:137| (= |$alpha-42:row| |$alpha-39:size|)) (not |$knormal:137|) (|$innerFunc:4-aux1$unknown:28| |$alpha-42:row| |$alpha-39:size|) true )
      (|$innerFunc:4-aux1$unknown:26| |$alpha-42:row| |$alpha-39:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:280| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:281| Bool) (|$cond-alpha-rename:26| Bool) (|$cond-alpha-rename:285| Int) (|$cond-alpha-rename:282| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:287| Int) (|$V-reftype:44| Int) (|$cond-alpha-rename:617| Int) (|$cond-alpha-rename:283| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:288| Int) (|$cond-alpha-rename:618| Int) (|$alpha-35:size| Int) (|$cond-alpha-rename:286| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:23| Bool) (|$cond-alpha-rename:284| Bool) (|$cond-alpha-rename:25| Int) )
    (=>
      ( and (= |$cond-alpha-rename:286| 0) (= |$cond-alpha-rename:284| (> |$cond-alpha-rename:283| |$alpha-35:size|)) (= |$cond-alpha-rename:283| (+ |$cond-alpha-rename:285| 1)) (= |$cond-alpha-rename:281| (> |$cond-alpha-rename:280| |$alpha-35:size|)) (= |$cond-alpha-rename:280| (+ |$cond-alpha-rename:282| 1)) (= |$cond-alpha-rename:26| (= |$cond-alpha-rename:25| |$alpha-35:size|)) (= |$cond-alpha-rename:25| (+ |$cond-alpha-rename:21| 1)) (= |$cond-alpha-rename:24| |$cond-alpha-rename:287|) (= |$cond-alpha-rename:23| (> |$cond-alpha-rename:22| |$alpha-35:size|)) (= |$cond-alpha-rename:22| (+ |$cond-alpha-rename:27| 1)) (not |$cond-alpha-rename:284|) (not |$cond-alpha-rename:281|) (not |$cond-alpha-rename:23|) |$cond-alpha-rename:26| (not (= |$cond-alpha-rename:24| 0)) (|update$unknown:71| |$cond-alpha-rename:21| |$alpha-35:size| |$cond-alpha-rename:21|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:285| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:282| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:27| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:21| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:287| |$cond-alpha-rename:286| |$cond-alpha-rename:288| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:24| |$V-reftype:44| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:21| |$cond-alpha-rename:283| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:618| |$cond-alpha-rename:21| |$cond-alpha-rename:617| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:617| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:283| |$cond-alpha-rename:21| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:288| |$cond-alpha-rename:21| |$cond-alpha-rename:618| |$cond-alpha-rename:283| |$alpha-35:size| |$cond-alpha-rename:21|) )
      (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:44| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:289| Int) (|$cond-alpha-rename:302| Bool) (|$cond-alpha-rename:299| Bool) (|$cond-alpha-rename:290| Bool) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:83| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:303| Int) (|$cond-alpha-rename:300| Int) (|$cond-alpha-rename:294| Int) (|$cond-alpha-rename:291| Int) (|$cond-alpha-rename:304| Int) (|$cond-alpha-rename:296| Int) (|$cond-alpha-rename:621| Int) (|$cond-alpha-rename:301| Int) (|$cond-alpha-rename:292| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:77| Int) (|$cond-alpha-rename:78| Int) (|$alpha-37:queenArray| Int) (|$V-reftype:63| Int) (|$cond-alpha-rename:620| Int) (|$alpha-35:size| Int) (|$cond-alpha-rename:297| Int) (|$cond-alpha-rename:622| Int) (|$cond-alpha-rename:306| Int) (|$cond-alpha-rename:624| Int) (|$cond-alpha-rename:619| Int) (|$cond-alpha-rename:623| Int) (|$cond-alpha-rename:295| Int) (|$cond-alpha-rename:305| Int) (|$cond-alpha-rename:33| Bool) (|$cond-alpha-rename:82| Bool) (|$cond-alpha-rename:293| Bool) (|$cond-alpha-rename:30| Bool) (|$cond-alpha-rename:79| Bool) (|$cond-alpha-rename:298| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:81| Int) )
    (=>
      ( and (= |$cond-alpha-rename:82| (= |$cond-alpha-rename:81| |$alpha-35:size|)) (= |$cond-alpha-rename:81| (+ |$cond-alpha-rename:77| 1)) (= |$cond-alpha-rename:80| |$cond-alpha-rename:305|) (= |$cond-alpha-rename:79| (> |$cond-alpha-rename:78| |$alpha-35:size|)) (= |$cond-alpha-rename:78| (+ |$cond-alpha-rename:83| 1)) (= |$cond-alpha-rename:33| (= |$cond-alpha-rename:32| |$alpha-35:size|)) (= |$cond-alpha-rename:32| (+ |$cond-alpha-rename:28| 1)) (= |$cond-alpha-rename:31| |$cond-alpha-rename:296|) (= |$cond-alpha-rename:304| 0) (= |$cond-alpha-rename:302| (> |$cond-alpha-rename:301| |$alpha-35:size|)) (= |$cond-alpha-rename:301| (+ |$cond-alpha-rename:303| 1)) (= |$cond-alpha-rename:30| (> |$cond-alpha-rename:29| |$alpha-35:size|)) (= |$cond-alpha-rename:299| (> |$cond-alpha-rename:298| |$alpha-35:size|)) (= |$cond-alpha-rename:298| (+ |$cond-alpha-rename:300| 1)) (= |$cond-alpha-rename:295| 0) (= |$cond-alpha-rename:293| (> |$cond-alpha-rename:292| |$alpha-35:size|)) (= |$cond-alpha-rename:292| (+ |$cond-alpha-rename:294| 1)) (= |$cond-alpha-rename:290| (> |$cond-alpha-rename:289| |$alpha-35:size|)) (= |$cond-alpha-rename:29| (+ |$cond-alpha-rename:34| 1)) (= |$cond-alpha-rename:289| (+ |$cond-alpha-rename:291| 1)) (not |$cond-alpha-rename:79|) (not |$cond-alpha-rename:302|) (not |$cond-alpha-rename:30|) (not |$cond-alpha-rename:299|) (not |$cond-alpha-rename:293|) (not |$cond-alpha-rename:290|) |$cond-alpha-rename:82| (not (= |$cond-alpha-rename:80| 0)) |$cond-alpha-rename:33| (not (= |$cond-alpha-rename:31| 0)) (|update$unknown:71| |$cond-alpha-rename:77| |$alpha-35:size| |$cond-alpha-rename:77|) (|update$unknown:71| |$cond-alpha-rename:28| |$alpha-35:size| |$cond-alpha-rename:28|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:83| |$cond-alpha-rename:77| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:34| |$cond-alpha-rename:28| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:303| |$cond-alpha-rename:77| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:300| |$cond-alpha-rename:77| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:294| |$cond-alpha-rename:28| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:291| |$cond-alpha-rename:28| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:77| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:28| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:305| |$cond-alpha-rename:304| |$cond-alpha-rename:306| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:296| |$cond-alpha-rename:295| |$cond-alpha-rename:297| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:5-queenPrint$unknown:33| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:24| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:77| |$cond-alpha-rename:301| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:28| |$cond-alpha-rename:292| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-37:queenArray| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:624| |$cond-alpha-rename:77| |$cond-alpha-rename:623| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:622| |$cond-alpha-rename:28| |$cond-alpha-rename:621| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:620| |$cond-alpha-rename:77| |$cond-alpha-rename:619| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:78| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:623| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:621| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:619| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:301| |$cond-alpha-rename:77| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:292| |$cond-alpha-rename:28| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:306| |$cond-alpha-rename:77| |$cond-alpha-rename:624| |$cond-alpha-rename:301| |$alpha-35:size| |$cond-alpha-rename:77|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:297| |$cond-alpha-rename:28| |$cond-alpha-rename:622| |$cond-alpha-rename:292| |$alpha-35:size| |$cond-alpha-rename:28|) (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:620| |$cond-alpha-rename:78| |$alpha-35:size| |$cond-alpha-rename:77|) )
      (|$innerFunc:4-aux1$unknown:25| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:307| Int) (|$cond-alpha-rename:311| Bool) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:312| Int) (|$cond-alpha-rename:309| Int) (|$cond-alpha-rename:314| Int) (|$V-reftype:48| Int) (|$cond-alpha-rename:625| Int) (|$cond-alpha-rename:310| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:315| Int) (|$cond-alpha-rename:626| Int) (|$alpha-35:size| Int) (|$cond-alpha-rename:313| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:308| Bool) (|$cond-alpha-rename:37| Bool) (|$cond-alpha-rename:36| Int) )
    (=>
      ( and (= |$cond-alpha-rename:40| (= |$cond-alpha-rename:39| |$alpha-35:size|)) (= |$cond-alpha-rename:39| (+ |$cond-alpha-rename:35| 1)) (= |$cond-alpha-rename:38| |$cond-alpha-rename:314|) (= |$cond-alpha-rename:37| (> |$cond-alpha-rename:36| |$alpha-35:size|)) (= |$cond-alpha-rename:36| (+ |$cond-alpha-rename:41| 1)) (= |$cond-alpha-rename:313| 0) (= |$cond-alpha-rename:311| (> |$cond-alpha-rename:310| |$alpha-35:size|)) (= |$cond-alpha-rename:310| (+ |$cond-alpha-rename:312| 1)) (= |$cond-alpha-rename:308| (> |$cond-alpha-rename:307| |$alpha-35:size|)) (= |$cond-alpha-rename:307| (+ |$cond-alpha-rename:309| 1)) (not |$cond-alpha-rename:37|) (not |$cond-alpha-rename:311|) (not |$cond-alpha-rename:308|) |$cond-alpha-rename:40| (not (= |$cond-alpha-rename:38| 0)) (|update$unknown:71| |$cond-alpha-rename:35| |$alpha-35:size| |$cond-alpha-rename:35|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:41| |$cond-alpha-rename:35| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:312| |$cond-alpha-rename:35| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:309| |$cond-alpha-rename:35| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:35| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:314| |$cond-alpha-rename:313| |$cond-alpha-rename:315| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:26| |$V-reftype:48| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:35| |$cond-alpha-rename:310| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:626| |$cond-alpha-rename:35| |$cond-alpha-rename:625| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:625| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:310| |$cond-alpha-rename:35| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:315| |$cond-alpha-rename:35| |$cond-alpha-rename:626| |$cond-alpha-rename:310| |$alpha-35:size| |$cond-alpha-rename:35|) )
      (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:48| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:316| Int) (|$cond-alpha-rename:44| Bool) (|$cond-alpha-rename:326| Bool) (|$cond-alpha-rename:317| Bool) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:330| Int) (|$cond-alpha-rename:327| Int) (|$cond-alpha-rename:321| Int) (|$cond-alpha-rename:318| Int) (|$cond-alpha-rename:331| Int) (|$cond-alpha-rename:323| Int) (|$cond-alpha-rename:629| Int) (|$cond-alpha-rename:328| Int) (|$cond-alpha-rename:319| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$alpha-37:queenArray| Int) (|$V-reftype:63| Int) (|$cond-alpha-rename:628| Int) (|$alpha-35:size| Int) (|$cond-alpha-rename:324| Int) (|$cond-alpha-rename:630| Int) (|$cond-alpha-rename:333| Int) (|$cond-alpha-rename:632| Int) (|$cond-alpha-rename:627| Int) (|$cond-alpha-rename:631| Int) (|$cond-alpha-rename:322| Int) (|$cond-alpha-rename:332| Int) (|$cond-alpha-rename:47| Bool) (|$cond-alpha-rename:89| Bool) (|$cond-alpha-rename:320| Bool) (|$cond-alpha-rename:329| Bool) (|$cond-alpha-rename:86| Bool) (|$cond-alpha-rename:325| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:88| Int) )
    (=>
      ( and (= |$cond-alpha-rename:89| (= |$cond-alpha-rename:88| |$alpha-35:size|)) (= |$cond-alpha-rename:88| (+ |$cond-alpha-rename:84| 1)) (= |$cond-alpha-rename:87| |$cond-alpha-rename:332|) (= |$cond-alpha-rename:86| (> |$cond-alpha-rename:85| |$alpha-35:size|)) (= |$cond-alpha-rename:85| (+ |$cond-alpha-rename:90| 1)) (= |$cond-alpha-rename:47| (= |$cond-alpha-rename:46| |$alpha-35:size|)) (= |$cond-alpha-rename:46| (+ |$cond-alpha-rename:42| 1)) (= |$cond-alpha-rename:45| |$cond-alpha-rename:323|) (= |$cond-alpha-rename:44| (> |$cond-alpha-rename:43| |$alpha-35:size|)) (= |$cond-alpha-rename:43| (+ |$cond-alpha-rename:48| 1)) (= |$cond-alpha-rename:331| 0) (= |$cond-alpha-rename:329| (> |$cond-alpha-rename:328| |$alpha-35:size|)) (= |$cond-alpha-rename:328| (+ |$cond-alpha-rename:330| 1)) (= |$cond-alpha-rename:326| (> |$cond-alpha-rename:325| |$alpha-35:size|)) (= |$cond-alpha-rename:325| (+ |$cond-alpha-rename:327| 1)) (= |$cond-alpha-rename:322| 0) (= |$cond-alpha-rename:320| (> |$cond-alpha-rename:319| |$alpha-35:size|)) (= |$cond-alpha-rename:319| (+ |$cond-alpha-rename:321| 1)) (= |$cond-alpha-rename:317| (> |$cond-alpha-rename:316| |$alpha-35:size|)) (= |$cond-alpha-rename:316| (+ |$cond-alpha-rename:318| 1)) (not |$cond-alpha-rename:86|) (not |$cond-alpha-rename:44|) (not |$cond-alpha-rename:329|) (not |$cond-alpha-rename:326|) (not |$cond-alpha-rename:320|) (not |$cond-alpha-rename:317|) |$cond-alpha-rename:89| (not (= |$cond-alpha-rename:87| 0)) |$cond-alpha-rename:47| (not (= |$cond-alpha-rename:45| 0)) (|update$unknown:71| |$cond-alpha-rename:84| |$alpha-35:size| |$cond-alpha-rename:84|) (|update$unknown:71| |$cond-alpha-rename:42| |$alpha-35:size| |$cond-alpha-rename:42|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:90| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:48| |$cond-alpha-rename:42| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:330| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:327| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:321| |$cond-alpha-rename:42| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:318| |$cond-alpha-rename:42| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:84| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:42| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:332| |$cond-alpha-rename:331| |$cond-alpha-rename:333| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:323| |$cond-alpha-rename:322| |$cond-alpha-rename:324| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:5-queenPrint$unknown:33| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:26| |$alpha-37:queenArray| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:84| |$cond-alpha-rename:328| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:42| |$cond-alpha-rename:319| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-37:queenArray| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:632| |$cond-alpha-rename:84| |$cond-alpha-rename:631| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:630| |$cond-alpha-rename:42| |$cond-alpha-rename:629| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:628| |$cond-alpha-rename:84| |$cond-alpha-rename:627| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:85| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:631| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:629| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:627| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:328| |$cond-alpha-rename:84| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:319| |$cond-alpha-rename:42| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:333| |$cond-alpha-rename:84| |$cond-alpha-rename:632| |$cond-alpha-rename:328| |$alpha-35:size| |$cond-alpha-rename:84|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:324| |$cond-alpha-rename:42| |$cond-alpha-rename:630| |$cond-alpha-rename:319| |$alpha-35:size| |$cond-alpha-rename:42|) (|$innerFunc:1-a$unknown:8| |$V-reftype:63| |$alpha-37:queenArray| |$cond-alpha-rename:628| |$cond-alpha-rename:85| |$alpha-35:size| |$cond-alpha-rename:84|) )
      (|$innerFunc:4-aux1$unknown:27| |$V-reftype:63| |$alpha-37:queenArray| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:127| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Bool) (|$cond-alpha-rename:335| Bool) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:340| Int) (|$knormal:136| Int) (|$cond-alpha-rename:633| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:342| Int) (|$cond-alpha-rename:634| Int) (|$alpha-35:size| Int) (|$knormal:134| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:62| Int) (|$cond-alpha-rename:61| Bool) (|$cond-alpha-rename:338| Bool) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:60| Int) )
    (=>
      ( and (= |$knormal:134| 0) (= |$knormal:127| 1) (= |$cond-alpha-rename:61| (= |$cond-alpha-rename:60| |$alpha-35:size|)) (= |$cond-alpha-rename:60| (+ |$cond-alpha-rename:56| 1)) (= |$cond-alpha-rename:59| |$cond-alpha-rename:341|) (= |$cond-alpha-rename:58| (> |$cond-alpha-rename:57| |$alpha-35:size|)) (= |$cond-alpha-rename:57| (+ |$cond-alpha-rename:62| 1)) (= |$cond-alpha-rename:340| 0) (= |$cond-alpha-rename:338| (> |$cond-alpha-rename:337| |$alpha-35:size|)) (= |$cond-alpha-rename:337| (+ |$cond-alpha-rename:339| 1)) (= |$cond-alpha-rename:335| (> |$cond-alpha-rename:334| |$alpha-35:size|)) (= |$cond-alpha-rename:334| (+ |$cond-alpha-rename:336| 1)) (not |$cond-alpha-rename:58|) (not |$cond-alpha-rename:338|) (not |$cond-alpha-rename:335|) |$cond-alpha-rename:61| (not (= |$cond-alpha-rename:59| 0)) (|update$unknown:71| |$cond-alpha-rename:56| |$alpha-35:size| |$cond-alpha-rename:56|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:62| |$cond-alpha-rename:56| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:339| |$cond-alpha-rename:56| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:336| |$cond-alpha-rename:56| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:56| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:341| |$cond-alpha-rename:340| |$cond-alpha-rename:342| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:4-aux1$unknown:29| |$knormal:136| |$knormal:134| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:56| |$cond-alpha-rename:337| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:634| |$cond-alpha-rename:56| |$cond-alpha-rename:633| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:633| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:337| |$cond-alpha-rename:56| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:342| |$cond-alpha-rename:56| |$cond-alpha-rename:634| |$cond-alpha-rename:337| |$alpha-35:size| |$cond-alpha-rename:56|) )
      (|print_string$unknown:65| |$knormal:127|)
    )
  )
)
(assert
  (forall ( (|$knormal:134| Int) (|$cond-alpha-rename:64| Int) (|$cond-alpha-rename:65| Bool) (|$cond-alpha-rename:344| Bool) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:349| Int) (|$alpha-35:size| Int) (|$cond-alpha-rename:636| Int) (|$cond-alpha-rename:351| Int) (|$cond-alpha-rename:63| Int) (|$cond-alpha-rename:346| Int) (|$cond-alpha-rename:635| Int) (|$cond-alpha-rename:350| Int) (|$cond-alpha-rename:345| Int) (|$cond-alpha-rename:348| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:68| Bool) (|$cond-alpha-rename:347| Bool) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:67| Int) )
    (=>
      ( and (= |$knormal:134| 0) (= |$cond-alpha-rename:68| (= |$cond-alpha-rename:67| |$alpha-35:size|)) (= |$cond-alpha-rename:67| (+ |$cond-alpha-rename:63| 1)) (= |$cond-alpha-rename:66| |$cond-alpha-rename:350|) (= |$cond-alpha-rename:65| (> |$cond-alpha-rename:64| |$alpha-35:size|)) (= |$cond-alpha-rename:64| (+ |$cond-alpha-rename:69| 1)) (= |$cond-alpha-rename:349| 0) (= |$cond-alpha-rename:347| (> |$cond-alpha-rename:346| |$alpha-35:size|)) (= |$cond-alpha-rename:346| (+ |$cond-alpha-rename:348| 1)) (= |$cond-alpha-rename:344| (> |$cond-alpha-rename:343| |$alpha-35:size|)) (= |$cond-alpha-rename:343| (+ |$cond-alpha-rename:345| 1)) (not |$cond-alpha-rename:65|) (not |$cond-alpha-rename:347|) (not |$cond-alpha-rename:344|) |$cond-alpha-rename:68| (not (= |$cond-alpha-rename:66| 0)) (|update$unknown:71| |$cond-alpha-rename:63| |$alpha-35:size| |$cond-alpha-rename:63|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:69| |$cond-alpha-rename:63| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:348| |$cond-alpha-rename:63| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:345| |$cond-alpha-rename:63| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:63| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:350| |$cond-alpha-rename:349| |$cond-alpha-rename:351| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:63| |$cond-alpha-rename:346| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:636| |$cond-alpha-rename:63| |$cond-alpha-rename:635| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:635| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:346| |$cond-alpha-rename:63| |$alpha-35:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:351| |$cond-alpha-rename:63| |$cond-alpha-rename:636| |$cond-alpha-rename:346| |$alpha-35:size| |$cond-alpha-rename:63|) )
      (|$innerFunc:4-aux1$unknown:28| |$knormal:134| |$alpha-35:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:352| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:356| Bool) (|$knormal:43| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:357| Int) (|$cond-alpha-rename:354| Int) (|$cond-alpha-rename:359| Int) (|$V-reftype:57| Int) (|$cond-alpha-rename:637| Int) (|$cond-alpha-rename:355| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:638| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:358| Int) (|$knormal:33| Int) (|$cond-alpha-rename:353| Bool) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:359|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:358| 0) (= |$cond-alpha-rename:356| (> |$cond-alpha-rename:355| |$alpha-15:size|)) (= |$cond-alpha-rename:355| (+ |$cond-alpha-rename:357| 1)) (= |$cond-alpha-rename:353| (> |$cond-alpha-rename:352| |$alpha-15:size|)) (= |$cond-alpha-rename:352| (+ |$cond-alpha-rename:354| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:356|) (not |$cond-alpha-rename:353|) |$knormal:43| (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:357| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:354| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:359| |$cond-alpha-rename:358| |$cond-alpha-rename:360| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:31| |$V-reftype:57| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:355| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:638| |$alpha-17:row| |$cond-alpha-rename:637| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:637| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:355| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:360| |$alpha-17:row| |$cond-alpha-rename:638| |$cond-alpha-rename:355| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:57| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:361| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:365| Bool) (|$knormal:43| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:366| Int) (|$cond-alpha-rename:363| Int) (|$cond-alpha-rename:368| Int) (|$V-reftype:61| Int) (|$cond-alpha-rename:639| Int) (|$cond-alpha-rename:364| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:369| Int) (|$cond-alpha-rename:640| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:367| Int) (|$knormal:33| Int) (|$cond-alpha-rename:362| Bool) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:368|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:367| 0) (= |$cond-alpha-rename:365| (> |$cond-alpha-rename:364| |$alpha-15:size|)) (= |$cond-alpha-rename:364| (+ |$cond-alpha-rename:366| 1)) (= |$cond-alpha-rename:362| (> |$cond-alpha-rename:361| |$alpha-15:size|)) (= |$cond-alpha-rename:361| (+ |$cond-alpha-rename:363| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:365|) (not |$cond-alpha-rename:362|) |$knormal:43| (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:366| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:363| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:368| |$cond-alpha-rename:367| |$cond-alpha-rename:369| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:5-queenPrint$unknown:33| |$V-reftype:61| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:364| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:640| |$alpha-17:row| |$cond-alpha-rename:639| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:639| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:364| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:369| |$alpha-17:row| |$cond-alpha-rename:640| |$cond-alpha-rename:364| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:61| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:114| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:383| Bool) (|$cond-alpha-rename:374| Bool) (|$cond-alpha-rename:115| Bool) (|$knormal:33| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:386| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:641| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:387| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:642| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:113| Int) (|$cond-alpha-rename:373| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:382| Int) (|$cond-alpha-rename:643| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:385| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:381| Int) (|$cond-alpha-rename:384| Int) (|$knormal:92| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:118| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:371| Bool) (|$cond-alpha-rename:380| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:370| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:121|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:386|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:385| 0) (= |$cond-alpha-rename:383| (> |$cond-alpha-rename:382| |$alpha-15:size|)) (= |$cond-alpha-rename:382| (+ |$cond-alpha-rename:384| 1)) (= |$cond-alpha-rename:380| (> |$cond-alpha-rename:379| |$alpha-15:size|)) (= |$cond-alpha-rename:379| (+ |$cond-alpha-rename:381| 1)) (= |$cond-alpha-rename:376| 0) (= |$cond-alpha-rename:374| (> |$cond-alpha-rename:373| |$alpha-15:size|)) (= |$cond-alpha-rename:373| (+ |$cond-alpha-rename:375| 1)) (= |$cond-alpha-rename:371| (> |$cond-alpha-rename:370| |$alpha-15:size|)) (= |$cond-alpha-rename:370| (+ |$cond-alpha-rename:372| 1)) (= |$cond-alpha-rename:122| 0) (= |$cond-alpha-rename:121| 1) (= |$cond-alpha-rename:120| 1) (= |$cond-alpha-rename:118| (= |$cond-alpha-rename:117| |$alpha-15:size|)) (= |$cond-alpha-rename:117| (+ |$cond-alpha-rename:113| 1)) (= |$cond-alpha-rename:116| |$cond-alpha-rename:377|) (= |$cond-alpha-rename:115| (> |$cond-alpha-rename:114| |$alpha-15:size|)) (= |$cond-alpha-rename:114| (+ |$cond-alpha-rename:119| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:383|) (not |$cond-alpha-rename:380|) (not |$cond-alpha-rename:374|) (not |$cond-alpha-rename:371|) (not |$cond-alpha-rename:115|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:118| (not (= |$cond-alpha-rename:116| 0)) (|update$unknown:71| |$cond-alpha-rename:113| |$alpha-15:size| |$cond-alpha-rename:113|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:120|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:384| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:381| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:375| |$cond-alpha-rename:113| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:372| |$cond-alpha-rename:113| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:119| |$cond-alpha-rename:113| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:113| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:386| |$cond-alpha-rename:385| |$cond-alpha-rename:387| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:377| |$cond-alpha-rename:376| |$cond-alpha-rename:378| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:113| |$cond-alpha-rename:373| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:382| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:644| |$alpha-17:row| |$cond-alpha-rename:643| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:642| |$cond-alpha-rename:113| |$cond-alpha-rename:641| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:643| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:641| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:382| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:373| |$cond-alpha-rename:113| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:387| |$alpha-17:row| |$cond-alpha-rename:644| |$cond-alpha-rename:382| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:378| |$cond-alpha-rename:113| |$cond-alpha-rename:642| |$cond-alpha-rename:373| |$alpha-15:size| |$cond-alpha-rename:113|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:125| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:401| Bool) (|$cond-alpha-rename:392| Bool) (|$cond-alpha-rename:126| Bool) (|$knormal:33| Int) (|$cond-alpha-rename:127| Int) (|$V-reftype:104| Int) (|$cond-alpha-rename:403| Int) (|$cond-alpha-rename:395| Int) (|$cond-alpha-rename:133| Int) (|$cond-alpha-rename:647| Int) (|$cond-alpha-rename:400| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:391| Int) (|$cond-alpha-rename:124| Int) (|$cond-alpha-rename:396| Int) (|$cond-alpha-rename:646| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:648| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:394| Int) (|$cond-alpha-rename:404| Int) (|$cond-alpha-rename:130| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) (|$cond-alpha-rename:399| Int) (|$cond-alpha-rename:402| Int) (|$knormal:92| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:129| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:389| Bool) (|$cond-alpha-rename:398| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:128| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:388| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:132|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:404|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:403| 0) (= |$cond-alpha-rename:401| (> |$cond-alpha-rename:400| |$alpha-15:size|)) (= |$cond-alpha-rename:400| (+ |$cond-alpha-rename:402| 1)) (= |$cond-alpha-rename:398| (> |$cond-alpha-rename:397| |$alpha-15:size|)) (= |$cond-alpha-rename:397| (+ |$cond-alpha-rename:399| 1)) (= |$cond-alpha-rename:394| 0) (= |$cond-alpha-rename:392| (> |$cond-alpha-rename:391| |$alpha-15:size|)) (= |$cond-alpha-rename:391| (+ |$cond-alpha-rename:393| 1)) (= |$cond-alpha-rename:389| (> |$cond-alpha-rename:388| |$alpha-15:size|)) (= |$cond-alpha-rename:388| (+ |$cond-alpha-rename:390| 1)) (= |$cond-alpha-rename:133| 0) (= |$cond-alpha-rename:132| 1) (= |$cond-alpha-rename:131| 1) (= |$cond-alpha-rename:129| (= |$cond-alpha-rename:128| |$alpha-15:size|)) (= |$cond-alpha-rename:128| (+ |$cond-alpha-rename:124| 1)) (= |$cond-alpha-rename:127| |$cond-alpha-rename:395|) (= |$cond-alpha-rename:126| (> |$cond-alpha-rename:125| |$alpha-15:size|)) (= |$cond-alpha-rename:125| (+ |$cond-alpha-rename:130| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:401|) (not |$cond-alpha-rename:398|) (not |$cond-alpha-rename:392|) (not |$cond-alpha-rename:389|) (not |$cond-alpha-rename:126|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:129| (not (= |$cond-alpha-rename:127| 0)) (|update$unknown:71| |$cond-alpha-rename:124| |$alpha-15:size| |$cond-alpha-rename:124|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:131|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:402| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:399| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:393| |$cond-alpha-rename:124| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:390| |$cond-alpha-rename:124| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:130| |$cond-alpha-rename:124| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:124| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:404| |$cond-alpha-rename:403| |$cond-alpha-rename:405| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:395| |$cond-alpha-rename:394| |$cond-alpha-rename:396| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:134| |$cond-alpha-rename:133| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:124| |$cond-alpha-rename:391| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:400| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:648| |$alpha-17:row| |$cond-alpha-rename:647| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:646| |$cond-alpha-rename:124| |$cond-alpha-rename:645| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:647| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:645| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:400| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:391| |$cond-alpha-rename:124| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:405| |$alpha-17:row| |$cond-alpha-rename:648| |$cond-alpha-rename:400| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:396| |$cond-alpha-rename:124| |$cond-alpha-rename:646| |$cond-alpha-rename:391| |$alpha-15:size| |$cond-alpha-rename:124|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:63| Int) (|$cond-alpha-rename:406| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:139| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:416| Bool) (|$cond-alpha-rename:407| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:140| Bool) (|$cond-alpha-rename:142| Int) (|$cond-alpha-rename:422| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:145| Int) (|$cond-alpha-rename:649| Int) (|$cond-alpha-rename:652| Int) (|$cond-alpha-rename:423| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:650| Int) (|$cond-alpha-rename:414| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:409| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:418| Int) (|$cond-alpha-rename:651| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:413| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:141| Int) (|$cond-alpha-rename:408| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) (|$cond-alpha-rename:420| Int) (|$knormal:92| Int) (|$knormal:58| Int) (|$cond-alpha-rename:138| Int) (|$knormal:33| Int) (|$cond-alpha-rename:137| Bool) (|$cond-alpha-rename:410| Bool) (|$cond-alpha-rename:419| Bool) (|$V-reftype:161| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:136| Int) (|$cond-alpha-rename:415| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:143|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:422|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:421| 0) (= |$cond-alpha-rename:419| (> |$cond-alpha-rename:418| |$alpha-15:size|)) (= |$cond-alpha-rename:418| (+ |$cond-alpha-rename:420| 1)) (= |$cond-alpha-rename:416| (> |$cond-alpha-rename:415| |$alpha-15:size|)) (= |$cond-alpha-rename:415| (+ |$cond-alpha-rename:417| 1)) (= |$cond-alpha-rename:412| 0) (= |$cond-alpha-rename:410| (> |$cond-alpha-rename:409| |$alpha-15:size|)) (= |$cond-alpha-rename:409| (+ |$cond-alpha-rename:411| 1)) (= |$cond-alpha-rename:407| (> |$cond-alpha-rename:406| |$alpha-15:size|)) (= |$cond-alpha-rename:406| (+ |$cond-alpha-rename:408| 1)) (= |$cond-alpha-rename:144| 0) (= |$cond-alpha-rename:143| 1) (= |$cond-alpha-rename:142| 1) (= |$cond-alpha-rename:140| (= |$cond-alpha-rename:139| |$alpha-15:size|)) (= |$cond-alpha-rename:139| (+ |$cond-alpha-rename:135| 1)) (= |$cond-alpha-rename:138| |$cond-alpha-rename:413|) (= |$cond-alpha-rename:137| (> |$cond-alpha-rename:136| |$alpha-15:size|)) (= |$cond-alpha-rename:136| (+ |$cond-alpha-rename:141| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:161| |$knormal:58|) (not |$knormal:26|) (not |$cond-alpha-rename:419|) (not |$cond-alpha-rename:416|) (not |$cond-alpha-rename:410|) (not |$cond-alpha-rename:407|) (not |$cond-alpha-rename:137|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:140| (not (= |$cond-alpha-rename:138| 0)) (|update$unknown:71| |$cond-alpha-rename:135| |$alpha-15:size| |$cond-alpha-rename:135|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:142|) (|$innerFunc:8-loop$unknown:58| |$knormal:58| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:420| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:417| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:411| |$cond-alpha-rename:135| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:408| |$cond-alpha-rename:135| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:141| |$cond-alpha-rename:135| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:135| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:422| |$cond-alpha-rename:421| |$cond-alpha-rename:423| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:413| |$cond-alpha-rename:412| |$cond-alpha-rename:414| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:145| |$cond-alpha-rename:144| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:135| |$cond-alpha-rename:409| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:418| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:652| |$alpha-17:row| |$cond-alpha-rename:651| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:650| |$cond-alpha-rename:135| |$cond-alpha-rename:649| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:651| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:649| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:418| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:409| |$cond-alpha-rename:135| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:423| |$alpha-17:row| |$cond-alpha-rename:652| |$cond-alpha-rename:418| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:414| |$cond-alpha-rename:135| |$cond-alpha-rename:650| |$cond-alpha-rename:409| |$alpha-15:size| |$cond-alpha-rename:135|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:161| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:433| Int) (|$cond-alpha-rename:147| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:437| Bool) (|$cond-alpha-rename:428| Bool) (|$cond-alpha-rename:148| Bool) (|$knormal:33| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:440| Int) (|$cond-alpha-rename:430| Int) (|$cond-alpha-rename:156| Int) (|$cond-alpha-rename:653| Int) (|$cond-alpha-rename:656| Int) (|$cond-alpha-rename:441| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:654| Int) (|$cond-alpha-rename:432| Int) (|$cond-alpha-rename:146| Int) (|$cond-alpha-rename:427| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:436| Int) (|$cond-alpha-rename:655| Int) (|$cond-alpha-rename:155| Int) (|$cond-alpha-rename:431| Int) (|$cond-alpha-rename:439| Int) (|$cond-alpha-rename:152| Int) (|$cond-alpha-rename:426| Int) (|$cond-alpha-rename:429| Int) (|$cond-alpha-rename:435| Int) (|$cond-alpha-rename:438| Int) (|$knormal:92| Int) (|$cond-alpha-rename:153| Int) (|$cond-alpha-rename:151| Bool) (|$knormal:43| Bool) (|$cond-alpha-rename:425| Bool) (|$cond-alpha-rename:434| Bool) (|$knormal:26| Bool) (|$cond-alpha-rename:150| Int) (|$cond-alpha-rename:154| Int) (|$cond-alpha-rename:424| Int) (|$knormal:63| Int) )
    (=>
      ( and (= |$knormal:63| |$cond-alpha-rename:154|) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:440|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:439| 0) (= |$cond-alpha-rename:437| (> |$cond-alpha-rename:436| |$alpha-15:size|)) (= |$cond-alpha-rename:436| (+ |$cond-alpha-rename:438| 1)) (= |$cond-alpha-rename:434| (> |$cond-alpha-rename:433| |$alpha-15:size|)) (= |$cond-alpha-rename:433| (+ |$cond-alpha-rename:435| 1)) (= |$cond-alpha-rename:430| 0) (= |$cond-alpha-rename:428| (> |$cond-alpha-rename:427| |$alpha-15:size|)) (= |$cond-alpha-rename:427| (+ |$cond-alpha-rename:429| 1)) (= |$cond-alpha-rename:425| (> |$cond-alpha-rename:424| |$alpha-15:size|)) (= |$cond-alpha-rename:424| (+ |$cond-alpha-rename:426| 1)) (= |$cond-alpha-rename:155| 0) (= |$cond-alpha-rename:154| 1) (= |$cond-alpha-rename:153| 1) (= |$cond-alpha-rename:151| (= |$cond-alpha-rename:150| |$alpha-15:size|)) (= |$cond-alpha-rename:150| (+ |$cond-alpha-rename:146| 1)) (= |$cond-alpha-rename:149| |$cond-alpha-rename:431|) (= |$cond-alpha-rename:148| (> |$cond-alpha-rename:147| |$alpha-15:size|)) (= |$cond-alpha-rename:147| (+ |$cond-alpha-rename:152| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (not |$cond-alpha-rename:437|) (not |$cond-alpha-rename:434|) (not |$cond-alpha-rename:428|) (not |$cond-alpha-rename:425|) (not |$cond-alpha-rename:148|) |$knormal:43| (not (= |$knormal:33| 0)) |$cond-alpha-rename:151| (not (= |$cond-alpha-rename:149| 0)) (|update$unknown:71| |$cond-alpha-rename:146| |$alpha-15:size| |$cond-alpha-rename:146|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|print_string$unknown:65| |$cond-alpha-rename:153|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:438| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:435| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:429| |$cond-alpha-rename:146| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:426| |$cond-alpha-rename:146| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:152| |$cond-alpha-rename:146| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:146| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:440| |$cond-alpha-rename:439| |$cond-alpha-rename:441| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:431| |$cond-alpha-rename:430| |$cond-alpha-rename:432| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:4-aux1$unknown:29| |$cond-alpha-rename:156| |$cond-alpha-rename:155| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$cond-alpha-rename:146| |$cond-alpha-rename:427| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:436| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:656| |$alpha-17:row| |$cond-alpha-rename:655| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:654| |$cond-alpha-rename:146| |$cond-alpha-rename:653| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:655| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:653| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:436| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:427| |$cond-alpha-rename:146| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:441| |$alpha-17:row| |$cond-alpha-rename:656| |$cond-alpha-rename:436| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:432| |$cond-alpha-rename:146| |$cond-alpha-rename:654| |$cond-alpha-rename:427| |$alpha-15:size| |$cond-alpha-rename:146|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$alpha-30:j| Int) (|$knormal:126| Int) (|$V-reftype:68| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:37| |$V-reftype:68| |$alpha-28:size|) true )
      (|$innerFunc:6-aux2$unknown:40| |$V-reftype:68| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$V-reftype:76| Int) (|$alpha-31:queenArray| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:37| |$alpha-31:queenArray| |$alpha-28:size|) true )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:123| Int) (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$V-reftype:74| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$alpha-32:qj| Int) (|$knormal:109| Int) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$alpha-28:size| Int) (|$alpha-31:queenArray| Int) (|$alpha-30:j| Int) (|$V-reftype:76| Int) (|$knormal:126| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:113| Bool) (|$knormal:112| Int) (|$knormal:123| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:40| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:76| |$alpha-31:queenArray| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$knormal:113| Bool) (|$knormal:107| Bool) (|$knormal:110| Int) (|$knormal:123| Int) (|$alpha-32:qj| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$knormal:125| Int) (|$knormal:109| Int) (|$knormal:108| Bool) (|$V-reftype:175| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:175| |$knormal:125|) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:44| |$knormal:125| |$knormal:123| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:175| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:112| Int) (|$V-reftype:173| Int) (|$knormal:113| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:108| Bool) )
    (=>
      ( and (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:173| 0) (not |$knormal:108|) |$knormal:113| |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:173| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$knormal:109| Int) (|$alpha-32:qj| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$knormal:110| Int) (|$knormal:107| Bool) (|$knormal:113| Bool) (|$knormal:112| Int) (|$knormal:123| Int) )
    (=>
      ( and (= |$knormal:123| (+ |$alpha-33:i| 1)) (= |$knormal:113| (= |$knormal:110| |$knormal:112|)) (= |$knormal:112| (- |$alpha-30:j| |$alpha-33:i|)) (= |$knormal:109| (- |$alpha-32:qj| |$knormal:126|)) (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (not |$knormal:113|) (not |$knormal:108|) |$knormal:107| (|abs$unknown:60| |$knormal:110| |$knormal:109|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:43| |$knormal:123| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:108| Bool) (|$alpha-32:qj| Int) (|$alpha-28:size| Int) (|$alpha-33:i| Int) (|$knormal:126| Int) (|$alpha-30:j| Int) (|$knormal:107| Bool) (|$V-reftype:169| Int) )
    (=>
      ( and (= |$knormal:108| (= |$knormal:126| |$alpha-32:qj|)) (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:169| 0) |$knormal:108| |$knormal:107| (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true (|$innerFunc:6-aux2$unknown:41| |$knormal:126| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|) true true )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:169| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:107| Bool) (|$alpha-30:j| Int) (|$alpha-33:i| Int) (|$alpha-32:qj| Int) (|$alpha-28:size| Int) )
    (=>
      ( and (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) |$knormal:107| (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true true true )
      (|$innerFunc:6-aux2$unknown:40| |$alpha-33:i| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:176| Int) (|$alpha-28:size| Int) (|$alpha-32:qj| Int) (|$alpha-33:i| Int) (|$alpha-30:j| Int) (|$knormal:107| Bool) )
    (=>
      ( and (= |$knormal:107| (< |$alpha-33:i| |$alpha-30:j|)) (= |$V-reftype:176| 1) (not |$knormal:107|) (|$innerFunc:6-aux2$unknown:43| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|) true true true )
      (|$innerFunc:6-aux2$unknown:44| |$V-reftype:176| |$alpha-33:i| |$alpha-32:qj| |$alpha-30:j| |$alpha-28:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:157| Int) (|$cond-alpha-rename:158| Bool) (|$V-reftype:68| Int) (|$cond-alpha-rename:657| Int) (|$cond-alpha-rename:181| Int) (|$alpha-25:j| Int) (|$knormal:106| Int) (|$cond-alpha-rename:658| Int) (|$alpha-23:size| Int) (|$cond-alpha-rename:159| Int) (|$cond-alpha-rename:183| Int) (|$cond-alpha-rename:182| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:182| (> |$cond-alpha-rename:181| |$alpha-23:size|)) (= |$cond-alpha-rename:181| (+ |$cond-alpha-rename:183| 1)) (= |$cond-alpha-rename:158| (> |$cond-alpha-rename:157| |$alpha-23:size|)) (= |$cond-alpha-rename:157| (+ |$cond-alpha-rename:159| 1)) (not |$cond-alpha-rename:182|) (not |$cond-alpha-rename:158|) (|update$unknown:71| |$alpha-25:j| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:183| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:159| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:37| |$V-reftype:68| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-25:j| |$cond-alpha-rename:181| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:658| |$alpha-25:j| |$cond-alpha-rename:657| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:657| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:181| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:658| |$cond-alpha-rename:181| |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:7-test$unknown:49| |$V-reftype:68| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:188| Bool) (|$cond-alpha-rename:161| Bool) (|$cond-alpha-rename:661| Int) (|$cond-alpha-rename:187| Int) (|$alpha-25:j| Int) (|$cond-alpha-rename:184| Int) (|$alpha-26:queenArray| Int) (|$V-reftype:93| Int) (|$cond-alpha-rename:660| Int) (|$alpha-23:size| Int) (|$knormal:106| Int) (|$cond-alpha-rename:662| Int) (|$cond-alpha-rename:659| Int) (|$cond-alpha-rename:162| Int) (|$cond-alpha-rename:186| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:185| Bool) (|$cond-alpha-rename:160| Int) )
    (=>
      ( and (= |$cond-alpha-rename:188| (> |$cond-alpha-rename:187| |$alpha-23:size|)) (= |$cond-alpha-rename:187| (+ |$cond-alpha-rename:189| 1)) (= |$cond-alpha-rename:185| (> |$cond-alpha-rename:184| |$alpha-23:size|)) (= |$cond-alpha-rename:184| (+ |$cond-alpha-rename:186| 1)) (= |$cond-alpha-rename:161| (> |$cond-alpha-rename:160| |$alpha-23:size|)) (= |$cond-alpha-rename:160| (+ |$cond-alpha-rename:162| 1)) (not |$cond-alpha-rename:188|) (not |$cond-alpha-rename:185|) (not |$cond-alpha-rename:161|) (|update$unknown:71| |$alpha-25:j| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:189| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:186| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:162| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:37| |$alpha-26:queenArray| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-26:queenArray| |$cond-alpha-rename:184| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-25:j| |$cond-alpha-rename:187| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:662| |$alpha-25:j| |$cond-alpha-rename:661| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:660| |$alpha-25:j| |$cond-alpha-rename:659| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:661| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:659| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:187| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:184| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:662| |$cond-alpha-rename:187| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:660| |$cond-alpha-rename:184| |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:6-aux2$unknown:38| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:163| Int) (|$cond-alpha-rename:164| Bool) (|$alpha-23:size| Int) (|$cond-alpha-rename:664| Int) (|$knormal:106| Int) (|$alpha-25:j| Int) (|$cond-alpha-rename:190| Int) (|$cond-alpha-rename:663| Int) (|$V-reftype:74| Int) (|$cond-alpha-rename:165| Int) (|$cond-alpha-rename:192| Int) (|$cond-alpha-rename:191| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:191| (> |$cond-alpha-rename:190| |$alpha-23:size|)) (= |$cond-alpha-rename:190| (+ |$cond-alpha-rename:192| 1)) (= |$cond-alpha-rename:164| (> |$cond-alpha-rename:163| |$alpha-23:size|)) (= |$cond-alpha-rename:163| (+ |$cond-alpha-rename:165| 1)) (not |$cond-alpha-rename:191|) (not |$cond-alpha-rename:164|) (|update$unknown:71| |$alpha-25:j| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:192| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:165| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:40| |$V-reftype:74| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-25:j| |$cond-alpha-rename:190| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:664| |$alpha-25:j| |$cond-alpha-rename:663| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:663| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:190| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:664| |$cond-alpha-rename:190| |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:7-test$unknown:49| |$V-reftype:74| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:166| Int) (|$cond-alpha-rename:194| Bool) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:195| Int) (|$cond-alpha-rename:168| Int) (|$cond-alpha-rename:667| Int) (|$cond-alpha-rename:196| Int) (|$alpha-25:j| Int) (|$cond-alpha-rename:193| Int) (|$alpha-26:queenArray| Int) (|$V-reftype:93| Int) (|$cond-alpha-rename:666| Int) (|$alpha-23:size| Int) (|$knormal:106| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:665| Int) (|$cond-alpha-rename:167| Bool) (|$cond-alpha-rename:197| Bool) )
    (=>
      ( and (= |$cond-alpha-rename:197| (> |$cond-alpha-rename:196| |$alpha-23:size|)) (= |$cond-alpha-rename:196| (+ |$cond-alpha-rename:198| 1)) (= |$cond-alpha-rename:194| (> |$cond-alpha-rename:193| |$alpha-23:size|)) (= |$cond-alpha-rename:193| (+ |$cond-alpha-rename:195| 1)) (= |$cond-alpha-rename:167| (> |$cond-alpha-rename:166| |$alpha-23:size|)) (= |$cond-alpha-rename:166| (+ |$cond-alpha-rename:168| 1)) (not |$cond-alpha-rename:197|) (not |$cond-alpha-rename:194|) (not |$cond-alpha-rename:167|) (|update$unknown:71| |$alpha-25:j| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:198| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:195| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:168| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:6-aux2$unknown:40| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-26:queenArray| |$cond-alpha-rename:193| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-25:j| |$cond-alpha-rename:196| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:668| |$alpha-25:j| |$cond-alpha-rename:667| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:666| |$alpha-25:j| |$cond-alpha-rename:665| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:667| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:665| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:196| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:193| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:668| |$cond-alpha-rename:196| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:1-a$unknown:8| |$V-reftype:93| |$alpha-26:queenArray| |$cond-alpha-rename:666| |$cond-alpha-rename:193| |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:6-aux2$unknown:41| |$V-reftype:93| |$alpha-26:queenArray| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:2| Int) (|$cond-alpha-rename:173| Bool) (|$cond-alpha-rename:174| Int) (|$alpha-25:j| Int) (|$alpha-23:size| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:172| Int) )
    (=>
      ( and (= |$cond-alpha-rename:2| |$alpha-25:j|) (= |$cond-alpha-rename:173| (> |$cond-alpha-rename:172| |$alpha-23:size|)) (= |$cond-alpha-rename:172| (+ |$cond-alpha-rename:174| 1)) (= |$cond-alpha-rename:1| |$alpha-25:j|) (not |$cond-alpha-rename:173|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:174| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) )
      (|$innerFunc:7-test$unknown:49| |$cond-alpha-rename:1| |$cond-alpha-rename:2| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:103| Int) (|$cond-alpha-rename:175| Int) (|$cond-alpha-rename:176| Bool) (|$cond-alpha-rename:669| Int) (|$cond-alpha-rename:202| Int) (|$alpha-25:j| Int) (|$knormal:106| Int) (|$cond-alpha-rename:670| Int) (|$alpha-23:size| Int) (|$cond-alpha-rename:177| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:203| Bool) )
    (=>
      ( and (= |$knormal:103| 0) (= |$cond-alpha-rename:203| (> |$cond-alpha-rename:202| |$alpha-23:size|)) (= |$cond-alpha-rename:202| (+ |$cond-alpha-rename:204| 1)) (= |$cond-alpha-rename:176| (> |$cond-alpha-rename:175| |$alpha-23:size|)) (= |$cond-alpha-rename:175| (+ |$cond-alpha-rename:177| 1)) (not |$cond-alpha-rename:203|) (not |$cond-alpha-rename:176|) (|update$unknown:71| |$alpha-25:j| |$alpha-23:size| |$alpha-25:j|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:204| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:177| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:7-test$unknown:49| |$alpha-25:j| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-25:j| |$cond-alpha-rename:202| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:670| |$alpha-25:j| |$cond-alpha-rename:669| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:669| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:202| |$alpha-25:j| |$alpha-23:size|) (|$innerFunc:1-a$unknown:8| |$knormal:106| |$alpha-25:j| |$cond-alpha-rename:670| |$cond-alpha-rename:202| |$alpha-23:size| |$alpha-25:j|) )
      (|$innerFunc:6-aux2$unknown:43| |$knormal:103| |$knormal:106| |$alpha-25:j| |$alpha-23:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$V-reftype:85| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:7-test$unknown:46| |$V-reftype:85| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:85| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$V-reftype:91| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (|$innerFunc:7-test$unknown:49| |$V-reftype:91| |$alpha-17:row| |$alpha-15:size|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:91| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:442| Int) (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:443| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:444| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:449| Int) (|$cond-alpha-rename:671| Int) (|$cond-alpha-rename:445| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:450| Int) (|$cond-alpha-rename:672| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:448| Int) (|$knormal:33| Int) (|$cond-alpha-rename:446| Bool) (|$knormal:43| Bool) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:449|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:448| 0) (= |$cond-alpha-rename:446| (> |$cond-alpha-rename:445| |$alpha-15:size|)) (= |$cond-alpha-rename:445| (+ |$cond-alpha-rename:447| 1)) (= |$cond-alpha-rename:443| (> |$cond-alpha-rename:442| |$alpha-15:size|)) (= |$cond-alpha-rename:442| (+ |$cond-alpha-rename:444| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:446|) (not |$cond-alpha-rename:443|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:447| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:444| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:449| |$cond-alpha-rename:448| |$cond-alpha-rename:450| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:445| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:672| |$alpha-17:row| |$cond-alpha-rename:671| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:671| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:445| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:450| |$alpha-17:row| |$cond-alpha-rename:672| |$cond-alpha-rename:445| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$cond-alpha-rename:455| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:456| Int) (|$cond-alpha-rename:453| Int) (|$V-reftype:98| Int) (|$cond-alpha-rename:458| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:454| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:459| Int) (|$cond-alpha-rename:674| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:452| Bool) (|$knormal:26| Bool) (|$alpha-19:next| Int) (|$cond-alpha-rename:451| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:458|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:457| 0) (= |$cond-alpha-rename:455| (> |$cond-alpha-rename:454| |$alpha-15:size|)) (= |$cond-alpha-rename:454| (+ |$cond-alpha-rename:456| 1)) (= |$cond-alpha-rename:452| (> |$cond-alpha-rename:451| |$alpha-15:size|)) (= |$cond-alpha-rename:451| (+ |$cond-alpha-rename:453| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:455|) (not |$cond-alpha-rename:452|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:456| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:453| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:458| |$cond-alpha-rename:457| |$cond-alpha-rename:459| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:454| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:674| |$alpha-17:row| |$cond-alpha-rename:673| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:673| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:454| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:459| |$alpha-17:row| |$cond-alpha-rename:674| |$cond-alpha-rename:454| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$cond-alpha-rename:464| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:462| Int) (|$cond-alpha-rename:466| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:468| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:463| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:467| Int) (|$V-reftype:104| Int) (|$cond-alpha-rename:461| Bool) (|$knormal:26| Bool) (|$alpha-19:next| Int) (|$cond-alpha-rename:460| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:467|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:466| 0) (= |$cond-alpha-rename:464| (> |$cond-alpha-rename:463| |$alpha-15:size|)) (= |$cond-alpha-rename:463| (+ |$cond-alpha-rename:465| 1)) (= |$cond-alpha-rename:461| (> |$cond-alpha-rename:460| |$alpha-15:size|)) (= |$cond-alpha-rename:460| (+ |$cond-alpha-rename:462| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:464|) (not |$cond-alpha-rename:461|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:465| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:462| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:467| |$cond-alpha-rename:466| |$cond-alpha-rename:468| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:463| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:676| |$alpha-17:row| |$cond-alpha-rename:675| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:675| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:463| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:468| |$alpha-17:row| |$cond-alpha-rename:676| |$cond-alpha-rename:463| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:469| Int) (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:470| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:474| Int) (|$cond-alpha-rename:471| Int) (|$knormal:47| Int) (|$cond-alpha-rename:475| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:678| Int) (|$cond-alpha-rename:477| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:472| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:476| Int) (|$V-reftype:104| Int) (|$knormal:33| Int) (|$cond-alpha-rename:473| Bool) (|$knormal:43| Bool) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:476|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:475| 0) (= |$cond-alpha-rename:473| (> |$cond-alpha-rename:472| |$alpha-15:size|)) (= |$cond-alpha-rename:472| (+ |$cond-alpha-rename:474| 1)) (= |$cond-alpha-rename:470| (> |$cond-alpha-rename:469| |$alpha-15:size|)) (= |$cond-alpha-rename:469| (+ |$cond-alpha-rename:471| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:473|) (not |$cond-alpha-rename:470|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:474| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:471| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:476| |$cond-alpha-rename:475| |$cond-alpha-rename:477| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:472| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:678| |$alpha-17:row| |$cond-alpha-rename:677| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:677| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:472| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:477| |$alpha-17:row| |$cond-alpha-rename:678| |$cond-alpha-rename:472| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:478| Int) (|$alpha-19:next| Int) (|$V-reftype:164| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:479| Bool) (|$knormal:41| Int) (|$knormal:92| Int) (|$cond-alpha-rename:483| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) (|$cond-alpha-rename:679| Int) (|$cond-alpha-rename:481| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:486| Int) (|$cond-alpha-rename:680| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:484| Int) (|$cond-alpha-rename:482| Bool) (|$knormal:33| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:485|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:484| 0) (= |$cond-alpha-rename:482| (> |$cond-alpha-rename:481| |$alpha-15:size|)) (= |$cond-alpha-rename:481| (+ |$cond-alpha-rename:483| 1)) (= |$cond-alpha-rename:479| (> |$cond-alpha-rename:478| |$alpha-15:size|)) (= |$cond-alpha-rename:478| (+ |$cond-alpha-rename:480| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:164| |$knormal:41|) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:482|) (not |$cond-alpha-rename:479|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:58| |$knormal:41| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:483| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:480| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:485| |$cond-alpha-rename:484| |$cond-alpha-rename:486| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:481| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:680| |$alpha-17:row| |$cond-alpha-rename:679| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:679| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:481| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:486| |$alpha-17:row| |$cond-alpha-rename:680| |$cond-alpha-rename:481| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:164| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$cond-alpha-rename:491| Bool) (|$knormal:33| Int) (|$knormal:51| Int) (|$knormal:92| Int) (|$cond-alpha-rename:492| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:494| Int) (|$cond-alpha-rename:681| Int) (|$cond-alpha-rename:490| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:495| Int) (|$cond-alpha-rename:682| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:493| Int) (|$knormal:47| Int) (|$cond-alpha-rename:488| Bool) (|$knormal:26| Bool) (|$V-reftype:163| Int) (|$alpha-19:next| Int) (|$cond-alpha-rename:487| Int) (|$knormal:42| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:494|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:493| 0) (= |$cond-alpha-rename:491| (> |$cond-alpha-rename:490| |$alpha-15:size|)) (= |$cond-alpha-rename:490| (+ |$cond-alpha-rename:492| 1)) (= |$cond-alpha-rename:488| (> |$cond-alpha-rename:487| |$alpha-15:size|)) (= |$cond-alpha-rename:487| (+ |$cond-alpha-rename:489| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:163| |$knormal:51|) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:491|) (not |$cond-alpha-rename:488|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:58| |$knormal:51| |$knormal:47| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:492| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:489| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:494| |$cond-alpha-rename:493| |$cond-alpha-rename:495| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:490| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:682| |$alpha-17:row| |$cond-alpha-rename:681| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:681| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:490| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:495| |$alpha-17:row| |$cond-alpha-rename:682| |$cond-alpha-rename:490| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:163| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:42| Int) (|$cond-alpha-rename:496| Int) (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$cond-alpha-rename:497| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:501| Int) (|$cond-alpha-rename:498| Int) (|$cond-alpha-rename:503| Int) (|$cond-alpha-rename:683| Int) (|$cond-alpha-rename:499| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:504| Int) (|$cond-alpha-rename:684| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:502| Int) (|$knormal:33| Int) (|$cond-alpha-rename:500| Bool) (|$knormal:43| Bool) (|$knormal:47| Int) )
    (=>
      ( and (= |$knormal:47| (+ |$alpha-17:row| 1)) (= |$knormal:43| (= |$knormal:42| |$alpha-15:size|)) (= |$knormal:42| (+ |$alpha-17:row| 1)) (= |$knormal:33| |$cond-alpha-rename:503|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:502| 0) (= |$cond-alpha-rename:500| (> |$cond-alpha-rename:499| |$alpha-15:size|)) (= |$cond-alpha-rename:499| (+ |$cond-alpha-rename:501| 1)) (= |$cond-alpha-rename:497| (> |$cond-alpha-rename:496| |$alpha-15:size|)) (= |$cond-alpha-rename:496| (+ |$cond-alpha-rename:498| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:43|) (not |$knormal:26|) (not |$cond-alpha-rename:500|) (not |$cond-alpha-rename:497|) (not (= |$knormal:33| 0)) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:501| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:498| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:503| |$cond-alpha-rename:502| |$cond-alpha-rename:504| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:499| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:684| |$alpha-17:row| |$cond-alpha-rename:683| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:683| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:499| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:504| |$alpha-17:row| |$cond-alpha-rename:684| |$cond-alpha-rename:499| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:55| |$knormal:47| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:33| Int) (|$cond-alpha-rename:509| Bool) (|$knormal:92| Int) (|$cond-alpha-rename:510| Int) (|$cond-alpha-rename:507| Int) (|$cond-alpha-rename:512| Int) (|$cond-alpha-rename:685| Int) (|$cond-alpha-rename:508| Int) (|$alpha-17:row| Int) (|$cond-alpha-rename:513| Int) (|$cond-alpha-rename:686| Int) (|$alpha-15:size| Int) (|$cond-alpha-rename:511| Int) (|$cond-alpha-rename:506| Bool) (|$knormal:26| Bool) (|$alpha-19:next| Int) (|$cond-alpha-rename:505| Int) )
    (=>
      ( and (= |$knormal:33| |$cond-alpha-rename:512|) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$cond-alpha-rename:511| 0) (= |$cond-alpha-rename:509| (> |$cond-alpha-rename:508| |$alpha-15:size|)) (= |$cond-alpha-rename:508| (+ |$cond-alpha-rename:510| 1)) (= |$cond-alpha-rename:506| (> |$cond-alpha-rename:505| |$alpha-15:size|)) (= |$cond-alpha-rename:505| (+ |$cond-alpha-rename:507| 1)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$knormal:33| 0) (not |$knormal:26|) (not |$cond-alpha-rename:509|) (not |$cond-alpha-rename:506|) (|update$unknown:71| |$alpha-17:row| |$alpha-15:size| |$alpha-17:row|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:510| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$cond-alpha-rename:507| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:7-test$unknown:49| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:6-aux2$unknown:44| |$cond-alpha-rename:512| |$cond-alpha-rename:511| |$cond-alpha-rename:513| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:16| |$alpha-17:row| |$cond-alpha-rename:508| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:15| |$cond-alpha-rename:686| |$alpha-17:row| |$cond-alpha-rename:685| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:685| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:2-assign$unknown:13| |$cond-alpha-rename:508| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:1-a$unknown:8| |$cond-alpha-rename:513| |$alpha-17:row| |$cond-alpha-rename:686| |$cond-alpha-rename:508| |$alpha-15:size| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:77| Int) (|$knormal:73| Bool) (|$alpha-15:size| Int) (|$V-reftype:98| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-15:size|) true )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:98| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) )
    (=>
      ( and (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true (= |$cond-alpha-rename:3| |$alpha-17:row|) (= |$cond-alpha-rename:4| |$alpha-17:row|) )
      (|$innerFunc:8-loop$unknown:56| |$cond-alpha-rename:3| |$cond-alpha-rename:4| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:87| Int) (|$knormal:73| Bool) (|$V-reftype:104| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:77| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:2-assign$unknown:16| |$V-reftype:104| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:73| Bool) (|$knormal:81| Int) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:77| Int) (|$knormal:26| Bool) (|$V-reftype:158| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:158| |$knormal:81|) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:58| |$knormal:81| |$knormal:77| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:158| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:156| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:73| Bool) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (= |$V-reftype:156| 1) |$knormal:73| |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:8-loop$unknown:58| |$V-reftype:156| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$knormal:73| Bool) (|$knormal:77| Int) )
    (=>
      ( and (= |$knormal:77| (- |$alpha-17:row| 1)) (= |$knormal:73| (= |$alpha-17:row| 0)) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:73|) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:8-loop$unknown:55| |$knormal:77| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-19:next| Int) (|$alpha-15:size| Int) (|$alpha-17:row| Int) (|$knormal:92| Int) (|$knormal:26| Bool) (|$knormal:87| Int) )
    (=>
      ( and (= |$knormal:87| 0) (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) |$knormal:26| (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:2-assign$unknown:13| |$knormal:87| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$knormal:92| Int) (|$alpha-17:row| Int) (|$alpha-15:size| Int) (|$alpha-19:next| Int) )
    (=>
      ( and (= |$knormal:26| (> |$alpha-19:next| |$alpha-15:size|)) (= |$alpha-19:next| (+ |$knormal:92| 1)) (not |$knormal:26|) (|$innerFunc:8-loop$unknown:57| |$knormal:92| |$alpha-17:row| |$alpha-17:row| |$alpha-15:size|) (|$innerFunc:8-loop$unknown:55| |$alpha-17:row| |$alpha-15:size|) true )
      (|$innerFunc:2-assign$unknown:13| |$alpha-19:next| |$alpha-17:row| |$alpha-15:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:564| Bool) (|$V-reftype:98| Int) (|$alpha-11:size| Int) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$cond-alpha-rename:564| (> |$alpha-11:size| 0)) |$cond-alpha-rename:564| (|$innerFunc:8-loop$unknown:53| |$V-reftype:98| |$alpha-11:size|) )
      (|make_array$unknown:63| |$V-reftype:98| |$knormal:21| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:565| Bool) (|$knormal:21| Int) (|$alpha-11:size| Int) (|$knormal:23| Int) (|$V-reftype:121| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$cond-alpha-rename:565| (> |$alpha-11:size| 0)) (= |$V-reftype:121| |$knormal:21|) |$cond-alpha-rename:565| (|make_array$unknown:63| |$knormal:23| |$knormal:21| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:53| |$knormal:23| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:54| |$V-reftype:121| |$knormal:23| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:size| Int) (|$V-reftype:104| Int) (|$knormal:15| Int) (|$cond-alpha-rename:566| Bool) (|$knormal:21| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (= |$cond-alpha-rename:566| (> |$alpha-11:size| 0)) |$cond-alpha-rename:566| (|$innerFunc:8-loop$unknown:56| |$V-reftype:104| |$knormal:15| |$alpha-11:size|) )
      (|make_array$unknown:63| |$V-reftype:104| |$knormal:21| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:567| Bool) (|$knormal:21| Int) (|$alpha-11:size| Int) (|$knormal:23| Int) (|$knormal:15| Int) (|$V-reftype:121| Int) )
    (=>
      ( and (= |$knormal:21| 0) (= |$knormal:15| 0) (= |$cond-alpha-rename:567| (> |$alpha-11:size| 0)) (= |$V-reftype:121| |$knormal:21|) |$cond-alpha-rename:567| (|make_array$unknown:63| |$knormal:23| |$knormal:21| |$alpha-11:size|) (|$innerFunc:8-loop$unknown:56| |$knormal:23| |$knormal:15| |$alpha-11:size|) )
      (|$innerFunc:8-loop$unknown:57| |$V-reftype:121| |$knormal:23| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:144| Int) (|$knormal:11| Bool) (|$cond-alpha-rename:552| Int) (|$cond-alpha-rename:550| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:556| Int) (|$cond-alpha-rename:551| Int) (|$cond-alpha-rename:554| Bool) (|$cond-alpha-rename:555| Bool) (|$alpha-10:x| Int) )
    (=>
      ( and (= |$knormal:11| (< |$alpha-10:x| 0)) (= |$cond-alpha-rename:555| (= |$cond-alpha-rename:556| |$cond-alpha-rename:552|)) (= |$cond-alpha-rename:554| (< |$cond-alpha-rename:553| |$cond-alpha-rename:551|)) (= |$alpha-10:x| (- |$cond-alpha-rename:552| |$cond-alpha-rename:556|)) (= |$V-reftype:144| (- |$alpha-10:x|)) (not |$cond-alpha-rename:555|) |$knormal:11| |$cond-alpha-rename:554| (|$innerFunc:6-aux2$unknown:43| |$cond-alpha-rename:553| |$cond-alpha-rename:552| |$cond-alpha-rename:551| |$cond-alpha-rename:550|) (|$innerFunc:6-aux2$unknown:41| |$cond-alpha-rename:556| |$cond-alpha-rename:553| |$cond-alpha-rename:551| |$cond-alpha-rename:550|) )
      (|abs$unknown:60| |$V-reftype:144| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:145| Int) (|$cond-alpha-rename:562| Bool) (|$cond-alpha-rename:559| Int) (|$cond-alpha-rename:557| Int) (|$cond-alpha-rename:560| Int) (|$cond-alpha-rename:563| Int) (|$cond-alpha-rename:558| Int) (|$cond-alpha-rename:561| Bool) (|$knormal:11| Bool) (|$alpha-10:x| Int) )
    (=>
      ( and (= |$knormal:11| (< |$alpha-10:x| 0)) (= |$cond-alpha-rename:562| (= |$cond-alpha-rename:563| |$cond-alpha-rename:559|)) (= |$cond-alpha-rename:561| (< |$cond-alpha-rename:560| |$cond-alpha-rename:558|)) (= |$alpha-10:x| (- |$cond-alpha-rename:559| |$cond-alpha-rename:563|)) (= |$V-reftype:145| |$alpha-10:x|) (not |$knormal:11|) (not |$cond-alpha-rename:562|) |$cond-alpha-rename:561| (|$innerFunc:6-aux2$unknown:43| |$cond-alpha-rename:560| |$cond-alpha-rename:559| |$cond-alpha-rename:558| |$cond-alpha-rename:557|) (|$innerFunc:6-aux2$unknown:41| |$cond-alpha-rename:563| |$cond-alpha-rename:560| |$cond-alpha-rename:558| |$cond-alpha-rename:557|) )
      (|abs$unknown:60| |$V-reftype:145| |$alpha-10:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$cond-alpha-rename:569| Bool) (|$alpha-11:size| Int) )
    (=>
      ( and (= |$knormal:15| 0) (= |$cond-alpha-rename:569| (> |$alpha-11:size| 0)) |$cond-alpha-rename:569| )
      (|$innerFunc:8-loop$unknown:55| |$knormal:15| |$alpha-11:size|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:5| Int) (|$alpha-4:i| Int) (|$alpha-7:x| Int) (|$alpha-5:n| Int) )
    (=>
      ( and (= |$cond-alpha-rename:6| |$alpha-4:i|) (= |$cond-alpha-rename:5| |$alpha-4:i|) (|$innerFunc:2-assign$unknown:13| |$alpha-7:x| |$alpha-4:i| |$alpha-5:n|) )
      (|update$unknown:71| |$cond-alpha-rename:5| |$alpha-5:n| |$cond-alpha-rename:6|)
    )
  )
)
(check-sat)

(get-model)

