(set-info :origin "Verification conditions for the caml program
  
  let make_array n = n
  let arraysize src = src
  let update des i x = assert (0 <= i && i < des)
  let sub src i = assert (0 <= i && i < src); 0
  
  let rec dotprod_aux n v1 v2 i sum =
    if i = n
    then sum
    else dotprod_aux n v1 v2 (i+1) (sum + (sub v1 i) * (sub v2 i))
  
  let dotprod v1 v2 = dotprod_aux (arraysize v1) v1 v2 0 0
  
  let main n m =
    let v1 = make_array n in
    let v2 = make_array m in
    if 0<=n && n=m then (dotprod v1 v2; ()) else ()
")

(set-logic HORN)

(declare-fun |update$unknown:19|
  ( Int Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:11|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |sub$unknown:15|
  ( Int Int ) Bool
)

(declare-fun |dotprod_aux$unknown:10|
  ( Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$cond-alpha-rename:6| Int) (|$cond-alpha-rename:7| Int) )
    (=>
      ( and (= |$cond-alpha-rename:6| |$cond-alpha-rename:7|) (<= 0 |$cond-alpha-rename:6|) )
      (|dotprod_aux$unknown:10| 0 0 |$cond-alpha-rename:7| |$cond-alpha-rename:6| |$cond-alpha-rename:6|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) (|$knormal:27| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|dotprod_aux$unknown:11| |$knormal:27| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:11| |$knormal:27| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (< |$alpha-12:i| |$alpha-11:v2|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|dotprod_aux$unknown:10| (+ |$alpha-13:sum| (* 0 0)) (+ |$alpha-12:i| 1) |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|) (< |$alpha-12:i| |$alpha-10:v1|) (<= 0 |$alpha-12:i|) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-11:v2|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (= |$alpha-12:i| |$alpha-9:n|) )
      (|dotprod_aux$unknown:11| |$alpha-13:sum| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:v1| Int) (|$alpha-11:v2| Int) (|$alpha-12:i| Int) (|$alpha-13:sum| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|dotprod_aux$unknown:10| |$alpha-13:sum| |$alpha-12:i| |$alpha-11:v2| |$alpha-10:v1| |$alpha-9:n|) (not (= |$alpha-12:i| |$alpha-9:n|)) )
      (|sub$unknown:15| |$alpha-12:i| |$alpha-10:v1|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:src| Int) (|$alpha-7:i| Int) )
    ( and (|sub$unknown:15| |$alpha-7:i| |$alpha-6:src|) (not (and (<= 0 |$alpha-7:i|) (< |$alpha-7:i| |$alpha-6:src|))) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:des| Int) (|$alpha-4:i| Int) (|$alpha-5:x| Int) )
    ( and (|update$unknown:19| |$alpha-5:x| |$alpha-4:i| |$alpha-3:des|) (not (and (<= 0 |$alpha-4:i|) (< |$alpha-4:i| |$alpha-3:des|))) )
    )
  )
)
(check-sat)

(get-model)

