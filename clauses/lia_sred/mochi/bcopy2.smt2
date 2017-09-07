(set-info :origin "Verification conditions for the caml program
  let make_array n i = assert (0 <= i && i < n); 0
  let update i n des x = let _ = des i in ()
  
  let rec bcopy_aux m src des i =
    if i >= m
    then ()
    else
      begin
        update i m des (src i);
        bcopy_aux m src des (i+1)
      end
  
  let main n m =
    let array1 = make_array n in
    let array2 = make_array m in
    if n<=m && n>0 then bcopy_aux n array1 array2 0 else ()
")

(set-logic HORN)

(declare-fun |make_array$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:6|
  ( Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |bcopy_aux$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:35| Bool) (|$cond-alpha-rename:33| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$cond-alpha-rename:31| Int) (|$V-reftype:3| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:32| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:34| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:35| (>= |$cond-alpha-rename:30| |$alpha-9:m|)) (= |$cond-alpha-rename:34| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:33| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:30|) (not |$knormal:5|) (not |$cond-alpha-rename:35|) (not |$cond-alpha-rename:34|) (not |$cond-alpha-rename:33|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:36| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:32| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:31| |$cond-alpha-rename:30| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|) )
      (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:11| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:41| Bool) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:37| Int) (|$V-reftype:5| Int) (|$alpha-10:src| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:38| Int) (|$alpha-12:i| Int) (|$knormal:14| Int) (|$cond-alpha-rename:40| Bool) (|$cond-alpha-rename:42| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:42| (>= |$cond-alpha-rename:37| |$alpha-9:m|)) (= |$cond-alpha-rename:41| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:40| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:37|) (not |$knormal:5|) (not |$cond-alpha-rename:42|) (not |$cond-alpha-rename:41|) (not |$cond-alpha-rename:40|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:43| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:39| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|) (|bcopy_aux$unknown:2| |$alpha-10:src| |$alpha-9:m|) )
      (|bcopy_aux$unknown:3| |$V-reftype:5| |$alpha-10:src| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:49| Bool) (|$cond-alpha-rename:47| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:45| Int) (|$cond-alpha-rename:44| Int) (|$cond-alpha-rename:46| Int) (|$V-reftype:7| Int) (|$cond-alpha-rename:50| Int) (|$cond-alpha-rename:48| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:49| (>= |$cond-alpha-rename:44| |$alpha-9:m|)) (= |$cond-alpha-rename:48| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:47| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:44|) (not |$knormal:5|) (not |$cond-alpha-rename:49|) (not |$cond-alpha-rename:48|) (not |$cond-alpha-rename:47|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:44| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:50| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:46| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:45| |$cond-alpha-rename:44| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:11| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:55| Bool) (|$cond-alpha-rename:57| Int) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:52| Int) (|$cond-alpha-rename:51| Int) (|$cond-alpha-rename:53| Int) (|$alpha-11:des| Int) (|$V-reftype:9| Int) (|$cond-alpha-rename:54| Bool) (|$cond-alpha-rename:56| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:56| (>= |$cond-alpha-rename:51| |$alpha-9:m|)) (= |$cond-alpha-rename:55| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:54| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:51|) (not |$knormal:5|) (not |$cond-alpha-rename:56|) (not |$cond-alpha-rename:55|) (not |$cond-alpha-rename:54|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:51| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:57| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:4| |$alpha-11:des| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:53| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:52| |$cond-alpha-rename:51| |$alpha-9:m|) )
      (|bcopy_aux$unknown:5| |$V-reftype:9| |$alpha-11:des| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:5| Bool) (|$cond-alpha-rename:62| Bool) (|$knormal:13| Int) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:59| Int) (|$cond-alpha-rename:58| Int) (|$cond-alpha-rename:60| Int) (|$cond-alpha-rename:64| Int) (|$knormal:11| Int) (|$cond-alpha-rename:61| Bool) (|$cond-alpha-rename:63| Bool) (|$V-reftype:44| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:63| (>= |$cond-alpha-rename:58| |$alpha-9:m|)) (= |$cond-alpha-rename:62| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:61| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:58|) (= |$V-reftype:44| |$knormal:13|) (not |$knormal:5|) (not |$cond-alpha-rename:63|) (not |$cond-alpha-rename:62|) (not |$cond-alpha-rename:61|) (|bcopy_aux$unknown:7| |$knormal:13| |$knormal:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:58| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:64| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:60| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:59| |$cond-alpha-rename:58| |$alpha-9:m|) )
      (|bcopy_aux$unknown:7| |$V-reftype:44| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:14| Int) (|$cond-alpha-rename:11| Int) (|$cond-alpha-rename:12| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$cond-alpha-rename:23| Bool) (|$V-reftype:28| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:23| (>= |$cond-alpha-rename:11| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:11|) (= |$V-reftype:28| |$cond-alpha-rename:11|) (not |$knormal:5|) (not |$cond-alpha-rename:23|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:11| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:12| |$cond-alpha-rename:11| |$alpha-9:m|) )
      (|bcopy_aux$unknown:4| |$V-reftype:28| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:70| Bool) (|$cond-alpha-rename:68| Bool) (|$knormal:14| Int) (|$alpha-12:i| Int) (|$alpha-9:m| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:67| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:69| Bool) (|$knormal:5| Bool) (|$knormal:11| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$knormal:22| 1) (= |$knormal:11| (+ |$alpha-12:i| 1)) (= |$cond-alpha-rename:70| (>= |$cond-alpha-rename:65| |$alpha-9:m|)) (= |$cond-alpha-rename:69| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$cond-alpha-rename:68| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$alpha-12:i| |$cond-alpha-rename:65|) (not |$knormal:5|) (not |$cond-alpha-rename:70|) (not |$cond-alpha-rename:69|) (not |$cond-alpha-rename:68|) (|bcopy_aux$unknown:6| |$cond-alpha-rename:65| |$alpha-9:m|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:5| |$cond-alpha-rename:71| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$knormal:14| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:67| |$alpha-12:i| |$alpha-9:m|) (|bcopy_aux$unknown:3| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$alpha-9:m|) )
      (|bcopy_aux$unknown:6| |$knormal:11| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:42| Int) (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (= |$V-reftype:42| 1) |$knormal:5| (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:7| |$V-reftype:42| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-9:m| Int) (|$alpha-12:i| Int) (|$knormal:5| Bool) )
    (=>
      ( and (= |$knormal:5| (>= |$alpha-12:i| |$alpha-9:m|)) (not |$knormal:5|) (|bcopy_aux$unknown:6| |$alpha-12:i| |$alpha-9:m|) true )
      (|bcopy_aux$unknown:2| |$alpha-12:i| |$alpha-9:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:25| Bool) (|$V-reftype:3| Int) (|$alpha-14:n| Int) (|$knormal:23| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|bcopy_aux$unknown:2| |$V-reftype:3| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:3| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$cond-alpha-rename:4| Bool) (|$cond-alpha-rename:3| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:35| Int) (|$cond-alpha-rename:5| Bool) (|$V-reftype:23| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:5| (and |$cond-alpha-rename:3| |$cond-alpha-rename:4|)) (= |$cond-alpha-rename:4| (< |$knormal:35| |$alpha-14:n|)) (= |$cond-alpha-rename:3| (<= 0 |$knormal:35|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:5| (|make_array$unknown:9| |$knormal:35| |$alpha-14:n|) (|bcopy_aux$unknown:2| |$knormal:35| |$alpha-14:n|) )
      (|bcopy_aux$unknown:3| |$V-reftype:23| |$knormal:35| |$alpha-14:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:24| Bool) (|$knormal:25| Bool) (|$V-reftype:7| Int) (|$alpha-14:n| Int) (|$knormal:23| Bool) (|$alpha-15:m| Int) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| (|bcopy_aux$unknown:4| |$V-reftype:7| |$alpha-14:n|) )
      (|make_array$unknown:9| |$V-reftype:7| |$alpha-15:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:23| Bool) (|$cond-alpha-rename:7| Bool) (|$cond-alpha-rename:6| Bool) (|$knormal:25| Bool) (|$alpha-15:m| Int) (|$alpha-14:n| Int) (|$knormal:34| Int) (|$cond-alpha-rename:8| Bool) (|$V-reftype:23| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) (= |$cond-alpha-rename:8| (and |$cond-alpha-rename:6| |$cond-alpha-rename:7|)) (= |$cond-alpha-rename:7| (< |$knormal:34| |$alpha-15:m|)) (= |$cond-alpha-rename:6| (<= 0 |$knormal:34|)) (= |$V-reftype:23| 0) |$knormal:25| |$cond-alpha-rename:8| (|make_array$unknown:9| |$knormal:34| |$alpha-15:m|) (|bcopy_aux$unknown:4| |$knormal:34| |$alpha-14:n|) )
      (|bcopy_aux$unknown:5| |$V-reftype:23| |$knormal:34| |$alpha-14:n|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-2:i| Int) (|$alpha-1:n| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) (= |$knormal:2| (< |$alpha-2:i| |$alpha-1:n|)) (= |$knormal:1| (<= 0 |$alpha-2:i|)) (not |$knormal:3|) (|make_array$unknown:9| |$alpha-2:i| |$alpha-1:n|) true )
    )
  )
)
(assert
  (forall ( (|$knormal:31| Int) (|$alpha-15:m| Int) (|$knormal:23| Bool) (|$knormal:25| Bool) (|$alpha-14:n| Int) (|$knormal:24| Bool) )
    (=>
      ( and (= |$knormal:31| 0) (= |$knormal:25| (and |$knormal:23| |$knormal:24|)) (= |$knormal:24| (> |$alpha-14:n| 0)) (= |$knormal:23| (<= |$alpha-14:n| |$alpha-15:m|)) |$knormal:25| )
      (|bcopy_aux$unknown:6| |$knormal:31| |$alpha-14:n|)
    )
  )
)
(check-sat)

(get-model)

