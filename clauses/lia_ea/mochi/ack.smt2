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
  (forall ( (|$V-reftype:19| Int) (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:11| Int) (|$knormal:2| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-1:m| 1)) (= |$knormal:4| (- |$alpha-2:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (= |$V-reftype:19| |$knormal:11|) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|ack$unknown:3| |$knormal:6| |$knormal:4| |$alpha-1:m|) (|ack$unknown:3| |$knormal:11| |$knormal:6| |$knormal:7|) true true )
      (|ack$unknown:3| |$V-reftype:19| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:16| Int) (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:16| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= |$knormal:14| 1) (= |$knormal:12| (- |$alpha-1:m| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (= |$V-reftype:16| |$knormal:16|) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) (|ack$unknown:3| |$knormal:16| |$knormal:14| |$knormal:12|) true true )
      (|ack$unknown:3| |$V-reftype:16| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-1:m| 1)) (= |$knormal:4| (- |$alpha-2:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|ack$unknown:3| |$knormal:6| |$knormal:4| |$alpha-1:m|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) (|$knormal:6| Int) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-1:m| 1)) (= |$knormal:4| (- |$alpha-2:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) (|ack$unknown:3| |$knormal:6| |$knormal:4| |$alpha-1:m|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (= |$V-reftype:12| (+ |$alpha-2:n| 1)) (not (= 0 |$knormal:1|)) true true )
      (|ack$unknown:3| |$V-reftype:12| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= |$knormal:14| 1) (= |$knormal:12| (- |$alpha-1:m| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:12| Int) (|$knormal:14| Int) (|$knormal:2| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= |$knormal:14| 1) (= |$knormal:12| (- |$alpha-1:m| 1)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:1|))) (not (= 0 |$knormal:2|)) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Int) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:n| 1)) (= (not (= 0 |$knormal:2|)) (= |$alpha-2:n| 0)) (= (not (= 0 |$knormal:1|)) (= |$alpha-1:m| 0)) (not (not (= 0 |$knormal:2|))) (not (not (= 0 |$knormal:1|))) true true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:m| Int) (|$alpha-4:n| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:22| Int) (|$knormal:24| Int) )
    ( and (= (not (= 0 |$knormal:24|)) (>= |$knormal:22| |$alpha-4:n|)) (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-4:n| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-3:m| 0)) (not (not (= 0 |$knormal:24|))) (not (= 0 |$knormal:19|)) (|ack$unknown:3| |$knormal:22| |$alpha-4:n| |$alpha-3:m|) )
    )
  )
)
(assert
  (forall ( (|$alpha-3:m| Int) (|$alpha-4:n| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-4:n| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-3:m| 0)) (not (= 0 |$knormal:19|)) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:m| Int) (|$alpha-4:n| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:19|)) (and (not (= 0 |$knormal:17|)) (not (= 0 |$knormal:18|)))) (= (not (= 0 |$knormal:18|)) (>= |$alpha-4:n| 0)) (= (not (= 0 |$knormal:17|)) (>= |$alpha-3:m| 0)) (not (= 0 |$knormal:19|)) )
      true
    )
  )
)
(check-sat)

(get-model)

(exit)

