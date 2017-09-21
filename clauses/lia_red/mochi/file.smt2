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

(declare-fun |read_$unknown:20|
  ( Int Int Int ) Bool
)

(declare-fun |loop$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:9|
  ( Int Int Int Int ) Bool
)

(declare-fun |f$unknown:8|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:668| Int) (|$cond-alpha-rename:681| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:681| 1) (|loop$unknown:15| |$cond-alpha-rename:668| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$cond-alpha-rename:668| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:668| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 1 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$cond-alpha-rename:668| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:668| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 3 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:694| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (= 0 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:694| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (= 2 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 1 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 3 1)) (= 3 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 3 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:707| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (= 0 1)) (= 0 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:707| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 2 1)) (= 2 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 1 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (= 3 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 3 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:720| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:720| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 1 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 3 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:733| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:733| 1) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 1 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| 3 |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) (|$knormal:23| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-15:y|))) (not (not (= 0 |$alpha-14:x|))) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:9| |$knormal:23| |$knormal:17| |$alpha-15:y| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:9| |$knormal:23| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:746| Int) (|$cond-alpha-rename:759| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:759| 1) (|loop$unknown:15| |$cond-alpha-rename:746| 1) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$cond-alpha-rename:746| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:746| 1) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$cond-alpha-rename:746| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:746| 1) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:772| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (= 0 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:772| 1) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (= 2 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 3 1)) (= 3 1) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:785| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (= 0 1)) (= 0 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:785| 1) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 2 1)) (= 2 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (= 3 3) (not (= 0 |$alpha-15:y|)) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:798| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:798| 1) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-14:x|))) (not (= 0 |$alpha-15:y|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$cond-alpha-rename:811| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= |$alpha-16:st| 3)) (not (= |$alpha-16:st| 1)) (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|loop$unknown:15| |$cond-alpha-rename:811| 1) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 1 |$alpha-14:x|) (|f$unknown:8| 1 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-15:y|))) (not (= 0 |$alpha-14:x|)) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| 3 |$alpha-14:x|) (|f$unknown:8| 3 |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x| Int) (|$alpha-15:y| Int) (|$alpha-16:st| Int) (|$knormal:13| Int) (|$knormal:17| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-15:y|))) (not (not (= 0 |$alpha-14:x|))) (|read_$unknown:20| |$knormal:17| |$knormal:13| |$alpha-15:y|) (|read_$unknown:20| |$knormal:13| |$alpha-16:st| |$alpha-14:x|) (|f$unknown:8| |$alpha-16:st| |$alpha-15:y| |$alpha-14:x|) )
      (|f$unknown:8| |$knormal:17| |$alpha-15:y| |$alpha-14:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:5| Int) (|$cond-alpha-rename:6| Int) (|$knormal:39| Int) )
    (=>
      ( and (or (and (not (= 0 |$cond-alpha-rename:6|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:6|)) (> |$cond-alpha-rename:5| 0))))) (and (not (not (= 0 |$cond-alpha-rename:6|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:6|)) (> |$cond-alpha-rename:5| 0)))))) (or (and (not (= 0 |$cond-alpha-rename:35|)) (and (= |$cond-alpha-rename:32| 1) (and (= |$cond-alpha-rename:33| 0) (and (= (not (= 0 |$cond-alpha-rename:35|)) (= |$alpha-24:st| |$cond-alpha-rename:33|)) (= |$knormal:39| |$cond-alpha-rename:32|))))) (and (not (not (= 0 |$cond-alpha-rename:35|))) (and (= |$cond-alpha-rename:33| 0) (and (= |$cond-alpha-rename:34| 3) (and (= (not (= 0 |$cond-alpha-rename:35|)) (= |$alpha-24:st| |$cond-alpha-rename:33|)) (= |$knormal:39| |$cond-alpha-rename:34|)))))) (> |$alpha-22:b3| 0) )
      (|f$unknown:8| |$knormal:39| 1 |$alpha-23:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-22:b3| Int) (|$alpha-23:x| Int) (|$alpha-24:st| Int) (|$cond-alpha-rename:7| Int) (|$cond-alpha-rename:8| Int) )
    (=>
      ( and (not (> |$alpha-22:b3| 0)) (or (and (not (= 0 |$cond-alpha-rename:8|)) (and (= |$alpha-23:x| 1) (and (= |$alpha-24:st| 1) (= (not (= 0 |$cond-alpha-rename:8|)) (> |$cond-alpha-rename:7| 0))))) (and (not (not (= 0 |$cond-alpha-rename:8|))) (and (= |$alpha-23:x| 0) (and (= |$alpha-24:st| 0) (= (not (= 0 |$cond-alpha-rename:8|)) (> |$cond-alpha-rename:7| 0)))))) )
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
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) (|$cond-alpha-rename:876| Int) (|$cond-alpha-rename:993| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:993| 1) (|loop$unknown:15| |$cond-alpha-rename:876| 1) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) (|$cond-alpha-rename:876| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:876| 1) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) (|$cond-alpha-rename:876| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:876| 1) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1006| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1006| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1019| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1019| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:837| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:837| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1032| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:889| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:889| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1032| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:889| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:889| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:889| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:889| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1045| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1045| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1058| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1058| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1071| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:902| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:902| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1071| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:902| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:902| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) (|$cond-alpha-rename:902| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:902| 1) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1084| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1084| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1097| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|loop$unknown:15| |$cond-alpha-rename:1097| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:824| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:824| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1110| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) (|$cond-alpha-rename:915| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:915| 1) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|loop$unknown:15| |$cond-alpha-rename:1110| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) (|$cond-alpha-rename:915| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:915| 1) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) (|$cond-alpha-rename:915| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:915| 1) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1123| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|loop$unknown:15| |$cond-alpha-rename:1123| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (= 1 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1136| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|loop$unknown:15| |$cond-alpha-rename:1136| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:850| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (= 1 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:850| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1149| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:928| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:928| 1) (|loop$unknown:15| |$cond-alpha-rename:1149| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:928| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:928| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:928| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:928| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:1162| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1162| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (= 1 1) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 2 1)) (= 1 1) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1175| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1175| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (= 1 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1188| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:941| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:941| 1) (|loop$unknown:15| |$cond-alpha-rename:1188| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:941| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:941| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:941| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (not (= 0 1)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:941| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1201| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1201| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 2 1)) (= 1 1) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 1)) (= 1 1) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1214| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1214| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (= 1 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (not (= 1 1)) (= 1 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1227| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) (|$cond-alpha-rename:954| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:954| 1) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|loop$unknown:15| |$cond-alpha-rename:1227| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) (|$cond-alpha-rename:954| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:954| 1) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) (|$cond-alpha-rename:954| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 1)) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:954| 1) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1240| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|loop$unknown:15| |$cond-alpha-rename:1240| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 2 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1253| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|loop$unknown:15| |$cond-alpha-rename:1253| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:863| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:863| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1266| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:967| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:967| 1) (|loop$unknown:15| |$cond-alpha-rename:1266| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:967| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:967| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:967| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 1)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:967| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1279| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1279| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (= 1 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (= 1 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1292| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1292| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1305| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:980| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:980| 1) (|loop$unknown:15| |$cond-alpha-rename:1305| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:980| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:980| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:980| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 1)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:980| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1318| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (= 1 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1318| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (= 1 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 2 1)) (= 1 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1331| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (= 1 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1331| 1) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:329| Int) (|$cond-alpha-rename:334| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (= 1 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:334|)) (not (= 0 |$cond-alpha-rename:329|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:329| |$cond-alpha-rename:334|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1344| Int) (|$cond-alpha-rename:1357| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1357| 1) (|loop$unknown:15| |$cond-alpha-rename:1344| 1) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1344| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1344| 1) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1344| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1344| 1) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1370| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1370| 1) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 0 |$cond-alpha-rename:340|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1383| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1383| 1) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:340| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:340|))) (not (not (= 0 |$cond-alpha-rename:337|))) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:340|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:337| |$cond-alpha-rename:340|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1448| Int) (|$cond-alpha-rename:1565| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1565| 1) (|loop$unknown:15| |$cond-alpha-rename:1448| 1) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1448| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1448| 1) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1448| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1448| 1) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1578| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1578| 1) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:1591| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1591| 1) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1409| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1409| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1461| Int) (|$cond-alpha-rename:1604| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1604| 1) (|loop$unknown:15| |$cond-alpha-rename:1461| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1461| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1461| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1461| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1461| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1617| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1617| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1630| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1630| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1474| Int) (|$cond-alpha-rename:1643| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1643| 1) (|loop$unknown:15| |$cond-alpha-rename:1474| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1474| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1474| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1474| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1474| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1656| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1656| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:1669| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1669| 1) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1396| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:344| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:344| 3)) (not (= |$cond-alpha-rename:344| 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:344| |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1396| 1) (|f$unknown:8| |$cond-alpha-rename:344| |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:1487| Int) (|$cond-alpha-rename:1682| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1682| 1) (|loop$unknown:15| |$cond-alpha-rename:1487| 1) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:1487| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1487| 1) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:1487| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1487| 1) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:1695| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1695| 1) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:1708| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1708| 1) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1422| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1422| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1500| Int) (|$cond-alpha-rename:1721| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1721| 1) (|loop$unknown:15| |$cond-alpha-rename:1500| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1500| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1500| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1500| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1500| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1734| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1734| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1747| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1747| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1513| Int) (|$cond-alpha-rename:1760| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1760| 1) (|loop$unknown:15| |$cond-alpha-rename:1513| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1513| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1513| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1513| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1513| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1773| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1773| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1786| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1786| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1526| Int) (|$cond-alpha-rename:1799| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1799| 1) (|loop$unknown:15| |$cond-alpha-rename:1526| 1) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1526| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1526| 1) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1526| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1526| 1) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1812| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1812| 1) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:1825| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1825| 1) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1435| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1435| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1539| Int) (|$cond-alpha-rename:1838| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1838| 1) (|loop$unknown:15| |$cond-alpha-rename:1539| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1539| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1539| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1539| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1539| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1851| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1851| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1864| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1864| 1) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1552| Int) (|$cond-alpha-rename:1877| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1877| 1) (|loop$unknown:15| |$cond-alpha-rename:1552| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1552| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1552| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1552| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 0 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1552| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1890| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1890| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 1) (= 1 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 2 3) (= 1 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1903| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|loop$unknown:15| |$cond-alpha-rename:1903| 1) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 1) (= 1 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:343| Int) (|$cond-alpha-rename:349| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:349|)) (not (= 0 |$cond-alpha-rename:343|)) (= 1 3) (= 1 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:343|) (|f$unknown:8| 3 |$cond-alpha-rename:349| |$cond-alpha-rename:343|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1916| Int) (|$cond-alpha-rename:1929| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|loop$unknown:15| |$cond-alpha-rename:1929| 1) (|loop$unknown:15| |$cond-alpha-rename:1916| 1) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1916| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|loop$unknown:15| |$cond-alpha-rename:1916| 1) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1916| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|loop$unknown:15| |$cond-alpha-rename:1916| 1) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1942| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|loop$unknown:15| |$cond-alpha-rename:1942| 1) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 0 |$cond-alpha-rename:356|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1955| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|loop$unknown:15| |$cond-alpha-rename:1955| 1) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:352| Int) (|$cond-alpha-rename:353| Int) (|$cond-alpha-rename:356| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:356|))) (not (not (= 0 |$cond-alpha-rename:352|))) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:356|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:353| |$cond-alpha-rename:352|) (|f$unknown:8| |$cond-alpha-rename:353| |$cond-alpha-rename:356| |$cond-alpha-rename:352|) (|f$unknown:8| 1 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:2020| Int) (|$cond-alpha-rename:2137| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2137| 1) (|loop$unknown:15| |$cond-alpha-rename:2020| 1) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:2020| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2020| 1) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:2020| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2020| 1) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:2150| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2150| 1) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:2163| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2163| 1) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:1981| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1981| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2033| Int) (|$cond-alpha-rename:2176| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2176| 1) (|loop$unknown:15| |$cond-alpha-rename:2033| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2033| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2033| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2033| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2033| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2189| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2189| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2202| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2202| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2046| Int) (|$cond-alpha-rename:2215| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2215| 1) (|loop$unknown:15| |$cond-alpha-rename:2046| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2046| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2046| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2046| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2046| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2228| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2228| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:2241| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2241| 1) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1968| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1968| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:2059| Int) (|$cond-alpha-rename:2254| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2254| 1) (|loop$unknown:15| |$cond-alpha-rename:2059| 1) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:2059| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2059| 1) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:2059| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2059| 1) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:2267| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2267| 1) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:2280| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2280| 1) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:1994| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:1994| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2072| Int) (|$cond-alpha-rename:2293| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2293| 1) (|loop$unknown:15| |$cond-alpha-rename:2072| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2072| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2072| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2072| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2072| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2306| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2306| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2319| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2319| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2085| Int) (|$cond-alpha-rename:2332| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2332| 1) (|loop$unknown:15| |$cond-alpha-rename:2085| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2085| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2085| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2085| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2085| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2345| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2345| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2358| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2358| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2098| Int) (|$cond-alpha-rename:2371| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2371| 1) (|loop$unknown:15| |$cond-alpha-rename:2098| 1) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2098| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2098| 1) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2098| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2098| 1) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2384| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2384| 1) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:2397| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2397| 1) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2007| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2007| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2111| Int) (|$cond-alpha-rename:2410| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2410| 1) (|loop$unknown:15| |$cond-alpha-rename:2111| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2111| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2111| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2111| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2111| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2423| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2423| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2436| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2436| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2124| Int) (|$cond-alpha-rename:2449| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2449| 1) (|loop$unknown:15| |$cond-alpha-rename:2124| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2124| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2124| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2124| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 0 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2124| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2462| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2462| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 1) (= 3 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 2 3) (= 3 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2475| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2475| 1) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 1) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:360| Int) (|$cond-alpha-rename:365| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:365|)) (not (= 0 |$cond-alpha-rename:360|)) (= 3 3) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:360| |$cond-alpha-rename:365|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2488| Int) (|$cond-alpha-rename:2501| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2501| 1) (|loop$unknown:15| |$cond-alpha-rename:2488| 1) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2488| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2488| 1) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2488| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2488| 1) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2514| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2514| 1) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 0 |$cond-alpha-rename:373|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2527| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:2527| 1) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:370| Int) (|$cond-alpha-rename:373| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:373|))) (not (not (= 0 |$cond-alpha-rename:370|))) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:373|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:370| |$cond-alpha-rename:373|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2592| Int) (|$cond-alpha-rename:2709| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2709| 1) (|loop$unknown:15| |$cond-alpha-rename:2592| 1) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2592| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2592| 1) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2592| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2592| 1) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2722| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2722| 1) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:2735| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2735| 1) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2553| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2553| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2605| Int) (|$cond-alpha-rename:2748| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2748| 1) (|loop$unknown:15| |$cond-alpha-rename:2605| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2605| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2605| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2605| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2605| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2761| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2761| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2774| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2774| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2618| Int) (|$cond-alpha-rename:2787| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2787| 1) (|loop$unknown:15| |$cond-alpha-rename:2618| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2618| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2618| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2618| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2618| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2800| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2800| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:2813| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2813| 1) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2540| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:379| 3)) (not (= |$cond-alpha-rename:379| 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:379| |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2540| 1) (|f$unknown:8| |$cond-alpha-rename:379| |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2631| Int) (|$cond-alpha-rename:2826| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2826| 1) (|loop$unknown:15| |$cond-alpha-rename:2631| 1) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2631| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2631| 1) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2631| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2631| 1) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2839| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2839| 1) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:2852| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2852| 1) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2566| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2566| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2644| Int) (|$cond-alpha-rename:2865| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2865| 1) (|loop$unknown:15| |$cond-alpha-rename:2644| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2644| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2644| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2644| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2644| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2878| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2878| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2891| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2891| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 2 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2657| Int) (|$cond-alpha-rename:2904| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2904| 1) (|loop$unknown:15| |$cond-alpha-rename:2657| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2657| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2657| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2657| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2657| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2917| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2917| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2930| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2930| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 2 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2670| Int) (|$cond-alpha-rename:2943| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2943| 1) (|loop$unknown:15| |$cond-alpha-rename:2670| 1) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2670| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2670| 1) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2670| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2670| 1) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2956| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2956| 1) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:2969| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2969| 1) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2579| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2579| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2683| Int) (|$cond-alpha-rename:2982| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2982| 1) (|loop$unknown:15| |$cond-alpha-rename:2683| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2683| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2683| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2683| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2683| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2995| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2995| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3008| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:3008| 1) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 1 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:378|) (|f$unknown:8| 1 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2696| Int) (|$cond-alpha-rename:3021| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:3021| 1) (|loop$unknown:15| |$cond-alpha-rename:2696| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2696| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2696| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:2696| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 0 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:2696| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3034| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:3034| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 2 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3047| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|loop$unknown:15| |$cond-alpha-rename:3047| 1) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:384| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:384|)) (not (= 0 |$cond-alpha-rename:378|)) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:384| |$cond-alpha-rename:378|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3060| Int) (|$cond-alpha-rename:3073| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|loop$unknown:15| |$cond-alpha-rename:3073| 1) (|loop$unknown:15| |$cond-alpha-rename:3060| 1) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3060| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 0 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|loop$unknown:15| |$cond-alpha-rename:3060| 1) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3060| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 0 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|loop$unknown:15| |$cond-alpha-rename:3060| 1) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3086| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|loop$unknown:15| |$cond-alpha-rename:3086| 1) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 0 |$cond-alpha-rename:393|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:3099| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|loop$unknown:15| |$cond-alpha-rename:3099| 1) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:389| Int) (|$cond-alpha-rename:390| Int) (|$cond-alpha-rename:393| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:393|))) (not (not (= 0 |$cond-alpha-rename:389|))) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:393|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:117|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:390| |$cond-alpha-rename:389|) (|f$unknown:8| |$cond-alpha-rename:390| |$cond-alpha-rename:393| |$cond-alpha-rename:389|) (|f$unknown:8| 3 |$cond-alpha-rename:117| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3112| Int) (|$cond-alpha-rename:3125| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3125| 1) (|loop$unknown:15| |$cond-alpha-rename:3112| 1) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3112| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3112| 1) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3112| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3112| 1) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3138| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 1 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3138| 1) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 2 1) (= 1 1) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 2 3) (= 1 1) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3151| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3151| 1) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 1 1) (= 1 3) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:397| Int) (|$cond-alpha-rename:402| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:402|)) (not (= 0 |$cond-alpha-rename:397|)) (= 1 3) (= 1 3) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:397| |$cond-alpha-rename:402|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:405| Int) (|$cond-alpha-rename:408| Int) )
    (=>
      ( and (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) (|f$unknown:8| 1 |$cond-alpha-rename:405| |$cond-alpha-rename:408|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:408|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$cond-alpha-rename:405|))) (not (not (= 0 |$cond-alpha-rename:408|))) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3164| Int) (|$cond-alpha-rename:3177| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:412| 3)) (not (= |$cond-alpha-rename:412| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:412| |$cond-alpha-rename:411|) (|loop$unknown:15| |$cond-alpha-rename:3177| 1) (|loop$unknown:15| |$cond-alpha-rename:3164| 1) (|f$unknown:8| |$cond-alpha-rename:412| |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3164| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:412| 3)) (not (= |$cond-alpha-rename:412| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:412| |$cond-alpha-rename:411|) (|loop$unknown:15| |$cond-alpha-rename:3164| 1) (|f$unknown:8| |$cond-alpha-rename:412| |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3164| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:412| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:412| 3)) (not (= |$cond-alpha-rename:412| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:412| |$cond-alpha-rename:411|) (|loop$unknown:15| |$cond-alpha-rename:3164| 1) (|f$unknown:8| |$cond-alpha-rename:412| |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3190| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:411|) (|loop$unknown:15| |$cond-alpha-rename:3190| 1) (|f$unknown:8| 1 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3203| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:411|) (|loop$unknown:15| |$cond-alpha-rename:3203| 1) (|f$unknown:8| 3 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:411| Int) (|$cond-alpha-rename:417| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:417|)) (not (= 0 |$cond-alpha-rename:411|)) (= 3 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:411|) (|f$unknown:8| 3 |$cond-alpha-rename:417| |$cond-alpha-rename:411|) (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:420| Int) (|$cond-alpha-rename:421| Int) (|$cond-alpha-rename:424| Int) )
    (=>
      ( and (|f$unknown:8| 1 |$cond-alpha-rename:122| |$alpha-5:x|) (|f$unknown:8| |$cond-alpha-rename:421| |$cond-alpha-rename:424| |$cond-alpha-rename:420|) (|read_$unknown:20| 1 |$cond-alpha-rename:421| |$cond-alpha-rename:420|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:424|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$cond-alpha-rename:420|))) (not (not (= 0 |$cond-alpha-rename:424|))) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3216| Int) (|$cond-alpha-rename:3229| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3229| 1) (|loop$unknown:15| |$cond-alpha-rename:3216| 1) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3216| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3216| 1) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3216| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3216| 1) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3242| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 3 1) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3242| 1) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 2 1) (= 3 1) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 2 3) (= 3 1) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3255| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 3 3) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:3255| 1) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 3 1) (= 3 3) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:428| Int) (|$cond-alpha-rename:433| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:433|)) (not (= 0 |$cond-alpha-rename:428|)) (= 3 3) (= 3 3) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:428| |$cond-alpha-rename:433|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:438| Int) (|$cond-alpha-rename:441| Int) )
    (=>
      ( and (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) (|f$unknown:8| 3 |$cond-alpha-rename:438| |$cond-alpha-rename:441|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:441|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$cond-alpha-rename:438|))) (not (not (= 0 |$cond-alpha-rename:441|))) (not (= 3 1)) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3268| Int) (|$cond-alpha-rename:3281| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:447| 3)) (not (= |$cond-alpha-rename:447| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:447| |$cond-alpha-rename:446|) (|loop$unknown:15| |$cond-alpha-rename:3281| 1) (|loop$unknown:15| |$cond-alpha-rename:3268| 1) (|f$unknown:8| |$cond-alpha-rename:447| |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3268| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:447| 3)) (not (= |$cond-alpha-rename:447| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:447| |$cond-alpha-rename:446|) (|loop$unknown:15| |$cond-alpha-rename:3268| 1) (|f$unknown:8| |$cond-alpha-rename:447| |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3268| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:447| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:447| 3)) (not (= |$cond-alpha-rename:447| 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:447| |$cond-alpha-rename:446|) (|loop$unknown:15| |$cond-alpha-rename:3268| 1) (|f$unknown:8| |$cond-alpha-rename:447| |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3294| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:446|) (|loop$unknown:15| |$cond-alpha-rename:3294| 1) (|f$unknown:8| 1 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:446|) (|f$unknown:8| 1 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:446|) (|f$unknown:8| 1 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:3307| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:446|) (|loop$unknown:15| |$cond-alpha-rename:3307| 1) (|f$unknown:8| 3 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:446|) (|f$unknown:8| 1 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:446| Int) (|$cond-alpha-rename:452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:452|)) (not (= 0 |$cond-alpha-rename:446|)) (= 3 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:452| |$cond-alpha-rename:446|) (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:457| Int) (|$cond-alpha-rename:458| Int) (|$cond-alpha-rename:461| Int) )
    (=>
      ( and (|f$unknown:8| 3 |$cond-alpha-rename:122| |$alpha-5:x|) (|f$unknown:8| |$cond-alpha-rename:458| |$cond-alpha-rename:461| |$cond-alpha-rename:457|) (|read_$unknown:20| 3 |$cond-alpha-rename:458| |$cond-alpha-rename:457|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:461|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:122|))) (not (not (= 0 |$cond-alpha-rename:457|))) (not (not (= 0 |$cond-alpha-rename:461|))) (not (= 3 1)) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:3372| Int) (|$cond-alpha-rename:3489| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3489| 1) (|loop$unknown:15| |$cond-alpha-rename:3372| 1) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:3372| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3372| 1) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:3372| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3372| 1) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:3502| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3502| 1) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:3515| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3515| 1) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3333| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3333| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3385| Int) (|$cond-alpha-rename:3528| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3528| 1) (|loop$unknown:15| |$cond-alpha-rename:3385| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3385| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3385| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3385| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3385| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3541| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3541| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3554| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3554| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3398| Int) (|$cond-alpha-rename:3567| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3567| 1) (|loop$unknown:15| |$cond-alpha-rename:3398| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3398| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3398| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3398| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3398| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3580| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3580| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:3593| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3593| 1) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3320| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3320| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:3411| Int) (|$cond-alpha-rename:3606| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3606| 1) (|loop$unknown:15| |$cond-alpha-rename:3411| 1) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:3411| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3411| 1) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:3411| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3411| 1) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:3619| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3619| 1) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:3632| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3632| 1) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3346| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3346| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3424| Int) (|$cond-alpha-rename:3645| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3645| 1) (|loop$unknown:15| |$cond-alpha-rename:3424| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3424| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3424| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3424| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3424| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3658| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3658| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3671| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3671| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3437| Int) (|$cond-alpha-rename:3684| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3684| 1) (|loop$unknown:15| |$cond-alpha-rename:3437| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3437| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3437| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3437| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3437| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3697| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3697| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3710| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3710| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:3450| Int) (|$cond-alpha-rename:3723| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3723| 1) (|loop$unknown:15| |$cond-alpha-rename:3450| 1) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:3450| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3450| 1) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:3450| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3450| 1) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:3736| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3736| 1) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:3749| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3749| 1) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3359| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3359| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3463| Int) (|$cond-alpha-rename:3762| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3762| 1) (|loop$unknown:15| |$cond-alpha-rename:3463| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3463| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3463| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3463| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3463| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3775| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3775| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3788| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3788| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3476| Int) (|$cond-alpha-rename:3801| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3801| 1) (|loop$unknown:15| |$cond-alpha-rename:3476| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3476| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3476| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3476| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 0 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3476| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3814| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3814| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 1) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 2 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3827| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3827| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 1 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:465| Int) (|$cond-alpha-rename:470| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:470|)) (not (= 0 |$cond-alpha-rename:465|)) (= 3 3) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:465| |$cond-alpha-rename:470|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3840| Int) (|$cond-alpha-rename:3853| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:476|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3853| 1) (|loop$unknown:15| |$cond-alpha-rename:3840| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3840| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:476|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3840| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3840| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:476|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3840| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3866| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:476|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3866| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 0 |$cond-alpha-rename:476|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:476|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3879| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:476|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3879| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:476|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:473| Int) (|$cond-alpha-rename:476| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:476|))) (not (not (= 0 |$cond-alpha-rename:473|))) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:476|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:473| |$cond-alpha-rename:476|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:3944| Int) (|$cond-alpha-rename:4061| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4061| 1) (|loop$unknown:15| |$cond-alpha-rename:3944| 1) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:3944| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3944| 1) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:3944| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3944| 1) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:4074| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4074| 1) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:4087| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4087| 1) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3905| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3905| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3957| Int) (|$cond-alpha-rename:4100| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4100| 1) (|loop$unknown:15| |$cond-alpha-rename:3957| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3957| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3957| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3957| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3957| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:4113| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4113| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:4126| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4126| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3970| Int) (|$cond-alpha-rename:4139| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4139| 1) (|loop$unknown:15| |$cond-alpha-rename:3970| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3970| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3970| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:3970| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3970| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:4152| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4152| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:4165| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4165| 1) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3892| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:480| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:480| 3)) (not (= |$cond-alpha-rename:480| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:480| |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3892| 1) (|f$unknown:8| |$cond-alpha-rename:480| |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:3983| Int) (|$cond-alpha-rename:4178| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4178| 1) (|loop$unknown:15| |$cond-alpha-rename:3983| 1) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:3983| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3983| 1) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:3983| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3983| 1) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:4191| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4191| 1) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:4204| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4204| 1) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3918| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3918| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3996| Int) (|$cond-alpha-rename:4217| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4217| 1) (|loop$unknown:15| |$cond-alpha-rename:3996| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3996| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3996| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3996| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3996| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4230| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4230| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4243| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4243| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4009| Int) (|$cond-alpha-rename:4256| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4256| 1) (|loop$unknown:15| |$cond-alpha-rename:4009| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4009| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4009| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4009| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4009| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4269| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4269| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4282| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4282| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:4022| Int) (|$cond-alpha-rename:4295| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4295| 1) (|loop$unknown:15| |$cond-alpha-rename:4022| 1) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:4022| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4022| 1) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:4022| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4022| 1) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:4308| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4308| 1) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:4321| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4321| 1) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:3931| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:3931| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4035| Int) (|$cond-alpha-rename:4334| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4334| 1) (|loop$unknown:15| |$cond-alpha-rename:4035| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4035| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4035| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4035| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4035| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4347| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4347| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4360| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4360| 1) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4048| Int) (|$cond-alpha-rename:4373| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4373| 1) (|loop$unknown:15| |$cond-alpha-rename:4048| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4048| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4048| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4048| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 0 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4048| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4386| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4386| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 2 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4399| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4399| 1) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 1 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:479| Int) (|$cond-alpha-rename:485| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:485|)) (not (= 0 |$cond-alpha-rename:479|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:479|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:485| |$cond-alpha-rename:479|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4412| Int) (|$cond-alpha-rename:4425| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:492|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4425| 1) (|loop$unknown:15| |$cond-alpha-rename:4412| 1) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4412| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:492|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4412| 1) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4412| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:492|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4412| 1) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4438| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:492|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4438| 1) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 0 |$cond-alpha-rename:492|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:492|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4451| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:492|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4451| 1) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:492|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:488| Int) (|$cond-alpha-rename:489| Int) (|$cond-alpha-rename:492| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:492|))) (not (not (= 0 |$cond-alpha-rename:488|))) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:492|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:489| |$cond-alpha-rename:488|) (|read_$unknown:20| 1 3 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:489| |$cond-alpha-rename:492| |$cond-alpha-rename:488|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:4516| Int) (|$cond-alpha-rename:4633| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4633| 1) (|loop$unknown:15| |$cond-alpha-rename:4516| 1) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:4516| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4516| 1) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:4516| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4516| 1) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:4646| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4646| 1) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:4659| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4659| 1) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4477| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4477| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4529| Int) (|$cond-alpha-rename:4672| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4672| 1) (|loop$unknown:15| |$cond-alpha-rename:4529| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4529| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4529| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4529| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4529| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4685| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4685| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4698| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4698| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4542| Int) (|$cond-alpha-rename:4711| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4711| 1) (|loop$unknown:15| |$cond-alpha-rename:4542| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4542| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4542| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4542| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4542| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4724| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4724| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:4737| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4737| 1) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4464| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4464| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:4555| Int) (|$cond-alpha-rename:4750| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4750| 1) (|loop$unknown:15| |$cond-alpha-rename:4555| 1) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:4555| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4555| 1) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:4555| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4555| 1) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:4763| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4763| 1) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:4776| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4776| 1) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4490| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4490| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4568| Int) (|$cond-alpha-rename:4789| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4789| 1) (|loop$unknown:15| |$cond-alpha-rename:4568| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4568| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4568| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4568| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4568| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4802| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4802| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4815| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4815| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4581| Int) (|$cond-alpha-rename:4828| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4828| 1) (|loop$unknown:15| |$cond-alpha-rename:4581| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4581| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4581| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4581| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4581| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4841| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4841| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4854| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4854| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:4594| Int) (|$cond-alpha-rename:4867| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4867| 1) (|loop$unknown:15| |$cond-alpha-rename:4594| 1) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:4594| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4594| 1) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:4594| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4594| 1) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:4880| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4880| 1) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:4893| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4893| 1) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4503| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4503| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4607| Int) (|$cond-alpha-rename:4906| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4906| 1) (|loop$unknown:15| |$cond-alpha-rename:4607| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4607| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4607| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4607| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4607| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4919| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4919| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 1) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 2 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4932| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4932| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4620| Int) (|$cond-alpha-rename:4945| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4945| 1) (|loop$unknown:15| |$cond-alpha-rename:4620| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4620| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 1) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4620| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4620| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 0 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4620| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:4958| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4958| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (= 2 1) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (= 2 3) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:4971| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4971| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 1 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:496| Int) (|$cond-alpha-rename:501| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:501|)) (not (= 0 |$cond-alpha-rename:496|)) (= 3 3) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:496| |$cond-alpha-rename:501|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4984| Int) (|$cond-alpha-rename:4997| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:509|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4997| 1) (|loop$unknown:15| |$cond-alpha-rename:4984| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4984| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:509|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4984| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:4984| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:509|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:4984| 1) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5010| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:509|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5010| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 0 |$cond-alpha-rename:509|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:509|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5023| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:509|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5023| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:509|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:506| Int) (|$cond-alpha-rename:509| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:509|))) (not (not (= 0 |$cond-alpha-rename:506|))) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:509|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:506| |$cond-alpha-rename:509|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:5088| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5205| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5205| 1) (|loop$unknown:15| |$cond-alpha-rename:5088| 1) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:5088| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5088| 1) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:5088| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5088| 1) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5218| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5218| 1) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5231| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5231| 1) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5049| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5049| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5101| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5244| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5244| 1) (|loop$unknown:15| |$cond-alpha-rename:5101| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5101| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5101| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5101| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5101| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5257| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5257| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5270| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5270| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (= 0 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5114| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5283| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5283| 1) (|loop$unknown:15| |$cond-alpha-rename:5114| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5114| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5114| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:5114| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5114| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5296| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5296| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5309| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5309| 1) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5036| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:515| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:515| 3)) (not (= |$cond-alpha-rename:515| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (= 0 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:515| |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5036| 1) (|f$unknown:8| |$cond-alpha-rename:515| |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:5127| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5322| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5322| 1) (|loop$unknown:15| |$cond-alpha-rename:5127| 1) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:5127| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5127| 1) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:5127| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 3)) (not (= 2 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5127| 1) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5335| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5335| 1) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 3)) (not (= 2 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5348| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5348| 1) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5062| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5062| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5140| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5361| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5361| 1) (|loop$unknown:15| |$cond-alpha-rename:5140| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5140| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5140| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5140| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5140| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5374| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5374| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5387| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5387| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 1 3) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 3 3) (not (= 0 |$cond-alpha-rename:514|)) (= 2 1) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5153| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5400| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5400| 1) (|loop$unknown:15| |$cond-alpha-rename:5153| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5153| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5153| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5153| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 2 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5153| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5413| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5413| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 2 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5426| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5426| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 1 3) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 3 3) (not (= 0 |$cond-alpha-rename:514|)) (= 2 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5166| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5439| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5439| 1) (|loop$unknown:15| |$cond-alpha-rename:5166| 1) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5166| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5166| 1) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5166| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5166| 1) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5452| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5452| 1) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5465| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5465| 1) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 1 3) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:5075| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 3 3) (not (= 0 |$cond-alpha-rename:514|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5075| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5179| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5478| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5478| 1) (|loop$unknown:15| |$cond-alpha-rename:5179| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5179| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5179| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5179| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 1 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5179| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5491| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5491| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 1 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5504| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5504| 1) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 1 3) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 1 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 3 3) (not (= 0 |$cond-alpha-rename:514|)) (= 1 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 1 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5192| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5517| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5517| 1) (|loop$unknown:15| |$cond-alpha-rename:5192| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5192| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5192| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:5192| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (= 3 1)) (not (= 3 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5192| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5530| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5530| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (= 3 1)) (not (= 3 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) (|$cond-alpha-rename:5543| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5543| 1) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 1 3) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:514| Int) (|$cond-alpha-rename:520| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:520|)) (= 3 3) (not (= 0 |$cond-alpha-rename:514|)) (= 3 3) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:514|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| 3 |$cond-alpha-rename:520| |$cond-alpha-rename:514|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:5556| Int) (|$cond-alpha-rename:5569| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5569| 1) (|loop$unknown:15| |$cond-alpha-rename:5556| 1) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:5556| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 0 1) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5556| 1) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:5556| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:126| 3)) (not (= |$cond-alpha-rename:126| 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 0 3) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 |$cond-alpha-rename:126| |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5556| 1) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| |$cond-alpha-rename:126| |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:5582| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5582| 1) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 2 1) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 2 3) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) (|$cond-alpha-rename:5595| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|loop$unknown:15| |$cond-alpha-rename:5595| 1) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 1 3) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 1 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:525| Int) (|$cond-alpha-rename:526| Int) (|$cond-alpha-rename:529| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:529|))) (not (not (= 0 |$cond-alpha-rename:525|))) (= 3 3) (not (= 0 |$cond-alpha-rename:529|)) (not (= 0 |$cond-alpha-rename:125|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:526| |$cond-alpha-rename:525|) (|read_$unknown:20| 3 3 |$cond-alpha-rename:125|) (|f$unknown:8| |$cond-alpha-rename:526| |$cond-alpha-rename:529| |$cond-alpha-rename:525|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:125|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:5608| Int) (|$cond-alpha-rename:5621| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5621| 1) (|loop$unknown:15| |$cond-alpha-rename:5608| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:5608| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 1) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5608| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:5608| Int) )
    (=>
      ( and (not (= 0 1)) (not (= 1 3)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 3) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5608| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:5634| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 1 1) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5634| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 1) (= 1 1) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 3) (= 1 1) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) (|$cond-alpha-rename:5647| Int) )
    (=>
      ( and (not (= 1 3)) (not (= 1 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 1 3) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5647| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) )
    (=>
      ( and (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 1 1) (= 1 3) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:533| Int) (|$cond-alpha-rename:538| Int) )
    (=>
      ( and (not (= 1 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 1 3) (= 1 3) (not (= 0 |$cond-alpha-rename:538|)) (not (= 0 |$cond-alpha-rename:533|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:533| |$cond-alpha-rename:538|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:541| Int) (|$cond-alpha-rename:544| Int) )
    (=>
      ( and (|f$unknown:8| 1 |$cond-alpha-rename:541| |$cond-alpha-rename:544|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:544|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$cond-alpha-rename:541|))) (not (not (= 0 |$cond-alpha-rename:544|))) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:5660| Int) (|$cond-alpha-rename:5673| Int) )
    (=>
      ( and (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:548| 3)) (not (= |$cond-alpha-rename:548| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:548| |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5673| 1) (|loop$unknown:15| |$cond-alpha-rename:5660| 1) (|f$unknown:8| |$cond-alpha-rename:548| |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:5660| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:548| 3)) (not (= |$cond-alpha-rename:548| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 1) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:548| |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5660| 1) (|f$unknown:8| |$cond-alpha-rename:548| |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:548| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:5660| Int) )
    (=>
      ( and (not (= 0 1)) (not (= |$cond-alpha-rename:548| 3)) (not (= |$cond-alpha-rename:548| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 3) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 |$cond-alpha-rename:548| |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5660| 1) (|f$unknown:8| |$cond-alpha-rename:548| |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:5686| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5686| 1) (|f$unknown:8| 1 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 1) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 3) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) (|$cond-alpha-rename:5699| Int) )
    (=>
      ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5699| 1) (|f$unknown:8| 3 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) )
    (=>
      ( and (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 1 3) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 1 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:547| Int) (|$cond-alpha-rename:553| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 3 3) (not (= 0 |$cond-alpha-rename:553|)) (not (= 0 |$cond-alpha-rename:547|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 1 3 |$cond-alpha-rename:547|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:553| |$cond-alpha-rename:547|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:556| Int) (|$cond-alpha-rename:557| Int) (|$cond-alpha-rename:560| Int) )
    (=>
      ( and (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:557| |$cond-alpha-rename:560| |$cond-alpha-rename:556|) (|read_$unknown:20| 1 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|read_$unknown:20| 1 |$cond-alpha-rename:557| |$cond-alpha-rename:556|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:560|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$cond-alpha-rename:556|))) (not (not (= 0 |$cond-alpha-rename:560|))) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) (|$cond-alpha-rename:5712| Int) (|$cond-alpha-rename:5725| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5725| 1) (|loop$unknown:15| |$cond-alpha-rename:5712| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) (|$cond-alpha-rename:5712| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 1) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5712| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) (|$cond-alpha-rename:5712| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 0 3) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5712| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) (|$cond-alpha-rename:5738| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 3 1) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5738| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 1) (= 3 1) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 2 3) (= 3 1) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) (|$cond-alpha-rename:5751| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 3 3) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5751| 1) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 3 1) (= 3 3) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:564| Int) (|$cond-alpha-rename:569| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (= 3 3) (= 3 3) (not (= 0 |$cond-alpha-rename:569|)) (not (= 0 |$cond-alpha-rename:564|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:564| |$cond-alpha-rename:569|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:574| Int) (|$cond-alpha-rename:577| Int) )
    (=>
      ( and (|f$unknown:8| 3 |$cond-alpha-rename:574| |$cond-alpha-rename:577|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:577|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$cond-alpha-rename:574|))) (not (not (= 0 |$cond-alpha-rename:577|))) (not (= 3 1)) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:5764| Int) (|$cond-alpha-rename:5777| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 3)) (not (= 0 1)) (not (= |$cond-alpha-rename:583| 3)) (not (= |$cond-alpha-rename:583| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:583| |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5777| 1) (|loop$unknown:15| |$cond-alpha-rename:5764| 1) (|f$unknown:8| |$cond-alpha-rename:583| |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:5764| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= |$cond-alpha-rename:583| 3)) (not (= |$cond-alpha-rename:583| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 0 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:583| |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5764| 1) (|f$unknown:8| |$cond-alpha-rename:583| |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:5764| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:583| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 0 1)) (not (= |$cond-alpha-rename:583| 3)) (not (= |$cond-alpha-rename:583| 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 0 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 |$cond-alpha-rename:583| |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5764| 1) (|f$unknown:8| |$cond-alpha-rename:583| |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:5790| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5790| 1) (|f$unknown:8| 1 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 2 1) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 2 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 2 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:5803| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|loop$unknown:15| |$cond-alpha-rename:5803| 1) (|f$unknown:8| 3 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 1 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 1 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 1 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 1 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:582| Int) (|$cond-alpha-rename:588| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:588|)) (not (= 0 |$cond-alpha-rename:582|)) (= 3 3) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| 3 3 |$cond-alpha-rename:582|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|f$unknown:8| 3 |$cond-alpha-rename:588| |$cond-alpha-rename:582|) (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:131| Int) (|$cond-alpha-rename:132| Int) (|$cond-alpha-rename:593| Int) (|$cond-alpha-rename:594| Int) (|$cond-alpha-rename:597| Int) )
    (=>
      ( and (|f$unknown:8| |$cond-alpha-rename:132| |$alpha-5:x| |$cond-alpha-rename:131|) (|f$unknown:8| |$cond-alpha-rename:594| |$cond-alpha-rename:597| |$cond-alpha-rename:593|) (|read_$unknown:20| 3 |$cond-alpha-rename:132| |$cond-alpha-rename:131|) (|read_$unknown:20| 3 |$cond-alpha-rename:594| |$cond-alpha-rename:593|) (not (= 0 |$alpha-5:x|)) (not (= 0 |$cond-alpha-rename:597|)) (not (not (= 0 |$alpha-5:x|))) (not (not (= 0 |$cond-alpha-rename:131|))) (not (not (= 0 |$cond-alpha-rename:593|))) (not (not (= 0 |$cond-alpha-rename:597|))) (not (= 3 1)) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:5816| Int) (|$cond-alpha-rename:5829| Int) )
    (=>
      ( and (not (= |$alpha-6:st| 3)) (not (= |$alpha-6:st| 1)) (not (= 0 3)) (not (= 0 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:5829| 1) (|loop$unknown:15| |$cond-alpha-rename:5816| 1) (|f$unknown:8| |$alpha-6:st| |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:5816| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:5816| 1) (|f$unknown:8| 1 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:5816| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:5816| 1) (|f$unknown:8| 3 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:5842| Int) )
    (=>
      ( and (not (= |$alpha-6:st| 3)) (not (= |$alpha-6:st| 1)) (not (not (= 0 |$alpha-5:x|))) (= 0 1) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:5842| 1) (|f$unknown:8| |$alpha-6:st| |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-5:x|))) (= 2 1) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (= 3 1) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:5855| Int) )
    (=>
      ( and (not (= |$alpha-6:st| 3)) (not (= |$alpha-6:st| 1)) (not (= 0 1)) (not (not (= 0 |$alpha-5:x|))) (= 0 3) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|loop$unknown:15| |$cond-alpha-rename:5855| 1) (|f$unknown:8| |$alpha-6:st| |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$alpha-5:x|))) (= 2 3) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 1 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 1 1 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$cond-alpha-rename:135| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (= 3 3) (not (= 0 |$cond-alpha-rename:135|)) (not (= 0 |$alpha-5:x|)) (|f$unknown:8| 3 |$cond-alpha-rename:135| |$alpha-5:x|) )
      (|read_$unknown:20| 3 3 |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:140| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:140|))) (not (not (= 0 |$alpha-5:x|))) (|f$unknown:8| |$alpha-6:st| |$cond-alpha-rename:140| |$alpha-5:x|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:5868| Int) (|$cond-alpha-rename:5881| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:144| 3)) (not (= |$cond-alpha-rename:144| 1)) (not (= 0 3)) (not (= 0 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| |$cond-alpha-rename:144| |$cond-alpha-rename:143|) (|loop$unknown:15| |$cond-alpha-rename:5881| 1) (|loop$unknown:15| |$cond-alpha-rename:5868| 1) (|f$unknown:8| |$cond-alpha-rename:144| |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:5868| Int) )
    (=>
      ( and (not (= 2 3)) (not (= 2 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 1 |$cond-alpha-rename:143|) (|loop$unknown:15| |$cond-alpha-rename:5868| 1) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:5868| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 3 |$cond-alpha-rename:143|) (|loop$unknown:15| |$cond-alpha-rename:5868| 1) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:5894| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:144| 3)) (not (= |$cond-alpha-rename:144| 1)) (not (not (= 0 |$alpha-5:x|))) (= 0 1) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| |$cond-alpha-rename:144| |$cond-alpha-rename:143|) (|loop$unknown:15| |$cond-alpha-rename:5894| 1) (|f$unknown:8| |$cond-alpha-rename:144| |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-5:x|))) (= 2 1) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 1 |$cond-alpha-rename:143|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) )
    (=>
      ( and (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (= 3 1) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 3 |$cond-alpha-rename:143|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:5907| Int) )
    (=>
      ( and (not (= |$cond-alpha-rename:144| 3)) (not (= |$cond-alpha-rename:144| 1)) (not (= 0 1)) (not (not (= 0 |$alpha-5:x|))) (= 0 3) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| |$cond-alpha-rename:144| |$cond-alpha-rename:143|) (|loop$unknown:15| |$cond-alpha-rename:5907| 1) (|f$unknown:8| |$cond-alpha-rename:144| |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) )
    (=>
      ( and (not (= 2 1)) (not (not (= 0 |$alpha-5:x|))) (= 2 3) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 1 |$cond-alpha-rename:143|) (|f$unknown:8| 1 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:143| Int) )
    (=>
      ( and (not (= 3 1)) (not (= 3 1)) (not (not (= 0 |$alpha-5:x|))) (= 3 3) (not (= 0 |$cond-alpha-rename:143|)) (not (= 0 |$alpha-5:x|)) (|read_$unknown:20| |$alpha-6:st| 3 |$cond-alpha-rename:143|) (|f$unknown:8| 3 |$alpha-5:x| |$cond-alpha-rename:143|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:x| Int) (|$alpha-6:st| Int) (|$cond-alpha-rename:149| Int) (|$cond-alpha-rename:150| Int) )
    (=>
      ( and (not (not (= 0 |$cond-alpha-rename:149|))) (not (not (= 0 |$alpha-5:x|))) (|read_$unknown:20| |$alpha-6:st| |$cond-alpha-rename:150| |$cond-alpha-rename:149|) (|f$unknown:8| |$cond-alpha-rename:150| |$alpha-5:x| |$cond-alpha-rename:149|) )
      (|read_$unknown:20| |$alpha-6:st| |$alpha-6:st| |$alpha-5:x|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5920| Int) (|$cond-alpha-rename:5933| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|loop$unknown:15| |$cond-alpha-rename:5933| 1) (|loop$unknown:15| |$cond-alpha-rename:5920| 1) (|f$unknown:8| |$alpha-2:st| |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5920| Int) )
    ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|loop$unknown:15| |$cond-alpha-rename:5920| 1) (|f$unknown:8| 1 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5920| Int) )
    ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|loop$unknown:15| |$cond-alpha-rename:5920| 1) (|f$unknown:8| 3 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5946| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|loop$unknown:15| |$cond-alpha-rename:5946| 1) (|f$unknown:8| |$alpha-2:st| |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= 1 3)) (not (= 1 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|f$unknown:8| 1 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (= 3 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|f$unknown:8| 3 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5959| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 0 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|loop$unknown:15| |$cond-alpha-rename:5959| 1) (|f$unknown:8| |$alpha-2:st| |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= 1 3)) (not (= 1 1)) (not (= 2 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|f$unknown:8| 1 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:189| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= 3 3)) (not (= 3 1)) (not (= 3 1)) (not (= 3 1)) (= 3 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:189|)) (|f$unknown:8| 3 |$cond-alpha-rename:189| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:194| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (not (= 0 |$cond-alpha-rename:57|))) (not (not (= 0 |$cond-alpha-rename:194|))) (not (= 0 |$cond-alpha-rename:57|)) (|f$unknown:8| |$alpha-2:st| |$cond-alpha-rename:194| |$cond-alpha-rename:57|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5972| Int) (|$cond-alpha-rename:5985| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$cond-alpha-rename:198| 3)) (not (= |$cond-alpha-rename:198| 1)) (not (= 0 3)) (not (= 0 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| |$cond-alpha-rename:198| |$cond-alpha-rename:197|) (|loop$unknown:15| |$cond-alpha-rename:5985| 1) (|loop$unknown:15| |$cond-alpha-rename:5972| 1) (|f$unknown:8| |$cond-alpha-rename:198| |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5972| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 2 3)) (not (= 2 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 1 |$cond-alpha-rename:197|) (|loop$unknown:15| |$cond-alpha-rename:5972| 1) (|f$unknown:8| 1 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5972| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 3 1)) (not (= 3 3)) (not (= 3 1)) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 3 |$cond-alpha-rename:197|) (|loop$unknown:15| |$cond-alpha-rename:5972| 1) (|f$unknown:8| 3 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:5998| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$cond-alpha-rename:198| 3)) (not (= |$cond-alpha-rename:198| 1)) (= 0 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| |$cond-alpha-rename:198| |$cond-alpha-rename:197|) (|loop$unknown:15| |$cond-alpha-rename:5998| 1) (|f$unknown:8| |$cond-alpha-rename:198| |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (= 2 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 1 |$cond-alpha-rename:197|) (|f$unknown:8| 1 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 3 1)) (= 3 1) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 3 |$cond-alpha-rename:197|) (|f$unknown:8| 3 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:198| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:6011| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= |$cond-alpha-rename:198| 3)) (not (= |$cond-alpha-rename:198| 1)) (not (= 0 1)) (= 0 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| |$cond-alpha-rename:198| |$cond-alpha-rename:197|) (|loop$unknown:15| |$cond-alpha-rename:6011| 1) (|f$unknown:8| |$cond-alpha-rename:198| |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 2 1)) (= 2 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 1 |$cond-alpha-rename:197|) (|f$unknown:8| 1 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:197| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (= 3 1)) (not (= 3 1)) (= 3 3) (not (= 0 |$cond-alpha-rename:57|)) (not (= 0 |$cond-alpha-rename:197|)) (|read_$unknown:20| |$alpha-2:st| 3 |$cond-alpha-rename:197|) (|f$unknown:8| 3 |$cond-alpha-rename:57| |$cond-alpha-rename:197|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:st| Int) (|$cond-alpha-rename:203| Int) (|$cond-alpha-rename:204| Int) (|$cond-alpha-rename:57| Int) )
    ( and (not (= |$alpha-2:st| 3)) (not (= |$alpha-2:st| 1)) (not (not (= 0 |$cond-alpha-rename:57|))) (not (not (= 0 |$cond-alpha-rename:203|))) (not (= 0 |$cond-alpha-rename:57|)) (|read_$unknown:20| |$alpha-2:st| |$cond-alpha-rename:204| |$cond-alpha-rename:203|) (|f$unknown:8| |$cond-alpha-rename:204| |$cond-alpha-rename:57| |$cond-alpha-rename:203|) )
    )
  )
)
(check-sat)

(get-model)

