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
  (forall ( (|$cond-alpha-rename:1| Int) (|$cond-alpha-rename:2| Int) )
    (=>
      ( and (= |$cond-alpha-rename:1| |$cond-alpha-rename:2|) (<= 0 |$cond-alpha-rename:1|) )
      (|bs_aux$unknown:6| (- |$cond-alpha-rename:2| 1) 0 |$cond-alpha-rename:2| |$cond-alpha-rename:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:29| Int) (|$cond-alpha-rename:30| Int) (|$cond-alpha-rename:31| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:30| |$cond-alpha-rename:29| |$alpha-10:vec| |$cond-alpha-rename:31|) (|bs_aux$unknown:7| |$knormal:17| (- (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (< (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2))) (> 0 |$alpha-9:key|) (not (< |$cond-alpha-rename:30| |$cond-alpha-rename:29|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:29| (/ (- |$cond-alpha-rename:30| |$cond-alpha-rename:29|) 2))) )
      (|bs_aux$unknown:7| |$knormal:17| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$knormal:25| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$alpha-10:vec| |$cond-alpha-rename:40|) (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| (+ (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-10:vec| |$alpha-9:key|) (< (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2))) (< 0 |$alpha-9:key|) (not (< |$cond-alpha-rename:39| |$cond-alpha-rename:38|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (= (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:38| (/ (- |$cond-alpha-rename:39| |$cond-alpha-rename:38|) 2))) )
      (|bs_aux$unknown:7| |$knormal:25| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:47| Int) (|$cond-alpha-rename:48| Int) (|$cond-alpha-rename:49| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:48| |$cond-alpha-rename:47| |$alpha-10:vec| |$cond-alpha-rename:49|) (< (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2))) (< 0 |$alpha-9:key|) (not (< |$cond-alpha-rename:48| |$cond-alpha-rename:47|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (= (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:47| (/ (- |$cond-alpha-rename:48| |$cond-alpha-rename:47|) 2))) )
      (|bs_aux$unknown:6| |$alpha-12:u| (+ (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:56| Int) (|$cond-alpha-rename:57| Int) (|$cond-alpha-rename:58| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:57| |$cond-alpha-rename:56| |$alpha-10:vec| |$cond-alpha-rename:58|) (< (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2))) (> 0 |$alpha-9:key|) (not (< |$cond-alpha-rename:57| |$cond-alpha-rename:56|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:56| (/ (- |$cond-alpha-rename:57| |$cond-alpha-rename:56|) 2))) )
      (|bs_aux$unknown:6| (- (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) 1) |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:66| Int) (|$cond-alpha-rename:67| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (|bs_aux$unknown:6| |$cond-alpha-rename:66| |$cond-alpha-rename:65| |$alpha-10:vec| |$cond-alpha-rename:67|) (< (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-10:vec|) (<= 0 (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2))) (not (< |$cond-alpha-rename:66| |$cond-alpha-rename:65|)) (not (< |$alpha-12:u| |$alpha-11:l|)) (not (< 0 |$alpha-9:key|)) (not (> 0 |$alpha-9:key|)) (= (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) (+ |$cond-alpha-rename:65| (/ (- |$cond-alpha-rename:66| |$cond-alpha-rename:65|) 2))) )
      (|bs_aux$unknown:7| (+ |$alpha-11:l| (/ (- |$alpha-12:u| |$alpha-11:l|) 2)) |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:vec| Int) (|$alpha-11:l| Int) (|$alpha-12:u| Int) (|$alpha-9:key| Int) )
    (=>
      ( and (|bs_aux$unknown:6| |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|) (< |$alpha-12:u| |$alpha-11:l|) )
      (|bs_aux$unknown:7| (- 1) |$alpha-12:u| |$alpha-11:l| |$alpha-10:vec| |$alpha-9:key|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$cond-alpha-rename:17| Int) (|$cond-alpha-rename:18| Int) (|$cond-alpha-rename:19| Int) )
    ( and (|bs_aux$unknown:6| |$cond-alpha-rename:18| |$cond-alpha-rename:17| |$alpha-6:src| |$cond-alpha-rename:19|) (not (< |$cond-alpha-rename:18| |$cond-alpha-rename:17|)) (not (and (<= 0 (+ |$cond-alpha-rename:17| (/ (- |$cond-alpha-rename:18| |$cond-alpha-rename:17|) 2))) (< (+ |$cond-alpha-rename:17| (/ (- |$cond-alpha-rename:18| |$cond-alpha-rename:17|) 2)) |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) )
    ( and (|update$unknown:18| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) )
    )
  )
)
(check-sat)

(get-model)

