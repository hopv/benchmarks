(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as r-file
  USED: PEPM2013 as r-file
  KEYWORD: resource
  *)
  
  let rec loop x : unit = loop ()
  let init = 0
  let opened = 1
  let closed = 2
  let ignore = 3
  let readit st =
    if st = opened then opened else (if st = ignore then st else assert false)
  let read_ x st =
    if x then readit st else st
  let closeit st =
    if st = opened then closed else (if st = ignore then st else (loop (); 0))
  let close_ x st =
    if x then closeit st else st
  let rec f x y st : unit =
    close_ y (close_ x st); f x y (read_ y (read_ x st))
  let next st = if st=init then opened else ignore
  let g b3 x st = if b3 > 0 then f x true (next st) else f x false st
  let main b2 b3 = (if b2 > 0 then g b3 true opened else g b3 false init); ()
")

(set-logic HORN)

(declare-fun |readit$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |loop$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |read_$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:9|
  ( Int Int Int Int ) Bool
)

(declare-fun |read_$unknown:19|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |close_$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |closeit$unknown:5|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-12:x| Int) (|$alpha-13:st| Int) (|$knormal:10| Int) )
    (=>
      ( and (not (= 0 |$alpha-12:x|)) (|closeit$unknown:5| |$knormal:10| |$alpha-13:st|) )
      (|close_$unknown:3| |$knormal:10| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:x| Int) (|$alpha-13:st| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-12:x|))) )
      (|close_$unknown:3| |$alpha-13:st| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$knormal:13| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-7:st| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (= |$alpha-7:st| 3)) (not (= |$alpha-7:st| 1)) (|loop$unknown:15| |$knormal:9| 1) )
      (|closeit$unknown:5| 0 |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and true )
      (|closeit$unknown:5| 2 1)
    )
  )
)
(assert
  (forall ( (useless Int) )
    (=>
      ( and (not (= 3 1)) )
      (|closeit$unknown:5| 3 3)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) (|$knormal:38| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:2|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:2|)) (> |$cond-alpha-rename:1| 0))))) (and (not (not (= 0 |$cond-alpha-rename:2|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:2|)) (> |$cond-alpha-rename:1| 0)))))) (not (> |$alpha-22:b3| 0)) (|f$unknown:9| |$knormal:38| |$alpha-24:st| 0 |$alpha-23:x|) )
      (|g$unknown:13| |$knormal:38| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:3| Int) (|$cond-alpha-rename:4| Int) (|$knormal:39| Int) (|$knormal:46| Int) )
    (=>
      ( and (|f$unknown:9| |$knormal:46| |$knormal:39| 1 |$alpha-23:x|) (> |$alpha-22:b3| 0) (or (and (not (= 0 |$cond-alpha-rename:27|)) (and (= |$cond-alpha-rename:24| 1) (and (= |$cond-alpha-rename:25| 0) (and (= (not (= 0 |$cond-alpha-rename:27|)) (= |$alpha-24:st| |$cond-alpha-rename:25|)) (= |$knormal:39| |$cond-alpha-rename:24|))))) (and (not (not (= 0 |$cond-alpha-rename:27|))) (and (= |$cond-alpha-rename:25| 0) (and (= |$cond-alpha-rename:26| 3) (and (= (not (= 0 |$cond-alpha-rename:27|)) (= |$alpha-24:st| |$cond-alpha-rename:25|)) (= |$knormal:39| |$cond-alpha-rename:26|)))))) (or (and (not (= 0 |$cond-alpha-rename:4|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:4|)) (> |$cond-alpha-rename:3| 0))))) (and (not (not (= 0 |$cond-alpha-rename:4|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:4|)) (> |$cond-alpha-rename:3| 0)))))) )
      (|g$unknown:13| |$knormal:46| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:28| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) (|$knormal:39| Int) )
    (=>
      ( and (> |$alpha-22:b3| 0) (or (and (not (= 0 |$cond-alpha-rename:31|)) (and (= |$cond-alpha-rename:28| 1) (and (= |$cond-alpha-rename:29| 0) (and (= (not (= 0 |$cond-alpha-rename:31|)) (= |$alpha-24:st| |$cond-alpha-rename:29|)) (= |$knormal:39| |$cond-alpha-rename:28|))))) (and (not (not (= 0 |$cond-alpha-rename:31|))) (and (= |$cond-alpha-rename:29| 0) (and (= |$cond-alpha-rename:30| 3) (and (= (not (= 0 |$cond-alpha-rename:31|)) (= |$alpha-24:st| |$cond-alpha-rename:29|)) (= |$knormal:39| |$cond-alpha-rename:30|)))))) (or (and (not (= 0 |$cond-alpha-rename:6|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:6|)) (> |$cond-alpha-rename:5| 0))))) (and (not (not (= 0 |$cond-alpha-rename:6|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:6|)) (> |$cond-alpha-rename:5| 0)))))) )
      (|f$unknown:8| |$knormal:39| 1 |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:8|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:8|)) (> |$cond-alpha-rename:7| 0))))) (and (not (not (= 0 |$cond-alpha-rename:8|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:8|)) (> |$cond-alpha-rename:7| 0)))))) (not (> |$alpha-22:b3| 0)) )
      (|f$unknown:8| |$alpha-24:st| 0 |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:2| Int) )
    (=>
      ( and (|loop$unknown:15| |$knormal:2| 1) )
      (|loop$unknown:15| |$knormal:2| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (not (= 0 |$alpha-5:x|)) (|readit$unknown:22| |$knormal:5| |$alpha-6:st|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) )
      (|read_$unknown:20| |$knormal:5| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-5:x|))) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:47| Int) )
    (=>
      ( and (not (= 0 |$cond-alpha-rename:47|)) (|read_$unknown:19| 1 |$cond-alpha-rename:47|) )
      (|readit$unknown:22| 1 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:48| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 |$cond-alpha-rename:48|)) (|read_$unknown:19| 3 |$cond-alpha-rename:48|) )
      (|readit$unknown:22| 3 3)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:49| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 0 |$cond-alpha-rename:49|)) (|read_$unknown:19| |$alpha-2:st| |$cond-alpha-rename:49|) )
    )
  )
)
(check-sat)

(get-model)

