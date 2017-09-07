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

(declare-fun |ack$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:19| Int) (|$knormal:1| Bool) (|$knormal:4| Int) (|$knormal:7| Int) (|$knormal:11| Int) (|$alpha-2:n| Int) (|$alpha-1:m| Int) (|$knormal:6| Int) (|$knormal:2| Bool) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-1:m| 1)) (= |$knormal:4| (- |$alpha-2:n| 1)) (= |$knormal:2| (= |$alpha-2:n| 0)) (= |$knormal:1| (= |$alpha-1:m| 0)) (= |$V-reftype:19| |$knormal:11|) (not |$knormal:2|) (not |$knormal:1|) (|ack$unknown:3| |$knormal:6| |$knormal:4| |$alpha-1:m|) (|ack$unknown:3| |$knormal:11| |$knormal:6| |$knormal:7|) (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:3| |$V-reftype:19| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Bool) (|$knormal:12| Int) (|$knormal:16| Int) (|$alpha-2:n| Int) (|$alpha-1:m| Int) (|$knormal:14| Int) (|$knormal:2| Bool) (|$V-reftype:16| Int) )
    (=>
      ( and (= |$knormal:2| (= |$alpha-2:n| 0)) (= |$knormal:14| 1) (= |$knormal:12| (- |$alpha-1:m| 1)) (= |$knormal:1| (= |$alpha-1:m| 0)) (= |$V-reftype:16| |$knormal:16|) (not |$knormal:1|) |$knormal:2| (|ack$unknown:3| |$knormal:16| |$knormal:14| |$knormal:12|) (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:3| |$V-reftype:16| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$knormal:6| Int) (|$alpha-2:n| Int) (|$alpha-1:m| Int) (|$knormal:4| Int) (|$knormal:1| Bool) (|$knormal:7| Int) )
    (=>
      ( and (= |$knormal:7| (- |$alpha-1:m| 1)) (= |$knormal:4| (- |$alpha-2:n| 1)) (= |$knormal:2| (= |$alpha-2:n| 0)) (= |$knormal:1| (= |$alpha-1:m| 0)) (not |$knormal:2|) (not |$knormal:1|) (|ack$unknown:3| |$knormal:6| |$knormal:4| |$alpha-1:m|) (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:2| |$knormal:6| |$knormal:7|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:12| Int) (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (= |$alpha-1:m| 0)) (= |$V-reftype:12| (+ |$alpha-2:n| 1)) |$knormal:1| (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:3| |$V-reftype:12| |$alpha-2:n| |$alpha-1:m|)
    )
  )
)
(assert
  (forall ( (|$knormal:14| Int) (|$knormal:12| Int) (|$knormal:2| Bool) (|$alpha-2:n| Int) (|$alpha-1:m| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:2| (= |$alpha-2:n| 0)) (= |$knormal:14| 1) (= |$knormal:12| (- |$alpha-1:m| 1)) (= |$knormal:1| (= |$alpha-1:m| 0)) (not |$knormal:1|) |$knormal:2| (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:2| |$knormal:14| |$knormal:12|)
    )
  )
)
(assert
  (forall ( (|$knormal:2| Bool) (|$alpha-1:m| Int) (|$alpha-2:n| Int) (|$knormal:1| Bool) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:n| 1)) (= |$knormal:2| (= |$alpha-2:n| 0)) (= |$knormal:1| (= |$alpha-1:m| 0)) (not |$knormal:2|) (not |$knormal:1|) (|ack$unknown:2| |$alpha-2:n| |$alpha-1:m|) true )
      (|ack$unknown:2| |$knormal:4| |$alpha-1:m|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:24| Bool) (|$alpha-3:m| Int) (|$knormal:22| Int) (|$alpha-4:n| Int) (|$knormal:19| Bool) (|$knormal:17| Bool) (|$knormal:18| Bool) )
    ( and (= |$knormal:24| (>= |$knormal:22| |$alpha-4:n|)) (= |$knormal:19| (and |$knormal:17| |$knormal:18|)) (= |$knormal:18| (>= |$alpha-4:n| 0)) (= |$knormal:17| (>= |$alpha-3:m| 0)) (not |$knormal:24|) |$knormal:19| (|ack$unknown:3| |$knormal:22| |$alpha-4:n| |$alpha-3:m|) )
    )
  )
)
(assert
  (forall ( (|$knormal:18| Bool) (|$knormal:17| Bool) (|$knormal:19| Bool) (|$alpha-3:m| Int) (|$alpha-4:n| Int) )
    (=>
      ( and (= |$knormal:19| (and |$knormal:17| |$knormal:18|)) (= |$knormal:18| (>= |$alpha-4:n| 0)) (= |$knormal:17| (>= |$alpha-3:m| 0)) |$knormal:19| )
      (|ack$unknown:2| |$alpha-4:n| |$alpha-3:m|)
    )
  )
)
(check-sat)

(get-model)

