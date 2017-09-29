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

(declare-fun |sub$unknown:14|
  ( Int Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |bsearch$unknown:10|
  ( Int Int Int ) Bool
)

(declare-fun |bsearch$unknown:9|
  ( Int Int ) Bool
)

(declare-fun |bs_aux$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |arraysize$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |make_array$unknown:12|
  ( Int Int ) Bool
)

(assert
  (forall ( (unused Int) )
    (=>
      true
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n| Int) (|$knormal:49| Int) )
    (=>
      ( and (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$alpha-2:src| Int) )
    (=>
      ( and (= |$V-reftype:39| |$alpha-2:src|) true )
      (|arraysize$unknown:2| |$V-reftype:39| |$alpha-2:src|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$alpha-15:key| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$knormal:39| Int) (|$knormal:41| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (= |$V-reftype:63| |$knormal:41|) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true (|bs_aux$unknown:7| |$knormal:41| |$knormal:39| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|) (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) )
      (|bsearch$unknown:10| |$V-reftype:63| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:key| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:key| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:key| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-15:key| Int) (|$alpha-16:vec| Int) (|$knormal:31| Int) (|$knormal:36| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:39| (- |$knormal:31| 1)) (= |$knormal:36| 0) (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true (|arraysize$unknown:2| |$knormal:31| |$alpha-16:vec|) )
      (|bs_aux$unknown:6| |$knormal:39| |$knormal:36| |$alpha-16:vec| |$alpha-15:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:59| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:59| |$knormal:17|) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:9|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:7| |$knormal:17| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:7| |$V-reftype:59| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:56| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:21| Int) (|$knormal:25| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:56| |$knormal:25|) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:8|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:7| |$V-reftype:56| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:21| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:8|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:21| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:8|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:21| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:8|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:21| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:21| (+ |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:8|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:6| |$alpha-12:u| |$knormal:21| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:15| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:9|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:15| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:9|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:15| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:9|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:15| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:15| (- |$alpha-13:m| 1)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (not (= 0 |$knormal:9|)) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:6| |$knormal:15| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:60| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) (|$knormal:8| Int) (|$knormal:9| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:9|)) (> |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:8|)) (< |$knormal:28| |$alpha-9:key|)) (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (= |$V-reftype:60| |$alpha-13:m|) (not (not (= 0 |$knormal:9|))) (not (not (= 0 |$knormal:8|))) (not (not (= 0 |$knormal:7|))) (|sub$unknown:15| |$knormal:28| |$alpha-13:m| |$alpha-10:vec|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:7| |$V-reftype:60| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:50| Int) (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$V-reftype:50| (- 1)) (not (= 0 |$knormal:7|)) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|bs_aux$unknown:7| |$V-reftype:50| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-13:m| Int) (|$alpha-9:key| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:7| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:7|)) (< |$alpha-12:u| |$alpha-11:l|)) (= |$knormal:30| (div |$knormal:29| 2)) (= |$knormal:29| (- |$alpha-12:u| |$alpha-11:l|)) (= |$alpha-13:m| (+ |$alpha-11:l| |$knormal:30|)) (not (not (= 0 |$knormal:7|))) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) true true true )
      (|sub$unknown:14| |$alpha-13:m| |$alpha-10:vec|)
    )
  )
)
(assert
  (forall ( (|$alpha-15:key| Int) (|$alpha-16:vec| Int) )
    (=>
      ( and (|bsearch$unknown:9| |$alpha-16:vec| |$alpha-15:key|) true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:38| Int) (|$alpha-1:n| Int) )
    (=>
      ( and (= |$V-reftype:38| |$alpha-1:n|) true )
      (|make_array$unknown:12| |$V-reftype:38| |$alpha-1:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-17:n| Int) (|$alpha-18:m| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:44|)) (and (not (= 0 |$knormal:42|)) (not (= 0 |$knormal:43|)))) (= (not (= 0 |$knormal:43|)) (= |$alpha-17:n| |$alpha-18:m|)) (= (not (= 0 |$knormal:42|)) (<= 0 |$alpha-17:n|)) (not (= 0 |$knormal:44|)) (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) (|make_array$unknown:12| |$knormal:48| |$alpha-18:m|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-17:n| Int) (|$alpha-18:m| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:44| Int) (|$knormal:48| Int) (|$knormal:49| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:44|)) (and (not (= 0 |$knormal:42|)) (not (= 0 |$knormal:43|)))) (= (not (= 0 |$knormal:43|)) (= |$alpha-17:n| |$alpha-18:m|)) (= (not (= 0 |$knormal:42|)) (<= 0 |$alpha-17:n|)) (not (= 0 |$knormal:44|)) (|make_array$unknown:12| |$knormal:49| |$alpha-17:n|) (|make_array$unknown:12| |$knormal:48| |$alpha-18:m|) )
      (|bsearch$unknown:9| |$knormal:48| |$knormal:49|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:48| Int) (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$alpha-8:$$tmp::1| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (= |$alpha-8:$$tmp::1| 1) (= |$V-reftype:48| 0) (not (= 0 |$knormal:6|)) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) true )
      (|sub$unknown:15| |$V-reftype:48| |$alpha-7:i| |$alpha-6:src|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) (|$knormal:4| Int) (|$knormal:5| Int) (|$knormal:6| Int) )
    ( and (= (not (= 0 |$knormal:6|)) (and (not (= 0 |$knormal:4|)) (not (= 0 |$knormal:5|)))) (= (not (= 0 |$knormal:5|)) (< |$alpha-7:i| |$alpha-6:src|)) (= (not (= 0 |$knormal:4|)) (<= 0 |$alpha-7:i|)) (not (not (= 0 |$knormal:6|))) (|sub$unknown:14| |$alpha-7:i| |$alpha-6:src|) true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:43| Int) (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (= |$V-reftype:43| 1) (not (= 0 |$knormal:3|)) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
      (|update$unknown:19| |$V-reftype:43| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:3| Int) )
    ( and (= (not (= 0 |$knormal:3|)) (and (not (= 0 |$knormal:1|)) (not (= 0 |$knormal:2|)))) (= (not (= 0 |$knormal:2|)) (< |$alpha-4:i| |$alpha-3:des|)) (= (not (= 0 |$knormal:1|)) (<= 0 |$alpha-4:i|)) (not (not (= 0 |$knormal:3|))) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) true true )
    )
  )
)
(check-sat)

(get-model)

(exit)

