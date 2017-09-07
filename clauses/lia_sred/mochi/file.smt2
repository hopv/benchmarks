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

(declare-fun |f$unknown:8|
  ( Int Int Int ) Bool
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

(assert
  (forall ( (|$V-reftype:62| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) (|$knormal:10| Int) )
    (=>
      ( and (= |$V-reftype:62| |$knormal:10|) (not (= |$alpha-12:x| 0)) (|closeit$unknown:5| |$knormal:10| |$alpha-13:st|) (|close_$unknown:2| |$alpha-13:st| |$alpha-12:x|) true )
      (|close_$unknown:3| |$V-reftype:62| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-12:x| Int) (|$alpha-13:st| Int) )
    (=>
      ( and (= |$V-reftype:63| |$alpha-13:st|) (= |$alpha-12:x| 0) (|close_$unknown:2| |$alpha-13:st| |$alpha-12:x|) true )
      (|close_$unknown:3| |$V-reftype:63| |$alpha-13:st| |$alpha-12:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:17| Int) (|$alpha-14:x| Int) (|$knormal:26| Int) (|$alpha-16:st| Int) (|$knormal:30| Int) (|$alpha-15:y| Int) (|$knormal:23| Int) (|$knormal:13| Int) (|$V-reftype:64| Int) )
    (=>
      ( and (= |$V-reftype:64| |$knormal:23|) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:9| |$V-reftype:64| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|read_$unknown:19| |$knormal:13| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-15:y| Int) (|$knormal:30| Int) (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$knormal:17| Int) )
    (=>
      ( and (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:30| |$knormal:26| |$alpha-15:y|) (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:st| Int) (|$knormal:26| Int) (|$alpha-14:x| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true (|close_$unknown:3| |$knormal:26| |$alpha-16:st| |$alpha-14:x|) )
      (|close_$unknown:2| |$knormal:26| |$alpha-15:y|)
    )
  )
)
(assert
  (forall ( (|$alpha-8:opened| Int) (|$knormal:7| Bool) (|$knormal:9| Int) (|$alpha-7:st| Int) (|$cond-alpha-rename:1| Int) (|$knormal:8| Int) (|$knormal:6| Bool) (|$V-reftype:61| Int) (|$alpha-9:ignore| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$V-reftype:61| 0) (not |$knormal:7|) (not |$knormal:6|) (not (= |$cond-alpha-rename:1| 0)) (|loop$unknown:15| |$knormal:9| |$knormal:8|) (|close_$unknown:2| |$alpha-7:st| |$cond-alpha-rename:1|) )
      (|closeit$unknown:5| |$V-reftype:61| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:57| Int) (|$alpha-7:st| Int) (|$cond-alpha-rename:2| Int) (|$knormal:6| Bool) (|$alpha-10:closed| Int) (|$alpha-8:opened| Int) )
    (=>
      ( and (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-8:opened| 1) (= |$alpha-10:closed| 2) (= |$V-reftype:57| |$alpha-10:closed|) |$knormal:6| (not (= |$cond-alpha-rename:2| 0)) (|close_$unknown:2| |$alpha-7:st| |$cond-alpha-rename:2|) )
      (|closeit$unknown:5| |$V-reftype:57| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:ignore| Int) (|$knormal:6| Bool) (|$alpha-7:st| Int) (|$cond-alpha-rename:3| Int) (|$knormal:7| Bool) (|$V-reftype:59| Int) (|$alpha-8:opened| Int) )
    (=>
      ( and (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (= |$V-reftype:59| |$alpha-7:st|) (not |$knormal:6|) |$knormal:7| (not (= |$cond-alpha-rename:3| 0)) (|close_$unknown:2| |$alpha-7:st| |$cond-alpha-rename:3|) )
      (|closeit$unknown:5| |$V-reftype:59| |$alpha-7:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:ignore| Int) (|$knormal:7| Bool) (|$alpha-7:st| Int) (|$cond-alpha-rename:4| Int) (|$knormal:6| Bool) (|$alpha-8:opened| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:8| 1) (= |$knormal:7| (= |$alpha-7:st| |$alpha-9:ignore|)) (= |$knormal:6| (= |$alpha-7:st| |$alpha-8:opened|)) (= |$alpha-9:ignore| 3) (= |$alpha-8:opened| 1) (not |$knormal:7|) (not |$knormal:6|) (not (= |$cond-alpha-rename:4| 0)) (|close_$unknown:2| |$alpha-7:st| |$cond-alpha-rename:4|) )
      (|loop$unknown:14| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-16:st| Int) (|$alpha-15:y| Int) )
    (=>
      ( and (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) true true )
      (|close_$unknown:2| |$alpha-16:st| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:75| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$knormal:38| Int) (|$knormal:34| Int) (|$knormal:32| Bool) (|$alpha-22:b3| Int) (|$cond-alpha-rename:6| Bool) (|$cond-alpha-rename:5| Int) )
    (=>
      ( and (or (and |$cond-alpha-rename:6| (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= |$cond-alpha-rename:6| (> |$cond-alpha-rename:5| 0))))) (and (not |$cond-alpha-rename:6|) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= |$cond-alpha-rename:6| (> |$cond-alpha-rename:5| 0)))))) (= |$knormal:34| 0) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$V-reftype:75| |$knormal:38|) (not |$knormal:32|) (|f$unknown:9| |$knormal:38| |$alpha-24:st| |$knormal:34| |$alpha-23:x|) )
      (|g$unknown:13| |$V-reftype:75| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:42| Bool) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:36| Bool) (|$alpha-24:st| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:31| Int) (|$cond-alpha-rename:43| Bool) (|$V-reftype:73| Int) (|$alpha-23:x| Int) (|$knormal:39| Int) (|$knormal:46| Int) (|$knormal:41| Int) (|$knormal:32| Bool) (|$alpha-22:b3| Int) (|$cond-alpha-rename:37| Bool) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:8| Bool) (|$cond-alpha-rename:7| Int) )
    (=>
      ( and (or (and |$cond-alpha-rename:8| (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= |$cond-alpha-rename:8| (> |$cond-alpha-rename:7| 0))))) (and (not |$cond-alpha-rename:8|) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= |$cond-alpha-rename:8| (> |$cond-alpha-rename:7| 0)))))) (or (and |$cond-alpha-rename:37| (and |$cond-alpha-rename:43| (and (= |$cond-alpha-rename:30| 1) (and (= |$cond-alpha-rename:31| 0) (and (= |$cond-alpha-rename:37| (> |$cond-alpha-rename:33| 0)) (and (= |$cond-alpha-rename:43| (= |$alpha-24:st| |$cond-alpha-rename:31|)) (and (= |$knormal:39| |$cond-alpha-rename:30|) (or (and |$cond-alpha-rename:36| (and (= |$alpha-24:st| 1) (and (= |$cond-alpha-rename:34| 1) (= |$cond-alpha-rename:36| (> |$cond-alpha-rename:35| 0))))) (and (not |$cond-alpha-rename:36|) (and (= |$alpha-24:st| 0) (and (= |$cond-alpha-rename:34| 0) (= |$cond-alpha-rename:36| (> |$cond-alpha-rename:35| 0))))))))))))) (and |$cond-alpha-rename:42| (and (not |$cond-alpha-rename:43|) (and (= |$cond-alpha-rename:31| 0) (and (= |$cond-alpha-rename:32| 3) (and (= |$cond-alpha-rename:42| (> |$cond-alpha-rename:38| 0)) (and (= |$cond-alpha-rename:43| (= |$alpha-24:st| |$cond-alpha-rename:31|)) (and (= |$knormal:39| |$cond-alpha-rename:32|) (or (and |$cond-alpha-rename:41| (and (= |$alpha-24:st| 1) (and (= |$cond-alpha-rename:39| 1) (= |$cond-alpha-rename:41| (> |$cond-alpha-rename:40| 0))))) (and (not |$cond-alpha-rename:41|) (and (= |$alpha-24:st| 0) (and (= |$cond-alpha-rename:39| 0) (= |$cond-alpha-rename:41| (> |$cond-alpha-rename:40| 0)))))))))))))) (= |$knormal:41| 1) (= |$knormal:32| (> |$alpha-22:b3| 0)) (= |$V-reftype:73| |$knormal:46|) |$knormal:32| (|f$unknown:9| |$knormal:46| |$knormal:39| |$knormal:41| |$alpha-23:x|) )
      (|g$unknown:13| |$V-reftype:73| |$alpha-24:st| |$alpha-23:x| |$alpha-22:b3|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:54| Int) (|$cond-alpha-rename:53| Int) (|$cond-alpha-rename:55| Bool) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:46| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:51| Bool) (|$cond-alpha-rename:9| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:10| Bool) (|$alpha-22:b3| Int) (|$knormal:32| Bool) (|$knormal:41| Int) (|$alpha-23:x| Int) (|$cond-alpha-rename:57| Bool) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:47| Int) (|$knormal:39| Int) (|$cond-alpha-rename:50| Bool) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) (|$cond-alpha-rename:56| Bool) )
    (=>
      ( and (or (and |$cond-alpha-rename:51| (and |$cond-alpha-rename:57| (and (= |$cond-alpha-rename:44| 1) (and (= |$cond-alpha-rename:45| 0) (and (= |$cond-alpha-rename:51| (> |$cond-alpha-rename:47| 0)) (and (= |$cond-alpha-rename:57| (= |$alpha-24:st| |$cond-alpha-rename:45|)) (and (= |$knormal:39| |$cond-alpha-rename:44|) (or (and |$cond-alpha-rename:50| (and (= |$alpha-24:st| 1) (and (= |$cond-alpha-rename:48| 1) (= |$cond-alpha-rename:50| (> |$cond-alpha-rename:49| 0))))) (and (not |$cond-alpha-rename:50|) (and (= |$alpha-24:st| 0) (and (= |$cond-alpha-rename:48| 0) (= |$cond-alpha-rename:50| (> |$cond-alpha-rename:49| 0))))))))))))) (and |$cond-alpha-rename:56| (and (not |$cond-alpha-rename:57|) (and (= |$cond-alpha-rename:45| 0) (and (= |$cond-alpha-rename:46| 3) (and (= |$cond-alpha-rename:56| (> |$cond-alpha-rename:52| 0)) (and (= |$cond-alpha-rename:57| (= |$alpha-24:st| |$cond-alpha-rename:45|)) (and (= |$knormal:39| |$cond-alpha-rename:46|) (or (and |$cond-alpha-rename:55| (and (= |$alpha-24:st| 1) (and (= |$cond-alpha-rename:53| 1) (= |$cond-alpha-rename:55| (> |$cond-alpha-rename:54| 0))))) (and (not |$cond-alpha-rename:55|) (and (= |$alpha-24:st| 0) (and (= |$cond-alpha-rename:53| 0) (= |$cond-alpha-rename:55| (> |$cond-alpha-rename:54| 0)))))))))))))) (or (and |$cond-alpha-rename:10| (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= |$cond-alpha-rename:10| (> |$cond-alpha-rename:9| 0))))) (and (not |$cond-alpha-rename:10|) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= |$cond-alpha-rename:10| (> |$cond-alpha-rename:9| 0)))))) (= |$knormal:41| 1) (= |$knormal:32| (> |$alpha-22:b3| 0)) |$knormal:32| )
      (|f$unknown:8| |$knormal:39| |$knormal:41| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:13| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:14| Bool) (|$alpha-22:b3| Int) (|$knormal:32| Bool) (|$knormal:34| Int) (|$alpha-23:x| Int) )
    (=>
      ( and (or (and |$cond-alpha-rename:14| (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= |$cond-alpha-rename:14| (> |$cond-alpha-rename:13| 0))))) (and (not |$cond-alpha-rename:14|) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= |$cond-alpha-rename:14| (> |$cond-alpha-rename:13| 0)))))) (= |$knormal:34| 0) (= |$knormal:32| (> |$alpha-22:b3| 0)) (not |$knormal:32|) )
      (|f$unknown:8| |$alpha-24:st| |$knormal:34| |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$knormal:2| Int) (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:43| |$knormal:2|) (|loop$unknown:15| |$knormal:2| |$knormal:1|) (|loop$unknown:14| |$alpha-1:x|) )
      (|loop$unknown:15| |$V-reftype:43| |$alpha-1:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:x| Int) (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) (|loop$unknown:14| |$alpha-1:x|) )
      (|loop$unknown:14| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$knormal:5| Int) )
    (=>
      ( and (= |$V-reftype:51| |$knormal:5|) (not (= |$alpha-5:x| 0)) (|readit$unknown:22| |$knormal:5| |$alpha-6:st|) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) true )
      (|read_$unknown:20| |$V-reftype:51| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:52| Int) (|$alpha-5:x| Int) (|$alpha-6:st| Int) )
    (=>
      ( and (= |$V-reftype:52| |$alpha-6:st|) (= |$alpha-5:x| 0) (|read_$unknown:19| |$alpha-6:st| |$alpha-5:x|) true )
      (|read_$unknown:20| |$V-reftype:52| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:opened| Int) (|$knormal:3| Bool) (|$cond-alpha-rename:27| Int) (|$alpha-2:st| Int) (|$V-reftype:47| Int) )
    (=>
      ( and (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-3:opened| 1) (= |$V-reftype:47| |$alpha-3:opened|) |$knormal:3| (not (= |$cond-alpha-rename:27| 0)) (|read_$unknown:19| |$alpha-2:st| |$cond-alpha-rename:27|) )
      (|readit$unknown:22| |$V-reftype:47| |$alpha-2:st|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:ignore| Int) (|$knormal:3| Bool) (|$alpha-2:st| Int) (|$cond-alpha-rename:28| Int) (|$knormal:4| Bool) (|$V-reftype:49| Int) (|$alpha-3:opened| Int) )
    (=>
      ( and (= |$knormal:4| (= |$alpha-2:st| |$alpha-4:ignore|)) (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-4:ignore| 3) (= |$alpha-3:opened| 1) (= |$V-reftype:49| |$alpha-2:st|) (not |$knormal:3|) |$knormal:4| (not (= |$cond-alpha-rename:28| 0)) (|read_$unknown:19| |$alpha-2:st| |$cond-alpha-rename:28|) )
      (|readit$unknown:22| |$V-reftype:49| |$alpha-2:st|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:ignore| Int) (|$knormal:4| Bool) (|$alpha-2:st| Int) (|$cond-alpha-rename:29| Int) (|$knormal:3| Bool) (|$alpha-3:opened| Int) )
    ( and (= |$knormal:4| (= |$alpha-2:st| |$alpha-4:ignore|)) (= |$knormal:3| (= |$alpha-2:st| |$alpha-3:opened|)) (= |$alpha-4:ignore| 3) (= |$alpha-3:opened| 1) (not |$knormal:4|) (not |$knormal:3|) (not (= |$cond-alpha-rename:29| 0)) (|read_$unknown:19| |$alpha-2:st| |$cond-alpha-rename:29|) )
    )
  )
)
(check-sat)

(get-model)

