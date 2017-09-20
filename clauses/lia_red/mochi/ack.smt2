(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as ack
  USED: PEPM2013 as ack
  *)
  
  let rec ack m n =
    if m=0 then n+1
    else if n=0 then ack (m-1) 1
    else ack (m-1) (ack m (n-1))
  
  let main m n =
    if (m>=0 && n>=0)
    then assert (ack m n >= n)
")

(set-logic HORN)

(declare-fun |ack$unknown:3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:11| Int) (|$knormal:6| Int) )
    (=>
      ( and (|ack$unknown:3| |$knormal:11| |$knormal:6| (- |$alpha-1:m| 1)) (|ack$unknown:3| |$knormal:6| (- |$alpha-2:n| 1) |$alpha-1:m|) (not (= |$alpha-1:m| 0)) (not (= |$alpha-2:n| 0)) )
      (|ack$unknown:3| |$knormal:11| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:16| Int) )
    (=>
      ( and (|ack$unknown:3| |$knormal:16| 1 (- |$alpha-1:m| 1)) (= |$alpha-2:n| 0) (not (= |$alpha-1:m| 0)) )
      (|ack$unknown:3| |$knormal:16| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) )
    (=>
      ( and (= |$alpha-1:m| 0) )
      (|ack$unknown:3| (+ |$alpha-2:n| 1) |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:m| Int) (|$alpha-4:n| Int) (|$knormal:22| Int) )
    ( and (|ack$unknown:3| |$knormal:22| |$alpha-4:n| |$alpha-3:m|) (>= |$alpha-4:n| 0) (>= |$alpha-3:m| 0) (not (>= |$knormal:22| |$alpha-4:n|)) )
    )
  )
)
(check-sat)

(get-model)

