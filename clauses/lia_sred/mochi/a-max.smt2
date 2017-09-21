(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as a-max
  *)
  
  let make_array n i = n - i
  let rec array_max (n:int) i (a:int->int) m =
    if i >= n then
      m
    else
      let x = a i in
      let z = if x>m then x else m in
      array_max n (i+1) a z
  let main n i =
    if n>0 && i>=0 && i<=0 then
      let m = array_max n i (make_array n) (-1) in
      assert (m >= n)
")

(set-logic HORN)

(declare-fun |array_max$unknown:6|
  ( Int Int Int Int ) Bool
)

(declare-fun |array_max$unknown:4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-5:a| Int) (|$alpha-6:m| Int) (|$knormal:11| Int) )
    (=>
      ( and (not (>= |$alpha-4:i| |$alpha-3:n|)) (> |$knormal:11| |$alpha-6:m|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| (+ |$alpha-4:i| 1) |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:7| Int) (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-5:a| Int) (|$alpha-6:m| Int) (|$knormal:11| Int) )
    (=>
      ( and (not (> |$knormal:11| |$alpha-6:m|)) (not (>= |$alpha-4:i| |$alpha-3:n|)) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| |$alpha-4:i| |$alpha-3:n|) )
      (|array_max$unknown:4| |$V-reftype:7| |$alpha-5:a| (+ |$alpha-4:i| 1) |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (> |$knormal:11| |$alpha-6:m|)) (not (>= |$alpha-4:i| |$alpha-3:n|)) (|array_max$unknown:6| |$knormal:9| |$alpha-6:m| (+ |$alpha-4:i| 1) |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) )
      (|array_max$unknown:6| |$knormal:9| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) (|$knormal:11| Int) (|$knormal:9| Int) )
    (=>
      ( and (not (>= |$alpha-4:i| |$alpha-3:n|)) (> |$knormal:11| |$alpha-6:m|) (|array_max$unknown:6| |$knormal:9| |$knormal:11| (+ |$alpha-4:i| 1) |$alpha-3:n|) (|array_max$unknown:4| |$knormal:11| |$alpha-4:i| |$alpha-4:i| |$alpha-3:n|) )
      (|array_max$unknown:6| |$knormal:9| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:n| Int) (|$alpha-4:i| Int) (|$alpha-6:m| Int) )
    (=>
      ( and (>= |$alpha-4:i| |$alpha-3:n|) )
      (|array_max$unknown:6| |$alpha-6:m| |$alpha-6:m| |$alpha-4:i| |$alpha-3:n|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:18| Int) )
    (=>
      ( and (> |$alpha-9:n| 0) (>= |$alpha-10:i| 0) (<= |$alpha-10:i| 0) )
      (|array_max$unknown:4| (- |$alpha-9:n| |$knormal:18|) |$knormal:18| |$alpha-10:i| |$alpha-9:n|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:i| Int) (|$alpha-9:n| Int) (|$knormal:27| Int) )
    ( and (not (>= |$knormal:27| |$alpha-9:n|)) (> |$alpha-9:n| 0) (>= |$alpha-10:i| 0) (<= |$alpha-10:i| 0) (|array_max$unknown:6| |$knormal:27| (- 1) |$alpha-10:i| |$alpha-9:n|) )
    )
  )
)
(check-sat)

(get-model)

