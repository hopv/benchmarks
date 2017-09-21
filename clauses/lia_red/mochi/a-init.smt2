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

(declare-fun |update$unknown:15|
  ( Int Int Int Int ) Bool
)

(declare-fun |init$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |init$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:6| Int) (|$V-reftype:7| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:121| Int) )
    (=>
      ( and (>= (+ |$cond-alpha-rename:121| 1) |$alpha-9:n|) (not (>= |$cond-alpha-rename:121| |$alpha-9:n|)) (|update$unknown:15| |$V-reftype:7| |$V-reftype:6| 1 |$cond-alpha-rename:121|) (|init$unknown:5| |$V-reftype:6| |$alpha-9:n| (+ |$cond-alpha-rename:121| 1)) (|init$unknown:3| |$V-reftype:6| |$alpha-9:n| (+ |$cond-alpha-rename:121| 1)) )
      (|init$unknown:6| |$V-reftype:7| |$V-reftype:6| |$alpha-9:n| (+ |$cond-alpha-rename:121| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:6| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:124| Int) )
    (=>
      ( and (>= |$alpha-8:i| |$alpha-9:n|) (>= |$alpha-8:i| 0) (<= |$alpha-8:i| 0) (<= 0 |$V-reftype:6|) (< |$V-reftype:6| |$alpha-9:n|) (>= |$cond-alpha-rename:124| 0) (<= |$cond-alpha-rename:124| 0) (|init$unknown:5| |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:3| |$V-reftype:6| |$alpha-9:n| |$cond-alpha-rename:124|) (|init$unknown:3| |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|) )
      (|init$unknown:6| 0 |$V-reftype:6| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|init$unknown:5| |$V-reftype:10| |$alpha-9:n| |$alpha-8:i|) (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-9:n| (+ |$alpha-8:i| 1)) (not (>= |$alpha-8:i| |$alpha-9:n|)) )
      (|init$unknown:6| |$V-reftype:11| |$V-reftype:10| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|) (>= |$alpha-8:i| |$alpha-9:n|) )
      (|init$unknown:3| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:9| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) )
    (=>
      ( and (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| |$alpha-8:i|) (not (>= |$alpha-8:i| |$alpha-9:n|)) )
      (|init$unknown:5| |$V-reftype:9| |$alpha-9:n| (+ |$alpha-8:i| 1))
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-8:i| Int) (|$alpha-9:n| Int) (|$cond-alpha-rename:85| Int) )
    (=>
      ( and (|init$unknown:3| |$V-reftype:26| |$cond-alpha-rename:85| (+ |$alpha-8:i| 1)) (not (>= |$alpha-8:i| |$cond-alpha-rename:85|)) (not (>= |$alpha-8:i| |$alpha-9:n|)) (not (and (<= |$V-reftype:26| |$alpha-8:i|) (> |$V-reftype:26| (- |$alpha-8:i| 1)))) )
      (|init$unknown:3| |$V-reftype:26| |$alpha-9:n| |$alpha-8:i|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-11:k| Int) (|$alpha-12:n| Int) (|$alpha-13:i| Int) (|$knormal:29| Int) )
    ( and (|init$unknown:6| |$knormal:29| |$alpha-13:i| |$alpha-12:n| |$alpha-11:k|) (<= |$alpha-11:k| 0) (>= |$alpha-11:k| 0) (< |$alpha-13:i| |$alpha-12:n|) (<= 0 |$alpha-13:i|) (not (>= |$knormal:29| 1)) )
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:n| Int) (|$alpha-2:i| Int) (|$cond-alpha-rename:5| Int) )
    ( and (|init$unknown:3| |$alpha-2:i| |$alpha-1:n| |$cond-alpha-rename:5|) (<= |$cond-alpha-rename:5| 0) (>= |$cond-alpha-rename:5| 0) (not (and (<= 0 |$alpha-2:i|) (< |$alpha-2:i| |$alpha-1:n|))) )
    )
  )
)
(assert
  (forall ( (|$alpha-7:j| Int) (|$cond-alpha-rename:134| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:91| Int) (|$knormal:8| Int) )
    (=>
      ( and (not (and (<= |$alpha-7:j| (+ |$cond-alpha-rename:134| 1)) (> |$alpha-7:j| (- (+ |$cond-alpha-rename:134| 1) 1)))) (not (>= (+ |$cond-alpha-rename:134| 1) |$cond-alpha-rename:91|)) (not (>= (+ |$cond-alpha-rename:134| 1) |$cond-alpha-rename:88|)) (not (>= (+ |$cond-alpha-rename:134| 1) |$cond-alpha-rename:65|)) (not (>= |$cond-alpha-rename:134| |$cond-alpha-rename:65|)) (|update$unknown:15| |$knormal:8| |$alpha-7:j| 1 |$cond-alpha-rename:134|) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:91| (+ (+ |$cond-alpha-rename:134| 1) 1)) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:88| (+ (+ |$cond-alpha-rename:134| 1) 1)) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:65| (+ |$cond-alpha-rename:134| 1)) )
      (|update$unknown:15| |$knormal:8| |$alpha-7:j| 1 (+ |$cond-alpha-rename:134| 1))
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:137| Int) (|$cond-alpha-rename:65| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:91| Int) )
    (=>
      ( and (not (and (<= |$alpha-7:j| |$alpha-4:i|) (> |$alpha-7:j| (- |$alpha-4:i| 1)))) (not (>= |$alpha-4:i| |$cond-alpha-rename:91|)) (not (>= |$alpha-4:i| |$cond-alpha-rename:88|)) (not (>= |$alpha-4:i| |$cond-alpha-rename:65|)) (>= |$alpha-4:i| 0) (<= |$alpha-4:i| 0) (<= 0 |$alpha-7:j|) (< |$alpha-7:j| |$cond-alpha-rename:65|) (>= |$cond-alpha-rename:137| 0) (<= |$cond-alpha-rename:137| 0) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:91| (+ |$alpha-4:i| 1)) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:88| (+ |$alpha-4:i| 1)) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:65| |$cond-alpha-rename:137|) (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:65| |$alpha-4:i|) )
      (|update$unknown:15| 0 |$alpha-7:j| 1 |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:i| Int) (|$alpha-7:j| Int) (|$cond-alpha-rename:94| Int) )
    (=>
      ( and (|init$unknown:3| |$alpha-7:j| |$cond-alpha-rename:94| (+ |$alpha-4:i| 1)) (not (>= |$alpha-4:i| |$cond-alpha-rename:94|)) (<= |$alpha-7:j| |$alpha-4:i|) (> |$alpha-7:j| (- |$alpha-4:i| 1)) )
      (|update$unknown:15| 1 |$alpha-7:j| 1 |$alpha-4:i|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:k| Int) (|$alpha-12:n| Int) (|$alpha-13:i| Int) )
    (=>
      ( and (<= |$alpha-11:k| 0) (>= |$alpha-11:k| 0) (< |$alpha-13:i| |$alpha-12:n|) (<= 0 |$alpha-13:i|) )
      (|init$unknown:5| |$alpha-13:i| |$alpha-12:n| |$alpha-11:k|)
    )
  )
)
(check-sat)

(get-model)

