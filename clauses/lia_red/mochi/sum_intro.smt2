(set-info :origin "Verification conditions for the caml program
  (*
  USED: PEPM2013 as sum_intro
  *)
  
  let add x y = x + y
  let rec sum n =
    if n <= 0 then
      0
    else
      add n (sum (n-1))
  let main n = assert (n <= sum n)
")

(set-logic HORN)

(declare-fun |sum$unknown:5|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:16| Int) (|$cond-alpha-rename:5| Bool) (|$knormal:3| Int) (|$cond-alpha-rename:6| Int) (|$knormal:2| Int) (|$knormal:1| Bool) (|$knormal:7| Int) (|$alpha-3:n| Int) )
    (=>
      ( and (= |$knormal:7| (+ |$alpha-3:n| |$knormal:3|)) (= |$knormal:2| (- |$alpha-3:n| 1)) (= |$knormal:1| (<= |$alpha-3:n| 0)) (= |$cond-alpha-rename:6| (- |$alpha-3:n| 1)) (= |$cond-alpha-rename:5| (<= |$alpha-3:n| 0)) (= |$V-reftype:16| |$knormal:7|) (not |$knormal:1|) (not |$cond-alpha-rename:5|) (|sum$unknown:5| |$knormal:3| |$knormal:2|) (|sum$unknown:5| |$knormal:3| |$cond-alpha-rename:6|) )
      (|sum$unknown:5| |$V-reftype:16| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$V-reftype:14| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (<= |$alpha-3:n| 0)) (= |$V-reftype:14| 0) |$knormal:1| true )
      (|sum$unknown:5| |$V-reftype:14| |$alpha-3:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-4:n| Int) (|$knormal:8| Int) (|$knormal:10| Bool) )
    ( and (= |$knormal:10| (<= |$alpha-4:n| |$knormal:8|)) (not |$knormal:10|) (|sum$unknown:5| |$knormal:8| |$alpha-4:n|) )
    )
  )
)
(check-sat)

(get-model)

