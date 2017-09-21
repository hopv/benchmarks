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

(declare-fun |update$unknown:18|
  ( Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:7|
  ( Int Int Int Int Int ) Bool
)

(declare-fun |bs_aux$unknown:6|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:34| Int) )
    (=>
      ( and (<= 0 |$cond-alpha-rename:34|) )
      (|bs_aux$unknown:6| (- |$cond-alpha-rename:34| 1) 0 |$cond-alpha-rename:34| |$cond-alpha-rename:34|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:107| Int) (|$cond-alpha-rename:108| Int) (|$cond-alpha-rename:109| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:108| |$cond-alpha-rename:107| |$alpha-10:vec| |$cond-alpha-rename:109|) (|bs_aux$unknown:7| |$knormal:17| (- (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (< (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:108| |$cond-alpha-rename:107|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:107| (div (- |$cond-alpha-rename:108| |$cond-alpha-rename:107|) 2))) (> 0 |$alpha-9:key|) )
      (|bs_aux$unknown:7| |$knormal:17| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$knormal:25| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:117| |$cond-alpha-rename:116| |$alpha-10:vec| |$cond-alpha-rename:118|) (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| (+ |$alpha-11:l| (+ (div (- |$alpha-12:u| |$alpha-11:l|) 2) 1)) |$alpha-10:vec| |$alpha-9:key|) (< (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:117| |$cond-alpha-rename:116|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (= (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:116| (div (- |$cond-alpha-rename:117| |$cond-alpha-rename:116|) 2))) (< 0 |$alpha-9:key|) )
      (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:125| Int) (|$cond-alpha-rename:126| Int) (|$cond-alpha-rename:127| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:126| |$cond-alpha-rename:125| |$alpha-10:vec| |$cond-alpha-rename:127|) (< (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:126| |$cond-alpha-rename:125|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (= (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:125| (div (- |$cond-alpha-rename:126| |$cond-alpha-rename:125|) 2))) (< 0 |$alpha-9:key|) )
      (|bs_aux$unknown:6| |$alpha-12:u| (+ |$alpha-11:l| (+ (div (- |$alpha-12:u| |$alpha-11:l|) 2) 1)) |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:135| Int) (|$cond-alpha-rename:136| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:135| |$cond-alpha-rename:134| |$alpha-10:vec| |$cond-alpha-rename:136|) (< (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:135| |$cond-alpha-rename:134|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:134| (div (- |$cond-alpha-rename:135| |$cond-alpha-rename:134|) 2))) (> 0 |$alpha-9:key|) )
      (|bs_aux$unknown:6| (- (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:143| Int) (|$cond-alpha-rename:144| Int) (|$cond-alpha-rename:145| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:144| |$cond-alpha-rename:143| |$alpha-10:vec| |$cond-alpha-rename:145|) (< (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:144| |$cond-alpha-rename:143|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (not (> 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:143| (div (- |$cond-alpha-rename:144| |$cond-alpha-rename:143|) 2))) )
      (|bs_aux$unknown:7| (+ |$alpha-11:l| (div (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) )
    (=>
      ( and (< |$alpha-12:u| |$alpha-11:l|) (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) )
      (|bs_aux$unknown:7| (- 1) |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$cond-alpha-rename:80| Int) (|$cond-alpha-rename:81| Int) (|$cond-alpha-rename:82| Int) )
    ( and (not (and (<= 0 (+ |$cond-alpha-rename:80| (div (- |$cond-alpha-rename:81| |$cond-alpha-rename:80|) 2))) (< (+ |$cond-alpha-rename:80| (div (- |$cond-alpha-rename:81| |$cond-alpha-rename:80|) 2)) |$alpha-6:src|))) (not (< |$cond-alpha-rename:81| |$cond-alpha-rename:80|)) (|bs_aux$unknown:6| |$cond-alpha-rename:81| |$cond-alpha-rename:80| |$alpha-6:src| |$cond-alpha-rename:82|) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) )
    ( and (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) )
    )
  )
)
(check-sat)

(get-model)

