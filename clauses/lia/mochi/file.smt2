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

(declare-fun |next$unknown:16|
  ( Int ) Bool
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

(declare-fun |g$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |g$unknown:10|
  ( Int ) Bool
)

(declare-fun |loop$unknown:14|
  ( Int ) Bool
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

(declare-fun |read_$unknown:18|
  ( Int ) Bool
)

(declare-fun |f$unknown:8|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:7|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:6|
  ( Int ) Bool
)

(declare-fun |closeit$unknown:4|
  ( Int ) Bool
)

(declare-fun |close_$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |closeit$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |close_$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |close_$unknown:1|
  ( Int ) Bool
)

(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) (|$knormal:10| Int) )
    (=>
      ( and (|close_$unknown:1| |$alpha-12:x|) (|close_$unknown:2| |$alpha-13:st| |$alpha-12:x|) (|closeit$unknown:5| |$knormal:10| |$alpha-13:st|) (not (= |$alpha-12:x| 0)) (= |$V-reftype:62| |$knormal:10|) )
      (|close_$unknown:3| |$V-reftype:62| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:x| Int) (|$alpha-13:st| Int) )
    (=>
      ( and (|close_$unknown:1| |$alpha-12:x|) (|close_$unknown:2| |$alpha-13:st| |$alpha-12:x|) (not (= |$alpha-12:x| 0)) )
      (|closeit$unknown:4| |$alpha-13:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) )
    (=>
      ( and (|close_$unknown:1| |$alpha-12:x|) (|close_$unknown:2| |$alpha-13:st| |$alpha-12:x|) (= |$alpha-12:x| 0) (= |$V-reftype:63| |$alpha-13:st|) )
      (|close_$unknown:3| |$V-reftype:63| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|read_$unknown:18| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|read_$unknown:19| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$knormal:23| Int) (|$knormal:13| Int) (|$V-reftype:64| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (= |$V-reftype:64| |$knormal:23|) )
      (|f$unknown:9| |$V-reftype:64| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:18| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$knormal:13| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) (|$knormal:17| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) )
      (|f$unknown:6| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) )
      (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) (|$knormal:17| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|close_$unknown:1| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:y| Int) (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) )
    (=>
      ( and (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|close_$unknown:2| |$knormal:26| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:opened| Int) (|$V-reftype:61| Int) (|$knormal:6| Bool) (|$knormal:9| Int) (|$alpha-7:st| Int) (|$knormal:8| Int) (|$knormal:7| Bool) (|$alpha-10:closed| Int) (|$alpha-9:ignore| Int) )
    (=>
      ( and (|closeit$unknown:4| |$alpha-7:st|) (|loop$unknown:15| |$knormal:9| |$knormal:8|) (not |$knormal:6|) (not |$knormal:7|) (= |$V-reftype:61| 0) (= |$alpha-10:closed| 2) (= |$alpha-8:opened| 1) (= |$alpha-9:ignore| 3) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) (= |$knormal:8| 1) )
      (|closeit$unknown:5| |$V-reftype:61| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:opened| Int) (|$alpha-10:closed| Int) (|$knormal:6| Bool) (|$alpha-7:st| Int) (|$V-reftype:57| Int) (|$alpha-9:ignore| Int) )
    (=>
      ( and (|closeit$unknown:4| |$alpha-7:st|) |$knormal:6| (= |$V-reftype:57| |$alpha-10:closed|) (= |$alpha-10:closed| 2) (= |$alpha-8:opened| 1) (= |$alpha-9:ignore| 3) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) )
      (|closeit$unknown:5| |$V-reftype:57| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:ignore| Int) (|$alpha-10:closed| Int) (|$V-reftype:59| Int) (|$knormal:7| Bool) (|$alpha-7:st| Int) (|$knormal:6| Bool) (|$alpha-8:opened| Int) )
    (=>
      ( and (|closeit$unknown:4| |$alpha-7:st|) |$knormal:7| (not |$knormal:6|) (= |$V-reftype:59| |$alpha-7:st|) (= |$alpha-10:closed| 2) (= |$alpha-8:opened| 1) (= |$alpha-9:ignore| 3) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) )
      (|closeit$unknown:5| |$V-reftype:59| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:ignore| Int) (|$alpha-10:closed| Int) (|$knormal:6| Bool) (|$alpha-7:st| Int) (|$knormal:7| Bool) (|$alpha-8:opened| Int) (|$knormal:8| Int) )
    (=>
      ( and (|closeit$unknown:4| |$alpha-7:st|) (not |$knormal:6|) (not |$knormal:7|) (= |$alpha-10:closed| 2) (= |$alpha-8:opened| 1) (= |$alpha-9:ignore| 3) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) (= |$knormal:8| 1) )
      (|loop$unknown:14| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) )
    (=>
      ( and (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|close_$unknown:1| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:st| Int) (|$alpha-15:y| Int) (|$alpha-14:x| Int) )
    (=>
      ( and (|f$unknown:6| |$alpha-14:x|) (|f$unknown:7| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|close_$unknown:2| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:38| Int) (|$knormal:34| Int) (|$alpha-22:b3| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|f$unknown:9| |$knormal:38| |$alpha-24:st| |$knormal:34| |$alpha-23:x|) (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (not |$knormal:32|) (= |$V-reftype:75| |$knormal:38|) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:34| 0) )
      (|g$unknown:13| |$V-reftype:75| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:73| Int) (|$alpha-24:st| Int) (|$alpha-23:x| Int) (|$knormal:39| Int) (|$knormal:46| Int) (|$knormal:41| Int) (|$alpha-22:b3| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|f$unknown:9| |$knormal:46| |$knormal:39| |$knormal:41| |$alpha-23:x|) (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) |$knormal:32| (= |$V-reftype:73| |$knormal:46|) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:41| 1) )
      (|g$unknown:13| |$V-reftype:73| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$knormal:39| Int) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:41| Int) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) |$knormal:32| (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:41| 1) )
      (|f$unknown:6| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:41| Int) (|$alpha-24:st| Int) (|$alpha-23:x| Int) (|$alpha-22:b3| Int) (|$knormal:39| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) |$knormal:32| (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:41| 1) )
      (|f$unknown:7| |$knormal:41| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$knormal:39| Int) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:41| Int) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (|next$unknown:17| |$knormal:39| |$alpha-24:st|) |$knormal:32| (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:41| 1) )
      (|f$unknown:8| |$knormal:39| |$knormal:41| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-24:st| Int) (|$alpha-23:x| Int) (|$alpha-22:b3| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) |$knormal:32| (= |$knormal:32| (> |$alpha-22:b3| 0)) )
      (|next$unknown:16| |$alpha-24:st|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:34| Int) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (not |$knormal:32|) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:34| 0) )
      (|f$unknown:6| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:34| Int) (|$alpha-24:st| Int) (|$alpha-23:x| Int) (|$alpha-22:b3| Int) (|$knormal:32| Bool) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (not |$knormal:32|) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:34| 0) )
      (|f$unknown:7| |$knormal:34| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:32| Bool) (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:34| Int) )
    (=>
      ( and (|g$unknown:10| |$alpha-22:b3|) (|g$unknown:11| |$alpha-23:x| |$alpha-22:b3|) (|g$unknown:12| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|) (not |$knormal:32|) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$knormal:34| 0) )
      (|f$unknown:8| |$alpha-24:st| |$knormal:34| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|loop$unknown:14| |$alpha-1:x|) (|loop$unknown:15| |$knormal:2| |$knormal:1|) (= |$V-reftype:43| |$knormal:2|) (= |$knormal:1| 1) )
      (|loop$unknown:15| |$V-reftype:43| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (|loop$unknown:14| |$alpha-1:x|) (= |$knormal:1| 1) )
      (|loop$unknown:14| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:init| Int) (|$alpha-19:opened| Int) (|$knormal:31| Bool) (|$alpha-18:st| Int) (|$V-reftype:69| Int) (|$alpha-21:ignore| Int) )
    (=>
      ( and (|next$unknown:16| |$alpha-18:st|) |$knormal:31| (= |$V-reftype:69| |$alpha-19:opened|) (= |$alpha-19:opened| 1) (= |$alpha-20:init| 0) (= |$alpha-21:ignore| 3) (= |$knormal:31| (= |$alpha-18:st| |$alpha-20:init|)) )
      (|next$unknown:17| |$V-reftype:69| |$alpha-18:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-20:init| Int) (|$alpha-21:ignore| Int) (|$knormal:31| Bool) (|$alpha-18:st| Int) (|$V-reftype:70| Int) (|$alpha-19:opened| Int) )
    (=>
      ( and (|next$unknown:16| |$alpha-18:st|) (not |$knormal:31|) (= |$V-reftype:70| |$alpha-21:ignore|) (= |$alpha-19:opened| 1) (= |$alpha-20:init| 0) (= |$alpha-21:ignore| 3) (= |$knormal:31| (= |$alpha-18:st| |$alpha-20:init|)) )
      (|next$unknown:17| |$V-reftype:70| |$alpha-18:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (|read_$unknown:18| |$alpha-5:x|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) (|readit$unknown:22| |$knormal:5| |$alpha-6:st|) (not (=|$alpha-5:x| 0)) (= |$V-reftype:51| |$knormal:5|) )
      (|read_$unknown:20| |$V-reftype:51| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (|read_$unknown:18| |$alpha-5:x|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) (not (= |$alpha-5:x| 0)) )
      (|readit$unknown:21| |$alpha-6:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (|read_$unknown:18| |$alpha-5:x|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) (= |$alpha-5:x| 0) (= |$V-reftype:52| |$alpha-6:st|) )
      (|read_$unknown:20| |$V-reftype:52| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Int) (|$alpha-2:st| Int) (|$knormal:3| Bool) (|$alpha-3:opened| Int) (|$alpha-4:ignore| Int) )
    (=>
      ( and (|readit$unknown:21| |$alpha-2:st|) |$knormal:3| (= |$V-reftype:47| |$alpha-3:opened|) (= |$alpha-3:opened| 1) (= |$alpha-4:ignore| 3) (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) )
      (|readit$unknown:22| |$V-reftype:47| |$alpha-2:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:ignore| Int) (|$knormal:3| Bool) (|$alpha-2:st| Int) (|$knormal:4| Bool) (|$V-reftype:49| Int) (|$alpha-3:opened| Int) )
    (=>
      ( and (|readit$unknown:21| |$alpha-2:st|) |$knormal:4| (not |$knormal:3|) (= |$V-reftype:49| |$alpha-2:st|) (= |$alpha-3:opened| 1) (= |$alpha-4:ignore| 3) (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) (= |$knormal:4| (= |$alpha-2:st| |$alpha-4:ignore|)) )
      (|readit$unknown:22| |$V-reftype:49| |$alpha-2:st|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:ignore| Int) (|$knormal:4| Bool) (|$alpha-2:st| Int) (|$knormal:3| Bool) (|$alpha-3:opened| Int) )
    ( and (|readit$unknown:21| |$alpha-2:st|) (not |$knormal:3|) (not |$knormal:4|) (= |$alpha-3:opened| 1) (= |$alpha-4:ignore| 3) (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) (= |$knormal:4| (= |$alpha-2:st| |$alpha-4:ignore|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$alpha-25:b2| Int) (|$alpha-28:init| Int) (|$knormal:47| Bool) (|$alpha-27:opened| Int) (|$knormal:55| Int) )
    (=>
      ( and |$knormal:47| (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:55| 1) )
      (|g$unknown:10| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$knormal:55| Int) (|$alpha-27:opened| Int) (|$knormal:47| Bool) (|$alpha-28:init| Int) (|$alpha-25:b2| Int) )
    (=>
      ( and |$knormal:47| (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:55| 1) )
      (|g$unknown:11| |$knormal:55| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$alpha-25:b2| Int) (|$alpha-28:init| Int) (|$knormal:47| Bool) (|$alpha-27:opened| Int) (|$knormal:55| Int) )
    (=>
      ( and |$knormal:47| (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:55| 1) )
      (|g$unknown:12| |$alpha-27:opened| |$knormal:55| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$alpha-25:b2| Int) (|$alpha-28:init| Int) (|$knormal:47| Bool) (|$alpha-27:opened| Int) (|$knormal:49| Int) )
    (=>
      ( and (not |$knormal:47|) (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:49| 0) )
      (|g$unknown:10| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$knormal:49| Int) (|$alpha-27:opened| Int) (|$knormal:47| Bool) (|$alpha-28:init| Int) (|$alpha-25:b2| Int) )
    (=>
      ( and (not |$knormal:47|) (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:49| 0) )
      (|g$unknown:11| |$knormal:49| |$alpha-26:b3|)
    )
  )
)
(assert
  (forall ( (|$alpha-26:b3| Int) (|$alpha-25:b2| Int) (|$alpha-28:init| Int) (|$knormal:47| Bool) (|$alpha-27:opened| Int) (|$knormal:49| Int) )
    (=>
      ( and (not |$knormal:47|) (= |$alpha-27:opened| 1) (= |$alpha-28:init| 0) (= |$knormal:47| (> |$alpha-25:b2| 0)) (= |$knormal:49| 0) )
      (|g$unknown:12| |$alpha-28:init| |$knormal:49| |$alpha-26:b3|)
    )
  )
)
(check-sat)

