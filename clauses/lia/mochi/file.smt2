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

(declare-fun |readit$unknown:21|
  ( Int ) Bool
)

(declare-fun |readit$unknown:22|
  ( Int Int ) Bool
)

(declare-fun |next$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:13|
  ( Int Int Int Int ) Bool
)

(declare-fun |g$unknown:12|
  ( Int Int Int ) Bool
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
  (forall ( (|$V-reftype:62| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$V-reftype:62| |$knormal:10|) (not (= 0 |$alpha-12:x|)) (|closeit$unknown:5| |$knormal:10| |$alpha-13:st|) true true )
      (|close_$unknown:3| |$V-reftype:62| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:x| Int) )
    (=>
      ( and (not (= 0 |$alpha-12:x|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) )
    (=>
      ( and (= |$V-reftype:63| |$alpha-13:st|) (not (not (= 0 |$alpha-12:x|))) true true )
      (|close_$unknown:3| |$V-reftype:63| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:64| Int) (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (= |$V-reftype:64| |$knormal:23|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:9| |$V-reftype:64| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$knormal:13| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:26| Int) (|$knormal:30| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:61| Int) (|$alpha-10:closed| Int) (|$alpha-7:st| Int) (|$alpha-8:opened| Int) (|$alpha-9:ignore| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= (not (= 0 |$knormal:7|)) (= |$alpha-7:st| |$alpha-9:ignore|)) (= (not (= 0 |$knormal:6|)) (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$alpha-10:closed| 2) (= |$V-reftype:61| 0) (not (not (= 0 |$knormal:7|))) (not (not (= 0 |$knormal:6|))) (|loop$unknown:15| |$knormal:9| |$knormal:8|) true )
      (|closeit$unknown:5| |$V-reftype:61| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-10:closed| Int) (|$alpha-7:st| Int) (|$alpha-8:opened| Int) (|$alpha-9:ignore| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$alpha-10:closed| 2) (= |$V-reftype:57| |$alpha-10:closed|) (not (= 0 |$knormal:6|)) true )
      (|closeit$unknown:5| |$V-reftype:57| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-10:closed| Int) (|$alpha-7:st| Int) (|$alpha-8:opened| Int) (|$alpha-9:ignore| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (= |$alpha-7:st| |$alpha-9:ignore|)) (= (not (= 0 |$knormal:6|)) (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$alpha-10:closed| 2) (= |$V-reftype:59| |$alpha-7:st|) (not (not (= 0 |$knormal:6|))) (not (= 0 |$knormal:7|)) true )
      (|closeit$unknown:5| |$V-reftype:59| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:closed| Int) (|$alpha-7:st| Int) (|$alpha-8:opened| Int) (|$alpha-9:ignore| Int) (|$knormal:6| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= (not (= 0 |$knormal:7|)) (= |$alpha-7:st| |$alpha-9:ignore|)) (= (not (= 0 |$knormal:6|)) (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$alpha-10:closed| 2) (not (not (= 0 |$knormal:7|))) (not (not (= 0 |$knormal:6|))) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:34| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (= |$V-reftype:75| |$knormal:38|) (not (not (= 0 |$knormal:32|))) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true (|f$unknown:9| |$knormal:38| |$alpha-24:st| |$knormal:34| |$alpha-23:x|) )
      (|g$unknown:13| |$V-reftype:75| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:39| Int) (|$knormal:41| Int) (|$knormal:46| Int) )
    (=>
      ( and (= |$knormal:41| 1) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (= |$V-reftype:73| |$knormal:46|) (not (= 0 |$knormal:32|)) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true (|f$unknown:9| |$knormal:46| |$knormal:39| |$knormal:41| |$alpha-23:x|) )
      (|g$unknown:13| |$V-reftype:73| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:39| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| 1) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (= 0 |$knormal:32|)) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:39| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| 1) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (= 0 |$knormal:32|)) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:39| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:41| 1) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (= 0 |$knormal:32|)) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      (|f$unknown:8| |$knormal:39| |$knormal:41| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (= 0 |$knormal:32|)) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (not (= 0 |$knormal:32|))) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (not (= 0 |$knormal:32|))) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:32| Int) (|$knormal:34| Int) )
    (=>
      ( and (= |$knormal:34| 0) (= (not (= 0 |$knormal:32|)) (> |$alpha-22:b3| 0)) (not (not (= 0 |$knormal:32|))) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) true true )
      (|f$unknown:8| |$alpha-24:st| |$knormal:34| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:43| |$knormal:2|) (|loop$unknown:15| |$knormal:2| |$knormal:1|) true )
      (|loop$unknown:15| |$V-reftype:43| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:69| Int) (|$alpha-18:st| Int) (|$alpha-19:opened| Int) (|$alpha-20:init| Int) (|$alpha-21:ignore| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (= |$alpha-18:st| |$alpha-20:init|)) (= |$alpha-21:ignore| 3) (= |$alpha-20:init| 0) (= |$alpha-19:opened| 1) (= |$V-reftype:69| |$alpha-19:opened|) (not (= 0 |$knormal:31|)) true )
      (|next$unknown:17| |$V-reftype:69| |$alpha-18:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$alpha-18:st| Int) (|$alpha-19:opened| Int) (|$alpha-20:init| Int) (|$alpha-21:ignore| Int) (|$knormal:31| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:31|)) (= |$alpha-18:st| |$alpha-20:init|)) (= |$alpha-21:ignore| 3) (= |$alpha-20:init| 0) (= |$alpha-19:opened| 1) (= |$V-reftype:70| |$alpha-21:ignore|) (not (not (= 0 |$knormal:31|))) true )
      (|next$unknown:17| |$V-reftype:70| |$alpha-18:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$V-reftype:51| |$knormal:5|) (not (= 0 |$alpha-5:x|)) (|readit$unknown:22| |$knormal:5| |$alpha-6:st|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) true )
      (|read_$unknown:20| |$V-reftype:51| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (not (= 0 |$alpha-5:x|)) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) true )
      (|readit$unknown:21| |$alpha-6:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (= |$V-reftype:52| |$alpha-6:st|) (not (not (= 0 |$alpha-5:x|))) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) true )
      (|read_$unknown:20| |$V-reftype:52| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-2:st| Int) (|$alpha-3:opened| Int) (|$alpha-4:ignore| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-4:ignore| 3) (= |$alpha-3:opened| 1) (= |$V-reftype:47| |$alpha-3:opened|) (not (= 0 |$knormal:3|)) (|readit$unknown:21| |$alpha-2:st|) )
      (|readit$unknown:22| |$V-reftype:47| |$alpha-2:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Int) (|$alpha-2:st| Int) (|$alpha-3:opened| Int) (|$alpha-4:ignore| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-2:st| |$alpha-4:ignore|)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-4:ignore| 3) (= |$alpha-3:opened| 1) (= |$V-reftype:49| |$alpha-2:st|) (not (not (= 0 |$knormal:3|))) (not (= 0 |$knormal:4|)) (|readit$unknown:21| |$alpha-2:st|) )
      (|readit$unknown:22| |$V-reftype:49| |$alpha-2:st|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$alpha-3:opened| Int) (|$alpha-4:ignore| Int) (|$knormal:3| Int) (|$knormal:4| Int) )
    ( and (= (not (= 0 |$knormal:4|)) (= |$alpha-2:st| |$alpha-4:ignore|)) (= (not (= 0 |$knormal:3|)) (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-4:ignore| 3) (= |$alpha-3:opened| 1) (not (not (= 0 |$knormal:4|))) (not (not (= 0 |$knormal:3|))) (|readit$unknown:21| |$alpha-2:st|) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (= 0 |$knormal:47|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (= 0 |$knormal:47|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-26:b3| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:55| Int) )
    (=>
      ( and (= |$knormal:55| 1) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (= 0 |$knormal:47|)) )
      (|g$unknown:12| |$alpha-27:opened| |$knormal:55| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| 0) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (not (= 0 |$knormal:47|))) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| 0) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (not (= 0 |$knormal:47|))) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:b2| Int) (|$alpha-26:b3| Int) (|$alpha-27:opened| Int) (|$alpha-28:init| Int) (|$knormal:47| Int) (|$knormal:49| Int) )
    (=>
      ( and (= |$knormal:49| 0) (= (not (= 0 |$knormal:47|)) (> |$alpha-25:b2| 0)) (= |$alpha-28:init| 0) (= |$alpha-27:opened| 1) (not (not (= 0 |$knormal:47|))) )
      (|g$unknown:12| |$alpha-28:init| |$knormal:49| |$alpha-26:b3|)
    )
  )
)
(check-sat)

(get-model)

(exit)

