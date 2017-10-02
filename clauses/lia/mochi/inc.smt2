(set-info :origin "Verification conditions for the caml program
  let rec ar i = 0
  let update a i x j = if j=i then x else a j
  let rec g e a j =
   if j<e then
     (assert(0<=j && j<e);
      g e (update a j (a(j)+1)) (j+1))
   else ()
  let main n =
   g n ar 0
")

(set-logic HORN)

(declare-fun |g$unknown:7|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:5|
  ( Int Int Int ) Bool
)

(declare-fun |g$unknown:6|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:n| Int) )
    (=>
      ( and true )
      (|g$unknown:6| 0 |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:n| Int) (|ar| Int) )
    (=>
      ( and true )
      (|g$unknown:5| 0 |ar| |$alpha-10:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$cond-alpha-rename:33| Int) (|$cond-alpha-rename:34| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:43| Int) (|$knormal:11| Int) (|$knormal:4| Int) )
    (=>
      ( and (< |$alpha-8:j| |$alpha-6:e|) (<= 0 |$alpha-8:j|) (not (= |$knormal:11| |$alpha-8:j|)) (< |$cond-alpha-rename:34| |$cond-alpha-rename:33|) (<= 0 |$cond-alpha-rename:34|) (< |$cond-alpha-rename:34| |$cond-alpha-rename:33|) (|g$unknown:6| |$cond-alpha-rename:34| |$cond-alpha-rename:33|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$cond-alpha-rename:43| |$knormal:11| |$cond-alpha-rename:33|) (|g$unknown:5| |$cond-alpha-rename:40| |$cond-alpha-rename:34| |$cond-alpha-rename:33|) )
      (|g$unknown:5| |$cond-alpha-rename:43| |$knormal:11| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (< |$alpha-8:j| |$alpha-6:e|) (<= 0 |$alpha-8:j|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) )
      (|g$unknown:5| (+ |$knormal:4| 1) |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:18| Int) (|$knormal:4| Int) )
    (=>
      ( and (< |$alpha-8:j| |$alpha-6:e|) (<= 0 |$alpha-8:j|) (< |$alpha-8:j| |$alpha-6:e|) (|g$unknown:7| |$knormal:18| (+ |$alpha-8:j| 1) |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) )
      (|g$unknown:7| |$knormal:18| |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) (|$knormal:4| Int) )
    (=>
      ( and (< |$alpha-8:j| |$alpha-6:e|) (<= 0 |$alpha-8:j|) (< |$alpha-8:j| |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) (|g$unknown:5| |$knormal:4| |$alpha-8:j| |$alpha-6:e|) )
      (|g$unknown:6| (+ |$alpha-8:j| 1) |$alpha-6:e|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) )
    ( and (not (and (<= 0 |$alpha-8:j|) (< |$alpha-8:j| |$alpha-6:e|))) (< |$alpha-8:j| |$alpha-6:e|) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) )
    )
  )
)
(assert
  (forall ( (|$alpha-6:e| Int) (|$alpha-8:j| Int) )
    (=>
      ( and (not (< |$alpha-8:j| |$alpha-6:e|)) (|g$unknown:6| |$alpha-8:j| |$alpha-6:e|) )
      (|g$unknown:7| 1 |$alpha-8:j| |$alpha-6:e|)
    )
  )
)
(check-sat)

(get-model)

(exit)

