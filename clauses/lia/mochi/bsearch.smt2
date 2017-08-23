(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec bs_aux key vec l u =
    if u < l
    then -1
    else
      let m = l + (u-l) / 2 in
      let x = sub vec m in
        if x < key then bs_aux key vec (m+1) u
        else if x > key then bs_aux key vec l (m-1)
               else m
  
  let bsearch key vec = bs_aux key vec 0 (arraysize vec - 1)
  
  let main n m =
    let v1 = make_array n in
    let v2 = make_array m in
    if 0<=n && n=m then (bsearch v1 v2; ()) else ()
")

(set-logic HORN)

(declare-fun |update$unknown:19|
  ( Int Int Int Int ) Bool
)

(declare-fun |update$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |update$unknown:17|
  ( Int Int ) Bool
)

(declare-fun |update$unknown:16|
  ( Int ) Bool
)

(declare-fun |sub$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |sub$unknown:13|
  ( Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:4|
  ( Int Int ) Bool
)

(declare-fun |bs_aux$unknown:3|
  ( Int ) Bool
)

(declare-fun |bsearch$unknown:10|
  ( Int Int Int ) Bool
)

(declare-fun |bsearch$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |bsearch$unknown:8|
  ( Int ) Bool
)

(declare-fun |bs_aux$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |arraysize$unknown:1|
  ( Int ) Bool
)

(declare-fun |make_array$unknown:12|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:11|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-17:n| Int) )
    (=>
      ( and true )
      (|make_array$unknown:11| |$alpha-17:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-18:m| Int) (|$knormal:49| Int) (|$alpha-17:n| Int) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) )
      (|make_array$unknown:11| |$alpha-18:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:src| Int) (|$V-reftype:39| Int) )
    (=>
      ( and (|arraysize$unknown:1| |$alpha-2:src|) (= |$V-reftype:39| |$alpha-2:src|) )
      (|arraysize$unknown:2| |$V-reftype:39| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:41| Int) (|$knormal:36| Int) (|$alpha-15:key| Int) (|$V-reftype:63| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) (|bs_aux$unknown:7| |$knormal:41| |$knormal:39| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|) (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) (= |$V-reftype:63| |$knormal:41|) (= |$knormal:36| 0) (= |$knormal:39| (- |$knormal:31| 1)) )
      (|bsearch$unknown:10| |$V-reftype:63| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$alpha-15:key| Int) (|$knormal:31| Int) (|$alpha-16:vec| Int) (|$knormal:36| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) (= |$knormal:36| 0) (= |$knormal:39| (- |$knormal:31| 1)) )
      (|bs_aux$unknown:3| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$alpha-15:key| Int) (|$knormal:39| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) (= |$knormal:36| 0) (= |$knormal:39| (- |$knormal:31| 1)) )
      (|bs_aux$unknown:4| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:39| Int) (|$alpha-15:key| Int) (|$knormal:31| Int) (|$alpha-16:vec| Int) (|$knormal:36| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) (= |$knormal:36| 0) (= |$knormal:39| (- |$knormal:31| 1)) )
      (|bs_aux$unknown:5| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:36| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$alpha-15:key| Int) (|$knormal:39| Int) )
    (=>
      ( and (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) (= |$knormal:36| 0) (= |$knormal:39| (- |$knormal:31| 1)) )
      (|bs_aux$unknown:6| |$knormal:39| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:8| Bool) (|$knormal:9| Bool) (|$alpha-13:m| Int) (|$knormal:17| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$knormal:15| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$V-reftype:59| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:7| |$knormal:17| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:9| (not |$knormal:7|) (not |$knormal:8|) (= |$V-reftype:59| |$knormal:17|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:7| |$V-reftype:59| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$V-reftype:56| Int) (|$knormal:8| Bool) (|$alpha-13:m| Int) (|$knormal:21| Int) (|$knormal:25| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:8| (not |$knormal:7|) (= |$V-reftype:56| |$knormal:25|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:7| |$V-reftype:56| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:8| Bool) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$knormal:21| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:8| (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:3| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:21| Int) (|$knormal:7| Bool) (|$knormal:28| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-13:m| Int) (|$knormal:8| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:8| (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:8| Bool) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$knormal:21| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:8| (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:5| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:21| Int) (|$knormal:7| Bool) (|$knormal:28| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-13:m| Int) (|$knormal:8| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:8| (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:6| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:15| Int) (|$knormal:8| Bool) (|$knormal:9| Bool) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:9| (not |$knormal:7|) (not |$knormal:8|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:3| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:7| Bool) (|$knormal:28| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-13:m| Int) (|$knormal:9| Bool) (|$knormal:8| Bool) (|$knormal:15| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:9| (not |$knormal:7|) (not |$knormal:8|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:15| Int) (|$knormal:8| Bool) (|$knormal:9| Bool) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:28| Int) (|$knormal:7| Bool) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:9| (not |$knormal:7|) (not |$knormal:8|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$knormal:7| Bool) (|$knormal:28| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-13:m| Int) (|$knormal:9| Bool) (|$knormal:8| Bool) (|$knormal:15| Int) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) |$knormal:9| (not |$knormal:7|) (not |$knormal:8|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:6| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:9| Bool) (|$knormal:7| Bool) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:28| Int) (|$knormal:8| Bool) (|$V-reftype:60| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (not |$knormal:7|) (not |$knormal:8|) (not |$knormal:9|) (= |$V-reftype:60| |$alpha-13:m|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:8| (< |$knormal:28| |$alpha-9:key|)) (= |$knormal:9| (> |$knormal:28| |$alpha-9:key|)) )
      (|bs_aux$unknown:7| |$V-reftype:60| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:7| Bool) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) |$knormal:7| (= |$V-reftype:50| (- 1)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) )
      (|bs_aux$unknown:7| |$V-reftype:50| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$knormal:29| Int) (|$knormal:7| Bool) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-13:m| Int) (|$knormal:30| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) )
      (|sub$unknown:13| |$alpha-10:vec|)
    )
  )
)
(assert
  (forall ( (|$knormal:30| Int) (|$alpha-13:m| Int) (|$alpha-11:l| Int) (|$alpha-10:vec| Int) (|$alpha-9:key| Int) (|$alpha-12:u| Int) (|$knormal:7| Bool) (|$knormal:29| Int) )
    (=>
      ( and (|bs_aux$unknown:3| |$alpha-9:key|) (|bs_aux$unknown:4| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:5| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (not |$knormal:7|) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (/ |$knormal:29| 2)) (= |$knormal:7| (< |$alpha-12:u| |$alpha-11:l|)) )
      (|sub$unknown:14| |$alpha-13:m| |$alpha-10:vec|)
    )
  )
)
(assert
  (forall ( (|$alpha-16:vec| Int) (|$alpha-15:key| Int) )
    (=>
      ( and (|bsearch$unknown:8| |$alpha-15:key|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) )
      (|arraysize$unknown:1| |$alpha-16:vec|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:n| Int) (|$V-reftype:38| Int) )
    (=>
      ( and (|make_array$unknown:11| |$alpha-1:n|) (= |$V-reftype:38| |$alpha-1:n|) )
      (|make_array$unknown:12| |$V-reftype:38| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$knormal:43| Bool) (|$knormal:42| Bool) (|$alpha-17:n| Int) (|$alpha-18:m| Int) (|$knormal:48| Int) (|$knormal:49| Int) (|$knormal:44| Bool) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:48| |$alpha-18:m|) (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) |$knormal:44| (= |$knormal:42| (<= 0 |$alpha-17:n|)) (= |$knormal:43| (= |$alpha-17:n| |$alpha-18:m|)) (= |$knormal:44| (and |$knormal:42| |$knormal:43|)) )
      (|bsearch$unknown:8| |$knormal:49|)
    )
  )
)
(assert
  (forall ( (|$knormal:44| Bool) (|$knormal:49| Int) (|$knormal:48| Int) (|$alpha-18:m| Int) (|$alpha-17:n| Int) (|$knormal:42| Bool) (|$knormal:43| Bool) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:48| |$alpha-18:m|) (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) |$knormal:44| (= |$knormal:42| (<= 0 |$alpha-17:n|)) (= |$knormal:43| (= |$alpha-17:n| |$alpha-18:m|)) (= |$knormal:44| (and |$knormal:42| |$knormal:43|)) )
      (|bsearch$unknown:9| |$knormal:48| |$knormal:49|)
    )
  )
)
(assert
  (forall ( (|$knormal:5| Bool) (|$knormal:4| Bool) (|$V-reftype:48| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:6| Bool) (|$alpha-8:$$tmp::1| Int) )
    (=>
      ( and (|sub$unknown:13| |$alpha-6:src|) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) |$knormal:6| (= |$V-reftype:48| 0) (= |$alpha-8:$$tmp::1| 1) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) )
      (|sub$unknown:15| |$V-reftype:48| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:6| Bool) (|$alpha-7:i| Int) (|$alpha-6:src| Int) (|$knormal:4| Bool) (|$knormal:5| Bool) )
    ( and (|sub$unknown:13| |$alpha-6:src|) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) (not |$knormal:6|) (= |$knormal:4| (<= 0 |$alpha-7:i|)) (= |$knormal:5| (< |$alpha-7:i| |$alpha-6:src|)) (= |$knormal:6| (and |$knormal:4| |$knormal:5|)) )
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-5:x| Int) (|$alpha-4:i| Int) (|$alpha-3:des| Int) (|$knormal:3| Bool) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    (=>
      ( and (|update$unknown:16| |$alpha-3:des|) (|update$unknown:17| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) |$knormal:3| (= |$V-reftype:43| 1) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
      (|update$unknown:19| |$V-reftype:43| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:3| Bool) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Bool) (|$knormal:2| Bool) )
    ( and (|update$unknown:16| |$alpha-3:des|) (|update$unknown:17| |$alpha-4:i| |$alpha-3:des|) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (not |$knormal:3|) (= |$knormal:1| (<= 0 |$alpha-4:i|)) (= |$knormal:2| (< |$alpha-4:i| |$alpha-3:des|)) (= |$knormal:3| (and |$knormal:1| |$knormal:2|)) )
    )
  )
)
(check-sat)

