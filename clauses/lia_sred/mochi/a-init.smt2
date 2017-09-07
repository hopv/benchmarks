(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-init
  *)
  
  let make_array n i = assert (0 <= i && i < n); 0
  let update i a x j :int= if j > i-1 && j <= i then x else a (j)
  let rec init i n a =
    if i >= n then a else init (i + 1) n (update i a 1)
  let main k n i =
    if k >= 0 && k <= 0 then
      let x = init k n (make_array n) in
        if 0 <= i && i < n then
          assert (x i >= 1)
")

(set-logic HORN)

(declare-fun |init$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |init$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:4|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:15|
  ( Int Int Int Int ) Bool
)

(declare-fun |init$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$knormal:9| Bool) (|$knormal:13| Int) (|$V-reftype:34| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$knormal:15| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) (= |$knormal:16| (+ |$alpha-8:i| 1)) (= |$knormal:13| 1) (not |$knormal:9|) (|update$unknown:15| |$V-reftype:34| |$knormal:15| |$knormal:13| |$alpha-8:i|) (|init$unknown:3| |$knormal:15| |$alpha-9:n| |$knormal:16|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:4| |$V-reftype:34| |$knormal:15| |$alpha-9:n| |$knormal:16|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-9:n| Int) (|$alpha-8:i| Int) (|$V-reftype:6| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) |$knormal:9| (|init$unknown:5| |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:4| |$V-reftype:7| |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$V-reftype:10| Int) (|$alpha-9:n| Int) (|$alpha-8:i| Int) (|$V-reftype:11| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) (= |$knormal:16| (+ |$alpha-8:i| 1)) (not |$knormal:9|) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-9:n| |$knormal:16|) (|init$unknown:5| |$V-reftype:10| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$V-reftype:9| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) |$knormal:9| (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:3| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:9| Bool) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$V-reftype:9| Int) (|$knormal:16| Int) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) (= |$knormal:16| (+ |$alpha-8:i| 1)) (not |$knormal:9|) (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| |$knormal:16|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:28| Bool) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:44| Bool) (|$cond-alpha-rename:43| Int) (|$V-reftype:26| Int) (|$cond-alpha-rename:42| Int) (|$alpha-9:n| Int) (|$alpha-8:i| Int) (|$cond-alpha-rename:29| Bool) (|$knormal:9| Bool) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) (= |$cond-alpha-rename:44| (>= |$alpha-8:i| |$cond-alpha-rename:42|)) (= |$cond-alpha-rename:43| (+ |$alpha-8:i| 1)) (= |$cond-alpha-rename:29| (and |$cond-alpha-rename:27| |$cond-alpha-rename:28|)) (= |$cond-alpha-rename:28| (<= |$V-reftype:26| |$alpha-8:i|)) (= |$cond-alpha-rename:27| (> |$V-reftype:26| |$cond-alpha-rename:26|)) (= |$cond-alpha-rename:26| (- |$alpha-8:i| 1)) (= |$cond-alpha-rename:25| 1) (not |$knormal:9|) (not |$cond-alpha-rename:44|) (not |$cond-alpha-rename:29|) (|init$unknown:3| |$V-reftype:26| |$cond-alpha-rename:42| |$cond-alpha-rename:43|) (|init$unknown:2| |$cond-alpha-rename:42| |$alpha-8:i|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) )
      (|init$unknown:3| |$V-reftype:26| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:16| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (>= |$alpha-8:i| |$alpha-9:n|)) (= |$knormal:16| (+ |$alpha-8:i| 1)) (not |$knormal:9|) (|init$unknown:2| |$alpha-9:n| |$alpha-8:i|) true )
      (|init$unknown:2| |$alpha-9:n| |$knormal:16|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:23| Bool) (|$cond-alpha-rename:18| Bool) (|$cond-alpha-rename:17| Bool) (|$V-reftype:23| Int) (|$cond-alpha-rename:19| Bool) (|$cond-alpha-rename:16| Int) (|$alpha-12:n| Int) (|$knormal:32| Int) (|$alpha-11:k| Int) (|$cond-alpha-rename:15| Bool) (|$knormal:25| Bool) (|$cond-alpha-rename:13| Bool) (|$cond-alpha-rename:14| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (<= |$alpha-11:k| 0)) (= |$knormal:23| (>= |$alpha-11:k| 0)) (= |$cond-alpha-rename:19| (and |$cond-alpha-rename:17| |$cond-alpha-rename:18|)) (= |$cond-alpha-rename:18| (< |$knormal:32| |$alpha-12:n|)) (= |$cond-alpha-rename:17| (<= 0 |$knormal:32|)) (= |$cond-alpha-rename:15| (and |$cond-alpha-rename:13| |$cond-alpha-rename:14|)) (= |$cond-alpha-rename:14| (<= |$cond-alpha-rename:16| 0)) (= |$cond-alpha-rename:13| (>= |$cond-alpha-rename:16| 0)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:19| |$cond-alpha-rename:15| (|init$unknown:3| |$knormal:32| |$alpha-12:n| |$cond-alpha-rename:16|) (|init$unknown:3| |$knormal:32| |$alpha-12:n| |$alpha-11:k|) )
      (|init$unknown:4| |$V-reftype:23| |$knormal:32| |$alpha-12:n| |$alpha-11:k|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:24| Bool) (|$knormal:23| Bool) (|$knormal:28| Bool) (|$alpha-11:k| Int) (|$alpha-13:i| Int) (|$knormal:29| Int) (|$alpha-12:n| Int) (|$knormal:25| Bool) (|$knormal:31| Bool) (|$knormal:26| Bool) (|$knormal:27| Bool) )
    ( and (= |$knormal:31| (>= |$knormal:29| 1)) (= |$knormal:28| (and |$knormal:26| |$knormal:27|)) (= |$knormal:27| (< |$alpha-13:i| |$alpha-12:n|)) (= |$knormal:26| (<= 0 |$alpha-13:i|)) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (<= |$alpha-11:k| 0)) (= |$knormal:23| (>= |$alpha-11:k| 0)) (not |$knormal:31|) |$knormal:28| |$knormal:25| (|init$unknown:6| |$knormal:29| |$alpha-13:i| |$alpha-12:n| |$alpha-11:k|) )
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:6| Bool) (|$cond-alpha-rename:8| Bool) (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:5| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (<= |$cond-alpha-rename:5| 0)) (= |$cond-alpha-rename:6| (>= |$cond-alpha-rename:5| 0)) (not |$knormal:3|) |$cond-alpha-rename:8| (|init$unknown:3| |$alpha-2:i| |$alpha-1:n| |$cond-alpha-rename:5|) )
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Int) (|$cond-alpha-rename:38| Bool) (|$cond-alpha-rename:37| Int) (|$alpha-6:x| Int) (|$V-reftype:45| Int) (|$cond-alpha-rename:50| Bool) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:49| Int) (|$alpha-4:i| Int) (|$cond-alpha-rename:35| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:48| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:46| Int) (|$knormal:8| Int) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:47| Bool) (|$knormal:7| Bool) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:39| Bool) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:7| (and |$knormal:5| |$knormal:6|)) (= |$knormal:6| (<= |$alpha-7:j| |$alpha-4:i|)) (= |$knormal:5| (> |$alpha-7:j| |$knormal:4|)) (= |$knormal:4| (- |$alpha-4:i| 1)) (= |$cond-alpha-rename:50| (>= |$alpha-4:i| |$cond-alpha-rename:48|)) (= |$cond-alpha-rename:49| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:47| (>= |$alpha-4:i| |$cond-alpha-rename:45|)) (= |$cond-alpha-rename:46| (+ |$alpha-4:i| 1)) (= |$cond-alpha-rename:41| (>= |$alpha-4:i| |$cond-alpha-rename:35|)) (= |$cond-alpha-rename:40| (and |$cond-alpha-rename:38| |$cond-alpha-rename:39|)) (= |$cond-alpha-rename:39| (<= |$alpha-7:j| |$alpha-4:i|)) (= |$cond-alpha-rename:38| (> |$alpha-7:j| |$cond-alpha-rename:37|)) (= |$cond-alpha-rename:37| (- |$alpha-4:i| 1)) (= |$cond-alpha-rename:36| 1) (= |$alpha-6:x| 1) (= |$V-reftype:45| |$knormal:8|) (not |$knormal:7|) (not |$cond-alpha-rename:50|) (not |$cond-alpha-rename:47|) (not |$cond-alpha-rename:41|) (not |$cond-alpha-rename:40|) (|init$unknown:4| |$knormal:8| |$alpha-7:j| |$cond-alpha-rename:35| |$alpha-4:i|) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:48| |$cond-alpha-rename:49|) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:45| |$cond-alpha-rename:46|) (|init$unknown:2| |$cond-alpha-rename:48| |$alpha-4:i|) (|init$unknown:2| |$cond-alpha-rename:45| |$alpha-4:i|) (|init$unknown:2| |$cond-alpha-rename:35| |$alpha-4:i|) )
      (|update$unknown:15| |$V-reftype:45| |$alpha-7:j| |$alpha-6:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Int) (|$V-reftype:44| Int) (|$knormal:7| Bool) (|$alpha-4:i| Int) (|$cond-alpha-rename:51| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:53| Bool) (|$alpha-6:x| Int) (|$knormal:6| Bool) )
    (=>
      ( and (= |$knormal:7| (and |$knormal:5| |$knormal:6|)) (= |$knormal:6| (<= |$alpha-7:j| |$alpha-4:i|)) (= |$knormal:5| (> |$alpha-7:j| |$knormal:4|)) (= |$knormal:4| (- |$alpha-4:i| 1)) (= |$cond-alpha-rename:53| (>= |$alpha-4:i| |$cond-alpha-rename:51|)) (= |$cond-alpha-rename:52| (+ |$alpha-4:i| 1)) (= |$alpha-6:x| 1) (= |$V-reftype:44| |$alpha-6:x|) (not |$cond-alpha-rename:53|) |$knormal:7| (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:51| |$cond-alpha-rename:52|) (|init$unknown:2| |$cond-alpha-rename:51| |$alpha-4:i|) )
      (|update$unknown:15| |$V-reftype:44| |$alpha-7:j| |$alpha-6:x| |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-12:n| Int) (|$knormal:27| Bool) (|$knormal:26| Bool) (|$alpha-11:k| Int) (|$knormal:28| Bool) (|$knormal:25| Bool) (|$knormal:23| Bool) (|$knormal:24| Bool) (|$alpha-13:i| Int) )
    (=>
      ( and (= |$knormal:28| (and |$knormal:26| |$knormal:27|)) (= |$knormal:27| (< |$alpha-13:i| |$alpha-12:n|)) (= |$knormal:26| (<= 0 |$alpha-13:i|)) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (<= |$alpha-11:k| 0)) (= |$knormal:23| (>= |$alpha-11:k| 0)) |$knormal:28| |$knormal:25| )
      (|init$unknown:5| |$alpha-13:i| |$alpha-12:n| |$alpha-11:k|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:23| Bool) (|$knormal:25| Bool) (|$alpha-11:k| Int) (|$alpha-12:n| Int) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (<= |$alpha-11:k| 0)) (= |$knormal:23| (>= |$alpha-11:k| 0)) |$knormal:25| )
      (|init$unknown:2| |$alpha-12:n| |$alpha-11:k|)
    )
  )
)
(check-sat)

(get-model)

